# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains details of a table archival operation.</p>
    # @!attribute archival_date_time
    #   <p>The date and time when table archival was initiated by DynamoDB, in UNIX epoch time
    #               format.</p>
    #   @return [Time]
    # @!attribute archival_reason
    #   <p>The reason DynamoDB archived the table. Currently, the only possible value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The table was archived due
    #                       to the table's KMS key being inaccessible for more than seven
    #                       days. An On-Demand backup was created at the archival time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute archival_backup_arn
    #   <p>The Amazon Resource Name (ARN) of the backup the table was archived to, when
    #               applicable in the archival reason. If you wish to restore this backup to the same table
    #               name, you will need to delete the original table.</p>
    #   @return [String]
    class ArchivalSummary < Struct.new(
      nil,
      :archival_date_time,
      :archival_reason,
      :archival_backup_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an attribute for describing the schema for the table and indexes.</p>
    # @!attribute attribute_name
    #   <p>A name for the attribute.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The data type for the attribute, where:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S</code> - the attribute is of type String</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>N</code> - the attribute is of type Number</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>B</code> - the attribute is of type Binary</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AttributeDefinition < Struct.new(
      nil,
      :attribute_name,
      :attribute_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the data for an attribute.</p>
    #          <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #             the value is the data itself.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer
    #             Guide</i>.</p>
    # @!attribute s
    #   <p>An attribute of type String. For example:</p>
    #            <p>
    #               <code>"S": "Hello"</code>
    #            </p>
    #   @return [String]
    # @!attribute n
    #   <p>An attribute of type Number. For example:</p>
    #            <p>
    #               <code>"N": "123.45"</code>
    #            </p>
    #            <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
    #               across languages and libraries. However, DynamoDB treats them as number type attributes
    #               for mathematical operations.</p>
    #   @return [String]
    # @!attribute b
    #   <p>An attribute of type Binary. For example:</p>
    #            <p>
    #               <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code>
    #            </p>
    #   @return [String]
    # @!attribute ss
    #   <p>An attribute of type String Set. For example:</p>
    #            <p>
    #               <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute ns
    #   <p>An attribute of type Number Set. For example:</p>
    #            <p>
    #               <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code>
    #            </p>
    #            <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
    #               across languages and libraries. However, DynamoDB treats them as number type attributes
    #               for mathematical operations.</p>
    #   @return [Array<String>]
    # @!attribute bs
    #   <p>An attribute of type Binary Set. For example:</p>
    #            <p>
    #               <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute m
    #   <p>An attribute of type Map. For example:</p>
    #            <p>
    #               <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code>
    #            </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute l
    #   <p>An attribute of type List. For example:</p>
    #            <p>
    #               <code>"L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}]</code>
    #            </p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute null
    #   <p>An attribute of type Null. For example:</p>
    #            <p>
    #               <code>"NULL": true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute bool
    #   <p>An attribute of type Boolean. For example:</p>
    #            <p>
    #               <code>"BOOL": true</code>
    #            </p>
    #   @return [Boolean]
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
      :bool,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S < AttributeValue; end
      class N < AttributeValue; end
      class B < AttributeValue; end
      class SS < AttributeValue; end
      class NS < AttributeValue; end
      class BS < AttributeValue; end
      class M < AttributeValue; end
      class L < AttributeValue; end
      class NULL < AttributeValue; end
      class BOOL < AttributeValue; end
      class Unknown < AttributeValue; end
    end

    # <p>For the <code>UpdateItem</code> operation, represents the attributes to be modified,
    #             the action to perform on each, and the new value for each.</p>
    #          <note>
    #             <p>You cannot use <code>UpdateItem</code> to update any primary key attributes.
    #                 Instead, you will need to delete the item, and then use <code>PutItem</code> to
    #                 create a new item with new attributes.</p>
    #          </note>
    #          <p>Attribute values cannot be null; string and binary type attributes must have lengths
    #             greater than zero; and set type attributes must not be empty. Requests with empty values
    #             will be rejected with a <code>ValidationException</code> exception.</p>
    # @!attribute value
    #   <p>Represents the data for an attribute.</p>
    #            <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #               the value is the data itself.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.
    #           </p>
    #   @return [Types::AttributeValue]
    # @!attribute action
    #   <p>Specifies how to perform the update. Valid values are <code>PUT</code> (default),
    #                   <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the
    #               specified primary key already exists in the table.</p>
    #            <p>
    #               <b>If an item with the specified <i>Key</i> is found in
    #                   the table:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUT</code> - Adds the specified attribute to the item. If the attribute
    #                       already exists, it is replaced by the new value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - If no value is specified, the attribute and its value are
    #                       removed from the item. The data type of the specified value must match the
    #                       existing value's data type.</p>
    #                  <p>If a <i>set</i> of values is specified, then those values are
    #                       subtracted from the old set. For example, if the attribute value was the set
    #                           <code>[a,b,c]</code> and the <code>DELETE</code> action specified
    #                           <code>[a,c]</code>, then the final attribute value would be
    #                       <code>[b]</code>. Specifying an empty set is an error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - If the attribute does not already exist, then the attribute
    #                       and its values are added to the item. If the attribute does exist, then the
    #                       behavior of <code>ADD</code> depends on the data type of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then the <code>Value</code> is mathematically added to
    #                               the existing attribute. If <code>Value</code> is a negative number, then
    #                               it is subtracted from the existing attribute.</p>
    #                        <note>
    #                           <p> If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses 0 as the initial value.</p>
    #                           <p>In addition, if you use <code>ADD</code> to update an existing
    #                                   item, and intend to increment or decrement an attribute value which
    #                                   does not yet exist, DynamoDB uses <code>0</code> as the initial
    #                                   value. For example, suppose that the item you want to update does
    #                                   not yet have an attribute named <i>itemcount</i>, but
    #                                   you decide to <code>ADD</code> the number <code>3</code> to this
    #                                   attribute anyway, even though it currently does not exist. DynamoDB
    #                                   will create the <i>itemcount</i> attribute, set its
    #                                   initial value to <code>0</code>, and finally add <code>3</code> to
    #                                   it. The result will be a new <i>itemcount</i>
    #                                   attribute in the item, with a value of <code>3</code>.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>If the existing data type is a set, and if the <code>Value</code> is
    #                               also a set, then the <code>Value</code> is added to the existing set.
    #                               (This is a <i>set</i> operation, not mathematical
    #                               addition.) For example, if the attribute value was the set
    #                                   <code>[1,2]</code>, and the <code>ADD</code> action specified
    #                                   <code>[3]</code>, then the final attribute value would be
    #                                   <code>[1,2,3]</code>. An error occurs if an Add action is specified
    #                               for a set attribute and the attribute type specified does not match the
    #                               existing set type. </p>
    #                        <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings. The same holds true for number sets and binary
    #                               sets.</p>
    #                     </li>
    #                  </ul>
    #                  <p>This action is only valid for an existing attribute whose data type is number
    #                       or is a set. Do not use <code>ADD</code> for any other data types.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>If no item with the specified <i>Key</i> is
    #                   found:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUT</code> - DynamoDB creates a new item with the specified primary key,
    #                       and then adds the attribute. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - DynamoDB creates a new item with the supplied primary key and
    #                       number (or set) for the attribute value. The only data types allowed are number,
    #                       number set, string set or binary set.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AttributeValueUpdate < Struct.new(
      nil,
      :value,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of the scaling policy.</p>
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>Represents a target tracking scaling policy configuration.</p>
    #   @return [Types::AutoScalingTargetTrackingScalingPolicyConfigurationDescription]
    class AutoScalingPolicyDescription < Struct.new(
      nil,
      :policy_name,
      :target_tracking_scaling_policy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling policy to be modified.</p>
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>Represents a target tracking scaling policy configuration.</p>
    #   @return [Types::AutoScalingTargetTrackingScalingPolicyConfigurationUpdate]
    class AutoScalingPolicyUpdate < Struct.new(
      nil,
      :policy_name,
      :target_tracking_scaling_policy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings for a global table or global secondary
    #             index.</p>
    # @!attribute minimum_units
    #   <p>The minimum capacity units that a global table or global secondary index should be
    #               scaled down to.</p>
    #   @return [Integer]
    # @!attribute maximum_units
    #   <p>The maximum capacity units that a global table or global secondary index should be
    #               scaled up to.</p>
    #   @return [Integer]
    # @!attribute auto_scaling_disabled
    #   <p>Disabled auto scaling for this global table or global secondary index.</p>
    #   @return [Boolean]
    # @!attribute auto_scaling_role_arn
    #   <p>Role ARN used for configuring the auto scaling policy.</p>
    #   @return [String]
    # @!attribute scaling_policies
    #   <p>Information about the scaling policies.</p>
    #   @return [Array<Types::AutoScalingPolicyDescription>]
    class AutoScalingSettingsDescription < Struct.new(
      nil,
      :minimum_units,
      :maximum_units,
      :auto_scaling_disabled,
      :auto_scaling_role_arn,
      :scaling_policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings to be modified for a global table or global
    #             secondary index.</p>
    # @!attribute minimum_units
    #   <p>The minimum capacity units that a global table or global secondary index should be
    #               scaled down to.</p>
    #   @return [Integer]
    # @!attribute maximum_units
    #   <p>The maximum capacity units that a global table or global secondary index should be
    #               scaled up to.</p>
    #   @return [Integer]
    # @!attribute auto_scaling_disabled
    #   <p>Disabled auto scaling for this global table or global secondary index.</p>
    #   @return [Boolean]
    # @!attribute auto_scaling_role_arn
    #   <p>Role ARN used for configuring auto scaling policy.</p>
    #   @return [String]
    # @!attribute scaling_policy_update
    #   <p>The scaling policy to apply for scaling target global table or global secondary index
    #               capacity units.</p>
    #   @return [Types::AutoScalingPolicyUpdate]
    class AutoScalingSettingsUpdate < Struct.new(
      nil,
      :minimum_units,
      :maximum_units,
      :auto_scaling_disabled,
      :auto_scaling_role_arn,
      :scaling_policy_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a target tracking scaling policy.</p>
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking policy is disabled. If the value is
    #               true, scale in is disabled and the target tracking policy won't remove capacity from the
    #               scalable resource. Otherwise, scale in is enabled and the target tracking policy can
    #               remove capacity from the scalable resource. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale in activity completes before another
    #               scale in activity can start. The cooldown period is used to block subsequent scale in
    #               requests until it has expired. You should scale in conservatively to protect your
    #               application's availability. However, if another alarm triggers a scale out policy during
    #               the cooldown period after a scale-in, application auto scaling scales out your scalable
    #               target immediately. </p>
    #   @return [Integer]
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, after a scale out activity completes before another
    #               scale out activity can start. While the cooldown period is in effect, the capacity that
    #               has been added by the previous scale out event that initiated the cooldown is calculated
    #               as part of the desired capacity for the next scale out. You should continuously (but not
    #               excessively) scale out.</p>
    #   @return [Integer]
    # @!attribute target_value
    #   <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
    #               or 2e-360 to 2e360 (Base 2).</p>
    #   @return [Float]
    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription < Struct.new(
      nil,
      :disable_scale_in,
      :scale_in_cooldown,
      :scale_out_cooldown,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings of a target tracking scaling policy that will be
    #             modified.</p>
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking policy is disabled. If the value is
    #               true, scale in is disabled and the target tracking policy won't remove capacity from the
    #               scalable resource. Otherwise, scale in is enabled and the target tracking policy can
    #               remove capacity from the scalable resource. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale in activity completes before another
    #               scale in activity can start. The cooldown period is used to block subsequent scale in
    #               requests until it has expired. You should scale in conservatively to protect your
    #               application's availability. However, if another alarm triggers a scale out policy during
    #               the cooldown period after a scale-in, application auto scaling scales out your scalable
    #               target immediately. </p>
    #   @return [Integer]
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, after a scale out activity completes before another
    #               scale out activity can start. While the cooldown period is in effect, the capacity that
    #               has been added by the previous scale out event that initiated the cooldown is calculated
    #               as part of the desired capacity for the next scale out. You should continuously (but not
    #               excessively) scale out.</p>
    #   @return [Integer]
    # @!attribute target_value
    #   <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
    #               or 2e-360 to 2e360 (Base 2).</p>
    #   @return [Float]
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate < Struct.new(
      nil,
      :disable_scale_in,
      :scale_in_cooldown,
      :scale_out_cooldown,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the description of the backup created for the table.</p>
    # @!attribute backup_details
    #   <p>Contains the details of the backup created for the table. </p>
    #   @return [Types::BackupDetails]
    # @!attribute source_table_details
    #   <p>Contains the details of the table when the backup was created. </p>
    #   @return [Types::SourceTableDetails]
    # @!attribute source_table_feature_details
    #   <p>Contains the details of the features enabled on the table when the backup was created.
    #               For example, LSIs, GSIs, streams, TTL.</p>
    #   @return [Types::SourceTableFeatureDetails]
    class BackupDescription < Struct.new(
      nil,
      :backup_details,
      :source_table_details,
      :source_table_feature_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the backup created for the table.</p>
    # @!attribute backup_arn
    #   <p>ARN associated with the backup.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Name of the requested backup.</p>
    #   @return [String]
    # @!attribute backup_size_bytes
    #   <p>Size of the backup in bytes. DynamoDB updates this value approximately every six
    #               hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute backup_status
    #   <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED. </p>
    #   @return [String]
    # @!attribute backup_type
    #   <p>BackupType:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - You create and manage these using the on-demand backup
    #                       feature.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
    #                       a <code>SYSTEM</code> backup is automatically created and is retained for 35
    #                       days (at no additional cost). System backups allow you to restore the deleted
    #                       table to the state it was in just before the point of deletion. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backup_creation_date_time
    #   <p>Time at which the backup was created. This is the request time of the backup. </p>
    #   @return [Time]
    # @!attribute backup_expiry_date_time
    #   <p>Time at which the automatic on-demand backup created by DynamoDB will
    #               expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
    #               its creation.</p>
    #   @return [Time]
    class BackupDetails < Struct.new(
      nil,
      :backup_arn,
      :backup_name,
      :backup_size_bytes,
      :backup_status,
      :backup_type,
      :backup_creation_date_time,
      :backup_expiry_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is another ongoing conflicting backup control plane operation on the table.
    #             The backup is either being created, deleted or restored to a table.</p>
    # @!attribute message
    #   @return [String]
    class BackupInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Backup not found for the given BackupARN. </p>
    # @!attribute message
    #   @return [String]
    class BackupNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the backup.</p>
    # @!attribute table_name
    #   <p>Name of the table.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique identifier for the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>ARN associated with the table.</p>
    #   @return [String]
    # @!attribute backup_arn
    #   <p>ARN associated with the backup.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Name of the specified backup.</p>
    #   @return [String]
    # @!attribute backup_creation_date_time
    #   <p>Time at which the backup was created.</p>
    #   @return [Time]
    # @!attribute backup_expiry_date_time
    #   <p>Time at which the automatic on-demand backup created by DynamoDB will
    #               expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
    #               its creation.</p>
    #   @return [Time]
    # @!attribute backup_status
    #   <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED.</p>
    #   @return [String]
    # @!attribute backup_type
    #   <p>BackupType:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - You create and manage these using the on-demand backup
    #                       feature.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
    #                       a <code>SYSTEM</code> backup is automatically created and is retained for 35
    #                       days (at no additional cost). System backups allow you to restore the deleted
    #                       table to the state it was in just before the point of deletion. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backup_size_bytes
    #   <p>Size of the backup in bytes.</p>
    #   @return [Integer]
    class BackupSummary < Struct.new(
      nil,
      :table_name,
      :table_id,
      :table_arn,
      :backup_arn,
      :backup_name,
      :backup_creation_date_time,
      :backup_expiry_date_time,
      :backup_status,
      :backup_type,
      :backup_size_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statements
    #   <p>The list of PartiQL statements representing the batch to run.</p>
    #   @return [Array<Types::BatchStatementRequest>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BatchExecuteStatementInput < Struct.new(
      nil,
      :statements,
      :return_consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responses
    #   <p>The response to each PartiQL statement in the batch. The values of the list are
    #               ordered according to the ordering of the request statements.</p>
    #   @return [Array<Types::BatchStatementResponse>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire operation. The values of the list are
    #               ordered according to the ordering of the statements.</p>
    #   @return [Array<Types::ConsumedCapacity>]
    class BatchExecuteStatementOutput < Struct.new(
      nil,
      :responses,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchGetItem</code> operation.</p>
    # @!attribute request_items
    #   <p>A map of one or more table names or table ARNs and, for each table, a map that
    #               describes one or more items to retrieve from that table. Each table name or ARN can be
    #               used only once per <code>BatchGetItem</code> request.</p>
    #            <p>Each element in the map of items to retrieve consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read
    #                       is used; if <code>false</code> (the default), an eventually consistent read is
    #                       used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExpressionAttributeNames</code> - One or more substitution tokens for
    #                       attribute names in the <code>ProjectionExpression</code> parameter. The
    #                       following are some use cases for using
    #                       <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                               word.</p>
    #                     </li>
    #                     <li>
    #                        <p>To create a placeholder for repeating occurrences of an attribute name
    #                               in an expression.</p>
    #                     </li>
    #                     <li>
    #                        <p>To prevent special characters in an attribute name from being
    #                               misinterpreted in an expression.</p>
    #                     </li>
    #                  </ul>
    #                  <p>Use the <b>#</b> character in an expression to
    #                       dereference an attribute name. For example, consider the following attribute
    #                       name:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Percentile</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>The name of this attribute conflicts with a reserved word, so it cannot be
    #                       used directly in an expression. (For the complete list of reserved words, see
    #                           <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
    #                           Words</a> in the <i>Amazon DynamoDB Developer Guide</i>).
    #                       To work around this, you could specify the following for
    #                           <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>{"#P":"Percentile"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>You could then use this substitution in an expression, as in this
    #                       example:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>#P = :val</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Tokens that begin with the <b>:</b> character
    #                           are <i>expression attribute values</i>, which are placeholders
    #                           for the actual value at runtime.</p>
    #                  </note>
    #                  <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table. For each primary key, you must provide
    #                           <i>all</i> of the key attributes. For example, with a simple
    #                       primary key, you only need to provide the partition key value. For a composite
    #                       key, you must provide <i>both</i> the partition key value and the
    #                       sort key value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProjectionExpression</code> - A string that identifies one or more
    #                       attributes to retrieve from the table. These attributes can include scalars,
    #                       sets, or elements of a JSON document. The attributes in the expression must be
    #                       separated by commas.</p>
    #                  <p>If no attribute names are specified, then all attributes are returned. If any
    #                       of the requested attributes are not found, they do not appear in the
    #                       result.</p>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributesToGet</code> - This is a legacy parameter. Use
    #                           <code>ProjectionExpression</code> instead. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #                           Guide</i>. </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Types::KeysAndAttributes>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BatchGetItemInput < Struct.new(
      nil,
      :request_items,
      :return_consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchGetItem</code> operation.</p>
    # @!attribute responses
    #   <p>A map of table name or table ARN to a list of items. Each object in
    #                   <code>Responses</code> consists of a table name or ARN, along with a map of
    #               attribute data consisting of the data type and attribute value.</p>
    #   @return [Hash<String, Array<Hash<String, Types::AttributeValue>>>]
    # @!attribute unprocessed_keys
    #   <p>A map of tables and their respective keys that were not processed with the current
    #               response. The <code>UnprocessedKeys</code> value is in the same form as
    #                   <code>RequestItems</code>, so the value can be provided directly to a subsequent
    #                   <code>BatchGetItem</code> operation. For more information, see
    #                   <code>RequestItems</code> in the Request Parameters section.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProjectionExpression</code> - One or more attributes to be retrieved from
    #                       the table or index. By default, all attributes are returned. If a requested
    #                       attribute is not found, it does not appear in the result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConsistentRead</code> - The consistency of a read operation. If set to
    #                           <code>true</code>, then a strongly consistent read is used; otherwise, an
    #                       eventually consistent read is used.</p>
    #               </li>
    #            </ul>
    #            <p>If there are no unprocessed keys remaining, the response contains an empty
    #                   <code>UnprocessedKeys</code> map.</p>
    #   @return [Hash<String, Types::KeysAndAttributes>]
    # @!attribute consumed_capacity
    #   <p>The read capacity units consumed by the entire <code>BatchGetItem</code>
    #               operation.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TableName</code> - The table that consumed the provisioned
    #                       throughput.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ConsumedCapacity>]
    class BatchGetItemOutput < Struct.new(
      nil,
      :responses,
      :unprocessed_keys,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An error associated with a statement in a PartiQL batch that was run. </p>
    # @!attribute code
    #   <p> The error code associated with the failed PartiQL batch statement. </p>
    #   @return [String]
    # @!attribute message
    #   <p> The error message associated with the PartiQL batch response. </p>
    #   @return [String]
    # @!attribute item
    #   <p>The item which caused the condition check to fail. This will be set if
    #               ReturnValuesOnConditionCheckFailure is specified as <code>ALL_OLD</code>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class BatchStatementError < Struct.new(
      nil,
      :code,
      :message,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A PartiQL batch statement request. </p>
    # @!attribute statement
    #   <p> A valid PartiQL statement. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p> The parameters associated with a PartiQL statement in the batch request. </p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute consistent_read
    #   <p> The read consistency of the PartiQL batch request. </p>
    #   @return [Boolean]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a PartiQL batch request
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class BatchStatementRequest < Struct.new(
      nil,
      :statement,
      :parameters,
      :consistent_read,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A PartiQL batch statement response.. </p>
    # @!attribute error
    #   <p> The error associated with a failed PartiQL batch statement. </p>
    #   @return [Types::BatchStatementError]
    # @!attribute table_name
    #   <p> The table name associated with a failed PartiQL batch statement. </p>
    #   @return [String]
    # @!attribute item
    #   <p> A DynamoDB item associated with a BatchStatementResponse </p>
    #   @return [Hash<String, Types::AttributeValue>]
    class BatchStatementResponse < Struct.new(
      nil,
      :error,
      :table_name,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>BatchWriteItem</code> operation.</p>
    # @!attribute request_items
    #   <p>A map of one or more table names or table ARNs and, for each table, a list of
    #               operations to be performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each
    #               element in the map consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value. For each primary key, you must provide
    #                                   <i>all</i> of the key attributes. For example, with a
    #                               simple primary key, you only need to provide a value for the partition
    #                               key. For a composite primary key, you must provide values for
    #                                   <i>both</i> the partition key and the sort key.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values are rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                        <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<Types::WriteRequest>>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   @return [String]
    class BatchWriteItemInput < Struct.new(
      nil,
      :request_items,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>BatchWriteItem</code> operation.</p>
    # @!attribute unprocessed_items
    #   <p>A map of tables and requests against those tables that were not processed. The
    #                   <code>UnprocessedItems</code> value is in the same form as
    #               <code>RequestItems</code>, so you can provide this value directly to a subsequent
    #                   <code>BatchWriteItem</code> operation. For more information, see
    #                   <code>RequestItems</code> in the Request Parameters section.</p>
    #            <p>Each <code>UnprocessedItems</code> entry consists of a table name or table ARN
    #               and, for that table, a list of operations to perform (<code>DeleteRequest</code> or
    #                   <code>PutRequest</code>).</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values will be rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                        <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>If there are no unprocessed items remaining, the response contains an empty
    #                   <code>UnprocessedItems</code> map.</p>
    #   @return [Hash<String, Array<Types::WriteRequest>>]
    # @!attribute item_collection_metrics
    #   <p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each
    #               table, information about any item collections that were affected by individual
    #                   <code>DeleteItem</code> or <code>PutItem</code> operations.</p>
    #            <p>Each entry consists of the following subelements:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size,
    #                       expressed in GB. This is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on the table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<Types::ItemCollectionMetrics>>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire <code>BatchWriteItem</code>
    #               operation.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TableName</code> - The table that consumed the provisioned
    #                       throughput.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
    #               </li>
    #            </ul>
    #            <p>If the table has vector indexes, each element also includes a
    #               <code>VectorIndexes</code> field with <code>VectorWriteRequestBytes</code> consumed
    #               for each affected vector index.</p>
    #   @return [Array<Types::ConsumedCapacity>]
    class BatchWriteItemOutput < Struct.new(
      nil,
      :unprocessed_items,
      :item_collection_metrics,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for the read/write capacity mode. This page talks about
    #                 <code>PROVISIONED</code> and <code>PAY_PER_REQUEST</code> billing modes. For more
    #             information about these modes, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html">Read/write capacity mode</a>.</p>
    #          <note>
    #             <p>You may need to switch to on-demand mode at least once in order to return a
    #                     <code>BillingModeSummary</code> response.</p>
    #          </note>
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - Sets the read/write capacity mode to
    #                           <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
    #                           <code>PAY_PER_REQUEST</code>. We recommend using
    #                           <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_update_to_pay_per_request_date_time
    #   <p>Represents the time when <code>PAY_PER_REQUEST</code> was last set as the read/write
    #               capacity mode.</p>
    #   @return [Time]
    class BillingModeSummary < Struct.new(
      nil,
      :billing_mode,
      :last_update_to_pay_per_request_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An ordered list of errors for each item in the request which caused the transaction to
    #             get cancelled. The values of the list are ordered according to the ordering of the
    #                 <code>TransactWriteItems</code> request parameter. If no error occurred for the
    #             associated item an error with a Null code and Null message will be present. </p>
    # @!attribute item
    #   <p>Item in the request which caused the transaction to get cancelled.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute code
    #   <p>Status code for the result of the cancelled transaction.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Cancellation reason message description.</p>
    #   @return [String]
    class CancellationReason < Struct.new(
      nil,
      :item,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the amount of provisioned throughput capacity consumed on a table or an
    #             index.</p>
    # @!attribute read_capacity_units
    #   <p>The total number of read capacity units consumed on a table or an index.</p>
    #   @return [Float]
    # @!attribute write_capacity_units
    #   <p>The total number of write capacity units consumed on a table or an index.</p>
    #   @return [Float]
    # @!attribute capacity_units
    #   <p>The total number of capacity units consumed on a table or an index.</p>
    #   @return [Float]
    class Capacity < Struct.new(
      nil,
      :read_capacity_units,
      :write_capacity_units,
      :capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the selection criteria for a <code>Query</code> or <code>Scan</code>
    #             operation:</p>
    #          <ul>
    #             <li>
    #                <p>For a <code>Query</code> operation, <code>Condition</code> is used for
    #                     specifying the <code>KeyConditions</code> to use when querying a table or an
    #                     index. For <code>KeyConditions</code>, only the following comparison operators
    #                     are supported:</p>
    #                <p>
    #                   <code>EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN</code>
    #                </p>
    #                <p>
    #                   <code>Condition</code> is also used in a <code>QueryFilter</code>, which
    #                     evaluates the query results and returns only the desired values.</p>
    #             </li>
    #             <li>
    #                <p>For a <code>Scan</code> operation, <code>Condition</code> is used in a
    #                         <code>ScanFilter</code>, which evaluates the scan results and returns only
    #                     the desired values.</p>
    #             </li>
    #          </ul>
    # @!attribute attribute_value_list
    #   <p>One or more values to evaluate against the supplied attribute. The number of values in
    #               the list depends on the <code>ComparisonOperator</code> being used.</p>
    #            <p>For type Number, value comparisons are numeric.</p>
    #            <p>String value comparisons for greater than, equals, or less than are based on ASCII
    #               character code values. For example, <code>a</code> is greater than <code>A</code>, and
    #                   <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
    #            <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
    #               compares binary values.</p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute comparison_operator
    #   <p>A comparator for evaluating attributes. For example, equals, greater than, less than,
    #               etc.</p>
    #            <p>The following comparison operators are available:</p>
    #            <p>
    #               <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
    #                   BEGINS_WITH | IN | BETWEEN</code>
    #            </p>
    #            <p>The following are descriptions of each comparison operator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, Binary, String Set, Number Set, or Binary Set.
    #                       If an item contains an <code>AttributeValue</code> element of a different type
    #                       than the one provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
    #                       item contains an <code>AttributeValue</code> of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LE</code> : Less than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> : Less than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, or Binary (not a set type). If an item contains an
    #                           <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code> : Greater than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> : Greater than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the existence of an attribute, not its data type.
    #                           If the data type of attribute "<code>a</code>" is null, and you evaluate it
    #                           using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
    #                           result is because the attribute "<code>a</code>" exists; its data type is
    #                           not relevant to the <code>NOT_NULL</code> comparison operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the nonexistence of an attribute, not its data
    #                           type. If the data type of attribute "<code>a</code>" is null, and you
    #                           evaluate it using <code>NULL</code>, the result is a Boolean
    #                               <code>false</code>. This is because the attribute "<code>a</code>"
    #                           exists; its data type is not relevant to the <code>NULL</code> comparison
    #                           operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is of type String, then the operator checks for a
    #                       substring match. If the target attribute of the comparison is of type Binary,
    #                       then the operator looks for a subsequence of the target that matches the input.
    #                       If the target attribute of the comparison is a set ("<code>SS</code>",
    #                           "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to
    #                       true if it finds an exact match with any member of the set.</p>
    #                  <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>",
    #                           "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a
    #                       map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
    #                       value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is a String, then the operator checks for the
    #                       absence of a substring match. If the target attribute of the comparison is
    #                       Binary, then the operator checks for the absence of a subsequence of the target
    #                       that matches the input. If the target attribute of the comparison is a set
    #                           ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the
    #                       operator evaluates to true if it <i>does not</i> find an exact
    #                       match with any member of the set.</p>
    #                  <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS
    #                           b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot
    #                       be a set, a map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code> : Checks for a prefix. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String or Binary (not a Number or a set type). The target attribute of
    #                       the comparison must be of type String or Binary (not a Number or a set
    #                       type).</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN</code> : Checks for matching elements in a list.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain one or more
    #                           <code>AttributeValue</code> elements of type String, Number, or Binary.
    #                       These attributes are compared against an existing attribute of an item. If any
    #                       elements of the input are equal to the item attribute, the expression evaluates
    #                       to true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BETWEEN</code> : Greater than or equal to the first value, and less than
    #                       or equal to the second value. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
    #                       elements of the same type, either String, Number, or Binary (not a set type). A
    #                       target attribute matches if the target value is greater than, or equal to, the
    #                       first element and less than, or equal to, the second element. If an item
    #                       contains an <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For usage examples of <code>AttributeValueList</code> and
    #                   <code>ComparisonOperator</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy
    #                   Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    class Condition < Struct.new(
      nil,
      :attribute_value_list,
      :comparison_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform a check that an item exists or to check the condition
    #             of specific attributes of the item.</p>
    # @!attribute key
    #   <p>The primary key of the item to be checked. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table for the check item request. You can also provide the Amazon Resource Name (ARN) of
    #               the table in this parameter.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to succeed. For
    #               more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ExpressionAttributeNames.html">Expression attribute names</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression. For more information, see
    #                   <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>ConditionCheck</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   @return [String]
    class ConditionCheck < Struct.new(
      nil,
      :key,
      :table_name,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condition specified in the operation failed to be evaluated.</p>
    # @!attribute message
    #   <p>The conditional request failed.</p>
    #   @return [String]
    # @!attribute item
    #   <p>Item which caused the <code>ConditionalCheckFailedException</code>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class ConditionalCheckFailedException < Struct.new(
      nil,
      :message,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity units consumed by an operation. The data returned includes the total
    #             provisioned throughput consumed, along with statistics for the table and any indexes
    #             involved in the operation. <code>ConsumedCapacity</code> is only returned if the request
    #             asked for it. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!attribute table_name
    #   <p>The name of the table that was affected by the operation. If you had specified the
    #               Amazon Resource Name (ARN) of a table in the input, you'll see the table ARN in the response.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>The total number of capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute read_capacity_units
    #   <p>The total number of read capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute write_capacity_units
    #   <p>The total number of write capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute table
    #   <p>The amount of throughput consumed on the table affected by the operation.</p>
    #   @return [Types::Capacity]
    # @!attribute local_secondary_indexes
    #   <p>The amount of throughput consumed on each local index affected by the
    #               operation.</p>
    #   @return [Hash<String, Types::Capacity>]
    # @!attribute global_secondary_indexes
    #   <p>The amount of throughput consumed on each global index affected by the
    #               operation.</p>
    #   @return [Hash<String, Types::Capacity>]
    # @!attribute vector_indexes
    #   <p>The amount of throughput consumed on each vector index affected by the operation.
    #               Each entry contains <code>VectorWriteRequestBytes</code> (for write operations) or
    #               <code>VectorSearchRequestBytes</code> (for search operations).</p>
    #   @return [Hash<String, Types::VectorCapacity>]
    class ConsumedCapacity < Struct.new(
      nil,
      :table_name,
      :capacity_units,
      :read_capacity_units,
      :write_capacity_units,
      :table,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :vector_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the continuous backups and point in time recovery settings on the
    #             table.</p>
    # @!attribute continuous_backups_status
    #   <p>
    #               <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED,
    #               DISABLED</p>
    #   @return [String]
    # @!attribute point_in_time_recovery_description
    #   <p>The description of the point in time recovery settings applied to the table.</p>
    #   @return [Types::PointInTimeRecoveryDescription]
    class ContinuousBackupsDescription < Struct.new(
      nil,
      :continuous_backups_status,
      :point_in_time_recovery_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Backups have not yet been enabled for this table.</p>
    # @!attribute message
    #   @return [String]
    class ContinuousBackupsUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Contributor Insights summary entry.</p>
    # @!attribute table_name
    #   <p>Name of the table associated with the summary.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>Name of the index associated with the summary, if any.</p>
    #   @return [String]
    # @!attribute contributor_insights_status
    #   <p>Describes the current status for contributor insights for the given table and index,
    #               if applicable.</p>
    #   @return [String]
    # @!attribute contributor_insights_mode
    #   <p>Indicates the current mode of CloudWatch Contributor Insights, specifying whether it
    #               tracks all access and throttled events or throttled events only for the DynamoDB
    #               table or index.</p>
    #   @return [String]
    class ContributorInsightsSummary < Struct.new(
      nil,
      :table_name,
      :index_name,
      :contributor_insights_status,
      :contributor_insights_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Specified name for the backup.</p>
    #   @return [String]
    class CreateBackupInput < Struct.new(
      nil,
      :table_name,
      :backup_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_details
    #   <p>Contains the details of the backup created for the table.</p>
    #   @return [Types::BackupDetails]
    class CreateBackupOutput < Struct.new(
      nil,
      :backup_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a new global secondary index to be added to an existing table.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index to be created.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The key schema for the global secondary index.
    #               Global secondary index supports up to 4 partition and up to 4 sort keys.</p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into an index. These
    #               are in addition to the primary key attributes and index key attributes, which are
    #               automatically projected.</p>
    #   @return [Types::Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>The maximum number of read and write units for the global secondary index being
    #               created. If you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both. You must use either <code>OnDemand
    #                   Throughput</code> or <code>ProvisionedThroughput</code> based on your table's
    #               capacity mode.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput value (in read units per second and write units per
    #               second) when creating a secondary index.</p>
    #   @return [Types::WarmThroughput]
    class CreateGlobalSecondaryIndexAction < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput,
      :on_demand_throughput,
      :warm_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replication_group
    #   <p>The Regions where the global table needs to be created.</p>
    #   @return [Array<Types::Replica>]
    class CreateGlobalTableInput < Struct.new(
      nil,
      :global_table_name,
      :replication_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [Types::GlobalTableDescription]
    class CreateGlobalTableOutput < Struct.new(
      nil,
      :global_table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the action to add a new witness Region to a MRSC global table. A MRSC global
    #             table can be configured with either three replicas, or with two replicas and one
    #             witness.</p>
    # @!attribute region_name
    #   <p>The Amazon Web Services Region name to be added as a witness Region for the MRSC global
    #               table. The witness must be in a different Region than the replicas and within the same
    #               Region set:</p>
    #            <ul>
    #               <li>
    #                  <p>US Region set: US East (N. Virginia), US East (Ohio), US West (Oregon)</p>
    #               </li>
    #               <li>
    #                  <p>EU Region set: Europe (Ireland), Europe (London), Europe (Paris), Europe
    #                       (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>AP Region set: Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific
    #                       (Osaka)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateGlobalTableWitnessGroupMemberAction < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replica to be added.</p>
    # @!attribute region_name
    #   <p>The Region of the replica to be added.</p>
    #   @return [String]
    class CreateReplicaAction < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replica to be created.</p>
    # @!attribute region_name
    #   <p>The Region where the new replica will be created.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key that should be used for KMS encryption in
    #               the new replica. To specify a key, use its key ID, Amazon Resource Name (ARN), alias
    #               name, or alias ARN. Note that you should only provide this parameter if the key is
    #               different from the default DynamoDB KMS key
    #               <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not specified, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [Types::ProvisionedThroughputOverride]
    # @!attribute on_demand_throughput_override
    #   <p>The maximum on-demand throughput settings for the specified replica table being
    #               created. You can only modify <code>MaxReadRequestUnits</code>, because you can't modify
    #                   <code>MaxWriteRequestUnits</code> for individual replica tables. </p>
    #   @return [Types::OnDemandThroughputOverride]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndex>]
    # @!attribute table_class_override
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   @return [String]
    class CreateReplicationGroupMemberAction < Struct.new(
      nil,
      :region_name,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :global_secondary_indexes,
      :table_class_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateTable</code> operation.</p>
    # @!attribute attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes.</p>
    #   @return [Array<Types::AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table to create. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>Specifies the attributes that make up the primary key for a table or an index. The
    #               attributes in <code>KeySchema</code> must also be defined in the
    #                   <code>AttributeDefinitions</code> array. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data
    #                   Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of this key attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeyType</code> - The role that the key attribute will assume:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HASH</code> - partition key</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RANGE</code> - sort key</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from the DynamoDB usage
    #                   of an internal hash function to evenly distribute data items across partitions,
    #                   based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #            <p>For a simple primary key (partition key), you must provide exactly one element with a
    #                   <code>KeyType</code> of <code>HASH</code>.</p>
    #            <p>For a composite primary key (partition key and sort key), you must provide exactly two
    #               elements, in this order: The first element must have a <code>KeyType</code> of
    #                   <code>HASH</code>, and the second element must have a <code>KeyType</code> of
    #                   <code>RANGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute local_secondary_indexes
    #   <p>One or more local secondary indexes (the maximum is 5) to be created on the table.
    #               Each index is scoped to a given partition key value. There is a 10 GB size limit per
    #               partition key value; otherwise, the size of a local secondary index is
    #               unconstrained.</p>
    #            <p>Each local secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the local secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the local secondary index.
    #                       The key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<Types::LocalSecondaryIndex>]
    # @!attribute global_secondary_indexes
    #   <p>One or more global secondary indexes (the maximum is 20) to be created on the table.
    #               Each global secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the global secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the global secondary
    #                       index. Each global secondary index supports up to 4 partition keys and up to 4 sort keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::GlobalSecondaryIndex>]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for most DynamoDB workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       steady workloads with predictable growth where capacity requirements can be
    #                       reliably forecasted. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for a specified table or index. The
    #               settings can be modified using the <code>UpdateTable</code> operation.</p>
    #            <p> If you set BillingMode as <code>PROVISIONED</code>, you must specify this property.
    #               If you set BillingMode as <code>PAY_PER_REQUEST</code>, you cannot specify this
    #               property.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute stream_specification
    #   <p>The settings for DynamoDB Streams on the table. These settings consist of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StreamEnabled</code> - Indicates whether DynamoDB Streams is to be enabled
    #                       (true) or disabled (false).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamViewType</code> - When an item in the table is modified,
    #                           <code>StreamViewType</code> determines what information is written to the
    #                       table's stream. Valid values for <code>StreamViewType</code> are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>KEYS_ONLY</code> - Only the key attributes of the modified item
    #                               are written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_IMAGE</code> - The entire item, as it appears after it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>OLD_IMAGE</code> - The entire item, as it appeared before it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images
    #                               of the item are written to the stream.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Types::StreamSpecification]
    # @!attribute sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    #   @return [Types::SSESpecification]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the table. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                   for DynamoDB</a>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute table_class
    #   <p>The table class of the new table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on
    #               the table.</p>
    #   @return [Boolean]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput (in read units per second and write units per second)
    #               for creating a table.</p>
    #   @return [Types::WarmThroughput]
    # @!attribute resource_policy
    #   <p>An Amazon Web Services resource-based policy document in JSON format that will be
    #               attached to the table.</p>
    #            <p>When you attach a resource-based policy while creating a table, the policy application
    #               is <i>strongly consistent</i>.</p>
    #            <p>The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this
    #               limit. For a full list of all considerations that apply for resource-based policies, see
    #                   <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html">Resource-based
    #                   policy considerations</a>.</p>
    #            <note>
    #               <p>You need to specify the <code>CreateTable</code> and
    #                       <code>PutResourcePolicy</code>
    #                   IAM actions for authorizing a user to create a table with a
    #                   resource-based policy.</p>
    #            </note>
    #   @return [String]
    # @!attribute on_demand_throughput
    #   <p>Sets the maximum number of read and write units for the specified table in on-demand
    #               capacity mode. If you use this parameter, you must specify
    #                   <code>MaxReadRequestUnits</code>, <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute global_table_source_arn
    #   <p>The Amazon Resource Name (ARN) of the source table used for the creation
    #               of a multi-account global table.</p>
    #   @return [String]
    # @!attribute global_table_settings_replication_mode
    #   <p>Controls the settings synchronization mode for the global table. For multi-account global tables,
    #               this parameter is required and the only supported value is ENABLED. For same-account global tables,
    #               this parameter is set to ENABLED_WITH_OVERRIDES.
    #           </p>
    #   @return [String]
    # @!attribute vector_indexes
    #   <p>One or more vector indexes to be created on the table. Each vector index enables
    #               similarity search on a vector attribute. Each element in the list consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the vector index. Must be unique
    #                       within the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorAttribute</code> - The attribute that contains vector
    #                       embeddings. If multiple vector indexes reference the same attribute, they
    #                       must all use the same number of dimensions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code> - The number of dimensions in each vector.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceFunction</code> - The distance function used to calculate
    #                       similarity. Valid values: <code>COSINE</code>, <code>EUCLIDEAN</code>,
    #                       <code>DOT_PRODUCT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected)
    #                       from the table into the vector index. The total number of projected
    #                       non-key attributes is shared across the vector attribute (counts as 1)
    #                       and <code>INLINE_FILTER</code> search schema elements (each counts as 1).
    #                       <code>HASH</code> search schema elements do not count toward this
    #                       limit.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SearchSchema</code> - (Optional) Defines the partition key
    #                       (<code>HASH</code>) and inline filter (<code>INLINE_FILTER</code>) attributes
    #                       for the vector index.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::VectorIndex>]
    class CreateTableInput < Struct.new(
      nil,
      :attribute_definitions,
      :table_name,
      :key_schema,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :billing_mode,
      :provisioned_throughput,
      :stream_specification,
      :sse_specification,
      :tags,
      :table_class,
      :deletion_protection_enabled,
      :warm_throughput,
      :resource_policy,
      :on_demand_throughput,
      :global_table_source_arn,
      :global_table_settings_replication_mode,
      :vector_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateTable</code> operation.</p>
    # @!attribute table_description
    #   <p>Represents the properties of the table.</p>
    #   @return [Types::TableDescription]
    class CreateTableOutput < Struct.new(
      nil,
      :table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A new vector index to be added to a table.</p>
    # @!attribute index_name
    #   <p>The name of the vector index. Must be unique within the table.</p>
    #   @return [String]
    # @!attribute vector_attribute
    #   <p>The attribute that contains vector embeddings. If multiple vector indexes
    #               reference the same attribute, they must all use the same number of
    #               dimensions.</p>
    #   @return [Types::VectorAttributeDefinition]
    # @!attribute search_schema
    #   <p>The partition key and inline filter attribute definitions for the vector
    #               index.</p>
    #   @return [Array<Types::SearchSchemaElement>]
    # @!attribute projection
    #   <p>Specifies attributes that are copied (projected) from the table into the vector
    #               index.</p>
    #   @return [Types::Projection]
    # @!attribute dimensions
    #   <p>The number of dimensions in each vector.</p>
    #   @return [Integer]
    # @!attribute distance_function
    #   <p>The distance function used to calculate similarity. Valid values:
    #               <code>COSINE</code>, <code>EUCLIDEAN</code>, <code>DOT_PRODUCT</code>.</p>
    #   @return [String]
    class CreateVectorIndexAction < Struct.new(
      nil,
      :index_name,
      :vector_attribute,
      :search_schema,
      :projection,
      :dimensions,
      :distance_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Processing options for the CSV file being imported. </p>
    # @!attribute delimiter
    #   <p> The delimiter used for separating items in the CSV file being imported. </p>
    #   @return [String]
    # @!attribute header_list
    #   <p> List of the headers used to specify a common header for all source CSV files being
    #               imported. If this field is specified then the first line of each CSV file is treated as
    #               data instead of the header. If this field is not specified the the first line of each
    #               CSV file is treated as the header. </p>
    #   @return [Array<String>]
    class CsvOptions < Struct.new(
      nil,
      :delimiter,
      :header_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform a <code>DeleteItem</code> operation.</p>
    # @!attribute key
    #   <p>The primary key of the item to be deleted. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table in which the item to be deleted resides. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional delete to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Delete</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   @return [String]
    class Delete < Struct.new(
      nil,
      :key,
      :table_name,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_arn
    #   <p>The ARN associated with the backup.</p>
    #   @return [String]
    class DeleteBackupInput < Struct.new(
      nil,
      :backup_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_description
    #   <p>Contains the description of the backup created for the table.</p>
    #   @return [Types::BackupDescription]
    class DeleteBackupOutput < Struct.new(
      nil,
      :backup_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a global secondary index to be deleted from an existing table.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index to be deleted.</p>
    #   @return [String]
    class DeleteGlobalSecondaryIndexAction < Struct.new(
      nil,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the action to remove a witness Region from a MRSC global table. You cannot
    #             delete a single witness from a MRSC global table - you must delete both a replica and
    #             the witness together. The deletion of both a witness and replica converts the remaining
    #             replica to a single-Region DynamoDB table. </p>
    # @!attribute region_name
    #   <p>The witness Region name to be removed from the MRSC global table.</p>
    #   @return [String]
    class DeleteGlobalTableWitnessGroupMemberAction < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteItem</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table from which to delete the item. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to delete.</p>
    #            <p>For the primary key, you must provide all of the key attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::ExpectedAttributeValue>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were deleted. For <code>DeleteItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - The content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>DeleteItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code>
    #               to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>DeleteItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class DeleteItemInput < Struct.new(
      nil,
      :table_name,
      :key,
      :expected,
      :conditional_operator,
      :return_values,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteItem</code> operation.</p>
    # @!attribute attributes
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the item
    #               as it appeared before the <code>DeleteItem</code> operation. This map appears in the
    #               response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the
    #               request.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>DeleteItem</code> operation. The data
    #               returned includes the total provisioned throughput consumed, along with statistics for
    #               the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
    #               only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
    #               more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #            <p>If the table has vector indexes, the response includes a
    #               <code>VectorIndexes</code> field with <code>VectorWriteRequestBytes</code> consumed
    #               for each affected vector index.</p>
    #   @return [Types::ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only
    #               returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
    #               table does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ItemCollectionMetrics]
    class DeleteItemOutput < Struct.new(
      nil,
      :attributes,
      :consumed_capacity,
      :item_collection_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replica to be removed.</p>
    # @!attribute region_name
    #   <p>The Region of the replica to be removed.</p>
    #   @return [String]
    class DeleteReplicaAction < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replica to be deleted.</p>
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    class DeleteReplicationGroupMemberAction < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform a <code>DeleteItem</code> operation on an item.</p>
    # @!attribute key
    #   <p>A map of attribute name to attribute values, representing the primary key of the item
    #               to delete. All of the table's primary key attributes must be specified, and their data
    #               types must match those of the table's key schema.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class DeleteRequest < Struct.new(
      nil,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource from which the policy will be
    #               removed. The resources you can specify include tables and streams. If you remove the
    #               policy of a table, it will also remove the permissions for the table's indexes defined
    #               in that policy document. This is because index permissions are defined in the table's
    #               policy.</p>
    #   @return [String]
    # @!attribute expected_revision_id
    #   <p>A string value that you can use to conditionally delete your policy. When you provide
    #               an expected revision ID, if the revision ID of the existing policy on the resource
    #               doesn't match or if there's no policy attached to the resource, the request will fail
    #               and return a <code>PolicyNotFoundException</code>.</p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      :expected_revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   <p>A unique string that represents the revision ID of the policy. If you're comparing revision IDs, make sure to always use string comparison logic.</p>
    #            <p>This value will be empty if you make a request against a resource without a
    #               policy.</p>
    #   @return [String]
    class DeleteResourcePolicyOutput < Struct.new(
      nil,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteTable</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table to delete. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    #   @return [String]
    class DeleteTableInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteTable</code> operation.</p>
    # @!attribute table_description
    #   <p>Represents the properties of a table.</p>
    #   @return [Types::TableDescription]
    class DeleteTableOutput < Struct.new(
      nil,
      :table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A vector index to be removed from a table.</p>
    # @!attribute index_name
    #   <p>The name of the vector index to delete.</p>
    #   @return [String]
    class DeleteVectorIndexAction < Struct.new(
      nil,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #   @return [String]
    class DescribeBackupInput < Struct.new(
      nil,
      :backup_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_description
    #   <p>Contains the description of the backup created for the table.</p>
    #   @return [Types::BackupDescription]
    class DescribeBackupOutput < Struct.new(
      nil,
      :backup_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>Name of the table for which the customer wants to check the continuous backups and
    #               point in time recovery settings.</p>
    #            <p>You can also provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    class DescribeContinuousBackupsInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_backups_description
    #   <p>Represents the continuous backups and point in time recovery settings on the
    #               table.</p>
    #   @return [Types::ContinuousBackupsDescription]
    class DescribeContinuousBackupsOutput < Struct.new(
      nil,
      :continuous_backups_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table to describe. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index to describe, if applicable.</p>
    #   @return [String]
    class DescribeContributorInsightsInput < Struct.new(
      nil,
      :table_name,
      :index_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table being described.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index being described.</p>
    #   @return [String]
    # @!attribute contributor_insights_rule_list
    #   <p>List of names of the associated contributor insights rules.</p>
    #   @return [Array<String>]
    # @!attribute contributor_insights_status
    #   <p>Current status of contributor insights.</p>
    #   @return [String]
    # @!attribute last_update_date_time
    #   <p>Timestamp of the last time the status was changed.</p>
    #   @return [Time]
    # @!attribute failure_exception
    #   <p>Returns information about the last failure that was encountered.</p>
    #            <p>The most common exceptions for a FAILED status are:</p>
    #            <ul>
    #               <li>
    #                  <p>LimitExceededException - Per-account Amazon CloudWatch Contributor Insights
    #                       rule limit reached. Please disable Contributor Insights for other tables/indexes
    #                       OR disable Contributor Insights rules before retrying.</p>
    #               </li>
    #               <li>
    #                  <p>AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be
    #                       modified due to insufficient permissions.</p>
    #               </li>
    #               <li>
    #                  <p>AccessDeniedException - Failed to create service-linked role for Contributor
    #                       Insights due to insufficient permissions.</p>
    #               </li>
    #               <li>
    #                  <p>InternalServerError - Failed to create Amazon CloudWatch Contributor Insights
    #                       rules. Please retry request.</p>
    #               </li>
    #            </ul>
    #   @return [Types::FailureException]
    # @!attribute contributor_insights_mode
    #   <p>The mode of CloudWatch Contributor Insights for DynamoDB that determines
    #               which events are emitted. Can be set to track all access and throttled events or throttled
    #               events only.</p>
    #   @return [String]
    class DescribeContributorInsightsOutput < Struct.new(
      nil,
      :table_name,
      :index_name,
      :contributor_insights_rule_list,
      :contributor_insights_status,
      :last_update_date_time,
      :failure_exception,
      :contributor_insights_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeEndpointsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>List of endpoints.</p>
    #   @return [Array<Types::Endpoint>]
    class DescribeEndpointsResponse < Struct.new(
      nil,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) associated with the export.</p>
    #   @return [String]
    class DescribeExportInput < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_description
    #   <p>Represents the properties of the export.</p>
    #   @return [Types::ExportDescription]
    class DescribeExportOutput < Struct.new(
      nil,
      :export_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    class DescribeGlobalTableInput < Struct.new(
      nil,
      :global_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [Types::GlobalTableDescription]
    class DescribeGlobalTableOutput < Struct.new(
      nil,
      :global_table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The name of the global table to describe.</p>
    #   @return [String]
    class DescribeGlobalTableSettingsInput < Struct.new(
      nil,
      :global_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    # @!attribute replica_settings
    #   <p>The Region-specific settings for the global table.</p>
    #   @return [Array<Types::ReplicaSettingsDescription>]
    class DescribeGlobalTableSettingsOutput < Struct.new(
      nil,
      :global_table_name,
      :replica_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table you're importing to. </p>
    #   @return [String]
    class DescribeImportInput < Struct.new(
      nil,
      :import_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_table_description
    #   <p> Represents the properties of the table created for the import, and parameters of the
    #               import. The import parameters include import status, how many items were processed, and
    #               how many errors were encountered. </p>
    #   @return [Types::ImportTableDescription]
    class DescribeImportOutput < Struct.new(
      nil,
      :import_table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table being described. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    #   @return [String]
    class DescribeKinesisStreamingDestinationInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table being described.</p>
    #   @return [String]
    # @!attribute kinesis_data_stream_destinations
    #   <p>The list of replica structures for the table being described.</p>
    #   @return [Array<Types::KinesisDataStreamDestination>]
    class DescribeKinesisStreamingDestinationOutput < Struct.new(
      nil,
      :table_name,
      :kinesis_data_stream_destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeLimits</code> operation. Has no
    #             content.</p>
    class DescribeLimitsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeLimits</code> operation.</p>
    # @!attribute account_max_read_capacity_units
    #   <p>The maximum total read capacity units that your account allows you to provision across
    #               all of your tables in this Region.</p>
    #   @return [Integer]
    # @!attribute account_max_write_capacity_units
    #   <p>The maximum total write capacity units that your account allows you to provision
    #               across all of your tables in this Region.</p>
    #   @return [Integer]
    # @!attribute table_max_read_capacity_units
    #   <p>The maximum read capacity units that your account allows you to provision for a new
    #               table that you are creating in this Region, including the read capacity units
    #               provisioned for its global secondary indexes (GSIs).</p>
    #   @return [Integer]
    # @!attribute table_max_write_capacity_units
    #   <p>The maximum write capacity units that your account allows you to provision for a new
    #               table that you are creating in this Region, including the write capacity units
    #               provisioned for its global secondary indexes (GSIs).</p>
    #   @return [Integer]
    class DescribeLimitsOutput < Struct.new(
      nil,
      :account_max_read_capacity_units,
      :account_max_write_capacity_units,
      :table_max_read_capacity_units,
      :table_max_write_capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeTable</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table to describe. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    #   @return [String]
    class DescribeTableInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeTable</code> operation.</p>
    # @!attribute table
    #   <p>The properties of the table.</p>
    #   @return [Types::TableDescription]
    class DescribeTableOutput < Struct.new(
      nil,
      :table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    #   @return [String]
    class DescribeTableReplicaAutoScalingInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_auto_scaling_description
    #   <p>Represents the auto scaling properties of the table.</p>
    #   @return [Types::TableAutoScalingDescription]
    class DescribeTableReplicaAutoScalingOutput < Struct.new(
      nil,
      :table_auto_scaling_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table to be described. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    #   @return [String]
    class DescribeTimeToLiveInput < Struct.new(
      nil,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_to_live_description
    #   <p></p>
    #   @return [Types::TimeToLiveDescription]
    class DescribeTimeToLiveOutput < Struct.new(
      nil,
      :time_to_live_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the DynamoDB table. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    #   @return [Types::EnableKinesisStreamingConfiguration]
    class DisableKinesisStreamingDestinationInput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :enable_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table being modified.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of the replication.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The destination for the Kinesis streaming information that is being enabled.</p>
    #   @return [Types::EnableKinesisStreamingConfiguration]
    class DisableKinesisStreamingDestinationOutput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :destination_status,
      :enable_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> There was an attempt to insert an item with the same primary key as an item that
    #             already exists in the DynamoDB table.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateItemException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables setting the configuration for Kinesis Streaming.</p>
    # @!attribute approximate_creation_date_time_precision
    #   <p>Toggle for the precision of Kinesis data stream timestamp. The values are either
    #                   <code>MILLISECOND</code> or <code>MICROSECOND</code>.</p>
    #   @return [String]
    class EnableKinesisStreamingConfiguration < Struct.new(
      nil,
      :approximate_creation_date_time_precision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the DynamoDB table. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    #   @return [Types::EnableKinesisStreamingConfiguration]
    class EnableKinesisStreamingDestinationInput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :enable_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table being modified.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of the replication.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The destination for the Kinesis streaming information that is being enabled.</p>
    #   @return [Types::EnableKinesisStreamingConfiguration]
    class EnableKinesisStreamingDestinationOutput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :destination_status,
      :enable_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An endpoint information details.</p>
    # @!attribute address
    #   <p>IP address of the endpoint.</p>
    #   @return [String]
    # @!attribute cache_period_in_minutes
    #   <p>Endpoint cache time to live (TTL) value.</p>
    #   @return [Integer]
    class Endpoint < Struct.new(
      nil,
      :address,
      :cache_period_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cache_period_in_minutes] = 0 unless options.key?(:cache_period_in_minutes)
        super
      end
    end

    # @!attribute statement
    #   <p>The PartiQL statement representing the operation to run.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the PartiQL statement, if any.</p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, along
    #               with a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation so you
    #               can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. </p>
    #   @return [Integer]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an
    #                   <code>ExecuteStatement</code> operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class ExecuteStatementInput < Struct.new(
      nil,
      :statement,
      :parameters,
      :consistent_read,
      :next_token,
      :return_consumed_capacity,
      :limit,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>If a read operation was used, this property will contain the result of the read
    #               operation; a map of attribute names and their values. For the write operations this
    #               value will be empty.</p>
    #   @return [Array<Hash<String, Types::AttributeValue>>]
    # @!attribute next_token
    #   <p>If the response of a read request exceeds the response payload limit DynamoDB will set
    #               this value in the response. If set, you can use that this value in the subsequent
    #               request to get the remaining results.</p>
    #   @return [String]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by an operation. The data returned includes the total
    #               provisioned throughput consumed, along with statistics for the table and any indexes
    #               involved in the operation. <code>ConsumedCapacity</code> is only returned if the request
    #               asked for it. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ConsumedCapacity]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request. If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has
    #               been processed and there is no more data to be retrieved. If
    #                   <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    class ExecuteStatementOutput < Struct.new(
      nil,
      :items,
      :next_token,
      :consumed_capacity,
      :last_evaluated_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transact_statements
    #   <p>The list of PartiQL statements representing the transaction to run.</p>
    #   @return [Array<Types::ParameterizedStatement>]
    # @!attribute client_request_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html">TransactGetItems</a> and <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html">TransactWriteItems</a>.</p>
    #   @return [String]
    class ExecuteTransactionInput < Struct.new(
      nil,
      :transact_statements,
      :client_request_token,
      :return_consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute responses
    #   <p>The response to a PartiQL transaction.</p>
    #   @return [Array<Types::ItemResponse>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire operation. The values of the list are
    #               ordered according to the ordering of the statements.</p>
    #   @return [Array<Types::ConsumedCapacity>]
    class ExecuteTransactionOutput < Struct.new(
      nil,
      :responses,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a condition to be compared with an attribute value. This condition can be
    #             used with <code>DeleteItem</code>, <code>PutItem</code>, or <code>UpdateItem</code>
    #             operations; if the comparison evaluates to true, the operation succeeds; if not, the
    #             operation fails. You can use <code>ExpectedAttributeValue</code> in one of two different
    #             ways:</p>
    #          <ul>
    #             <li>
    #                <p>Use <code>AttributeValueList</code> to specify one or more values to compare
    #                     against an attribute. Use <code>ComparisonOperator</code> to specify how you
    #                     want to perform the comparison. If the comparison evaluates to true, then the
    #                     conditional operation succeeds.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>Value</code> to specify a value that DynamoDB will compare against
    #                     an attribute. If the values match, then <code>ExpectedAttributeValue</code>
    #                     evaluates to true and the conditional operation succeeds. Optionally, you can
    #                     also set <code>Exists</code> to false, indicating that you <i>do
    #                         not</i> expect to find the attribute value in the table. In this
    #                     case, the conditional operation succeeds only if the comparison evaluates to
    #                     false.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>Value</code> and <code>Exists</code> are incompatible with
    #                 <code>AttributeValueList</code> and <code>ComparisonOperator</code>. Note that if
    #             you use both sets of parameters at once, DynamoDB will return a
    #                 <code>ValidationException</code> exception.</p>
    # @!attribute value
    #   <p>Represents the data for the expected attribute.</p>
    #            <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #               the value is the data itself.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::AttributeValue]
    # @!attribute exists
    #   <p>Causes DynamoDB to evaluate the value before attempting a conditional
    #               operation:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to
    #                       see if that attribute value already exists in the table. If it is found, then
    #                       the operation succeeds. If it is not found, the operation fails with a
    #                           <code>ConditionCheckFailedException</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that
    #                       the attribute value does not exist in the table. If in fact the value does not
    #                       exist, then the assumption is valid and the operation succeeds. If the value is
    #                       found, despite the assumption that it does not exist, the operation fails with a
    #                           <code>ConditionCheckFailedException</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a
    #                   <code>Value</code> all by itself, DynamoDB assumes the attribute exists:
    #               You don't have to set <code>Exists</code> to <code>true</code>, because it is
    #               implied.</p>
    #            <p>DynamoDB returns a <code>ValidationException</code> if:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to
    #                       check. (You expect a value to exist, but don't specify what that value
    #                       is.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Exists</code> is <code>false</code> but you also provide a
    #                           <code>Value</code>. (You cannot expect an attribute to have a value, while
    #                       also expecting it not to exist.)</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute comparison_operator
    #   <p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For
    #               example, equals, greater than, less than, etc.</p>
    #            <p>The following comparison operators are available:</p>
    #            <p>
    #               <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
    #                   BEGINS_WITH | IN | BETWEEN</code>
    #            </p>
    #            <p>The following are descriptions of each comparison operator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, Binary, String Set, Number Set, or Binary Set.
    #                       If an item contains an <code>AttributeValue</code> element of a different type
    #                       than the one provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
    #                       item contains an <code>AttributeValue</code> of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LE</code> : Less than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> : Less than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, or Binary (not a set type). If an item contains an
    #                           <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code> : Greater than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> : Greater than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the existence of an attribute, not its data type.
    #                           If the data type of attribute "<code>a</code>" is null, and you evaluate it
    #                           using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
    #                           result is because the attribute "<code>a</code>" exists; its data type is
    #                           not relevant to the <code>NOT_NULL</code> comparison operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the nonexistence of an attribute, not its data
    #                           type. If the data type of attribute "<code>a</code>" is null, and you
    #                           evaluate it using <code>NULL</code>, the result is a Boolean
    #                               <code>false</code>. This is because the attribute "<code>a</code>"
    #                           exists; its data type is not relevant to the <code>NULL</code> comparison
    #                           operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is of type String, then the operator checks for a
    #                       substring match. If the target attribute of the comparison is of type Binary,
    #                       then the operator looks for a subsequence of the target that matches the input.
    #                       If the target attribute of the comparison is a set ("<code>SS</code>",
    #                           "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to
    #                       true if it finds an exact match with any member of the set.</p>
    #                  <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>",
    #                           "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a
    #                       map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
    #                       value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is a String, then the operator checks for the
    #                       absence of a substring match. If the target attribute of the comparison is
    #                       Binary, then the operator checks for the absence of a subsequence of the target
    #                       that matches the input. If the target attribute of the comparison is a set
    #                           ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the
    #                       operator evaluates to true if it <i>does not</i> find an exact
    #                       match with any member of the set.</p>
    #                  <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS
    #                           b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot
    #                       be a set, a map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code> : Checks for a prefix. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String or Binary (not a Number or a set type). The target attribute of
    #                       the comparison must be of type String or Binary (not a Number or a set
    #                       type).</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN</code> : Checks for matching elements in a list.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain one or more
    #                           <code>AttributeValue</code> elements of type String, Number, or Binary.
    #                       These attributes are compared against an existing attribute of an item. If any
    #                       elements of the input are equal to the item attribute, the expression evaluates
    #                       to true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BETWEEN</code> : Greater than or equal to the first value, and less than
    #                       or equal to the second value. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
    #                       elements of the same type, either String, Number, or Binary (not a set type). A
    #                       target attribute matches if the target value is greater than, or equal to, the
    #                       first element and less than, or equal to, the second element. If an item
    #                       contains an <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute attribute_value_list
    #   <p>One or more values to evaluate against the supplied attribute. The number of values in
    #               the list depends on the <code>ComparisonOperator</code> being used.</p>
    #            <p>For type Number, value comparisons are numeric.</p>
    #            <p>String value comparisons for greater than, equals, or less than are based on ASCII
    #               character code values. For example, <code>a</code> is greater than <code>A</code>, and
    #                   <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
    #            <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
    #               compares binary values.</p>
    #            <p>For information on specifying data types in JSON, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html">JSON Data Format</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #   @return [Array<Types::AttributeValue>]
    class ExpectedAttributeValue < Struct.new(
      nil,
      :value,
      :exists,
      :comparison_operator,
      :attribute_value_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was a conflict when writing to the specified S3 bucket.</p>
    # @!attribute message
    #   @return [String]
    class ExportConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of the exported table.</p>
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) of the table export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
    #               FAILED.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the export task began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the export task completed.</p>
    #   @return [Time]
    # @!attribute export_manifest
    #   <p>The name of the manifest file for the export task.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table that was exported.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique ID of the table that was exported.</p>
    #   @return [String]
    # @!attribute export_time
    #   <p>Point in time from which table data was exported.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>The client token that was provided for the export task. A client token makes calls to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket containing the export.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket containing the
    #               export.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix used as the file name and path of the exported
    #               snapshot.</p>
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data is stored. Valid values for
    #                   <code>S3SseAlgorithm</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data is stored (if applicable).</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>Status code for the result of the failed export.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Export failure reason description.</p>
    #   @return [String]
    # @!attribute export_format
    #   <p>The format of the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   @return [String]
    # @!attribute billed_size_bytes
    #   <p>The billable size of the table export.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items exported.</p>
    #   @return [Integer]
    # @!attribute export_type
    #   <p>The type of export that was performed. Valid values are <code>FULL_EXPORT</code> or
    #                   <code>INCREMENTAL_EXPORT</code>.</p>
    #   @return [String]
    # @!attribute incremental_export_specification
    #   <p>Optional object containing the parameters specific to an incremental export.</p>
    #   @return [Types::IncrementalExportSpecification]
    # @!attribute filter_specification
    #   <p>The filter criteria applied to the export. When present, only items that match the
    #               specified key conditions and filter expressions are included in the export
    #               output.</p>
    #   @return [Types::FilterSpecification]
    class ExportDescription < Struct.new(
      nil,
      :export_arn,
      :export_status,
      :start_time,
      :end_time,
      :export_manifest,
      :table_arn,
      :table_id,
      :export_time,
      :client_token,
      :s3_bucket,
      :s3_bucket_owner,
      :s3_prefix,
      :s3_sse_algorithm,
      :s3_sse_kms_key_id,
      :failure_code,
      :failure_message,
      :export_format,
      :billed_size_bytes,
      :item_count,
      :export_type,
      :incremental_export_specification,
      :filter_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified export was not found.</p>
    # @!attribute message
    #   @return [String]
    class ExportNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an export task.</p>
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) of the export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
    #               FAILED.</p>
    #   @return [String]
    # @!attribute export_type
    #   <p>The type of export that was performed. Valid values are <code>FULL_EXPORT</code> or
    #                   <code>INCREMENTAL_EXPORT</code>.</p>
    #   @return [String]
    class ExportSummary < Struct.new(
      nil,
      :export_arn,
      :export_status,
      :export_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the table to export.</p>
    #   @return [String]
    # @!attribute export_time
    #   <p>Time in the past from which to export table data, counted in seconds from the start of
    #               the Unix epoch. The table export will be a snapshot of the table's state at this point
    #               in time.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>ExportConflictException</code>.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket to export the snapshot to.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket the export will be
    #               stored in.</p>
    #            <note>
    #               <p>S3BucketOwner is a required parameter when exporting to a S3 bucket in another
    #                   account.</p>
    #            </note>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix to use as the file name and path of the exported
    #               snapshot.</p>
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data will be stored. Valid values
    #               for <code>S3SseAlgorithm</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data will be stored (if applicable).</p>
    #   @return [String]
    # @!attribute export_format
    #   <p>The format for the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   @return [String]
    # @!attribute export_type
    #   <p>Choice of whether to execute as a full export or incremental export. Valid values are
    #               FULL_EXPORT or INCREMENTAL_EXPORT. The default value is FULL_EXPORT. If
    #               INCREMENTAL_EXPORT is provided, the IncrementalExportSpecification must also be
    #               used.</p>
    #   @return [String]
    # @!attribute incremental_export_specification
    #   <p>Optional object containing the parameters specific to an incremental export.</p>
    #   @return [Types::IncrementalExportSpecification]
    # @!attribute filter_specification
    #   <p>The criteria used to filter which items are included in the point-in-time export.
    #               When you specify this parameter, only items that match the key conditions and filter
    #               expressions are exported.</p>
    #   @return [Types::FilterSpecification]
    class ExportTableToPointInTimeInput < Struct.new(
      nil,
      :table_arn,
      :export_time,
      :client_token,
      :s3_bucket,
      :s3_bucket_owner,
      :s3_prefix,
      :s3_sse_algorithm,
      :s3_sse_kms_key_id,
      :export_format,
      :export_type,
      :incremental_export_specification,
      :filter_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_description
    #   <p>Contains a description of the table export.</p>
    #   @return [Types::ExportDescription]
    class ExportTableToPointInTimeOutput < Struct.new(
      nil,
      :export_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a failure a contributor insights operation.</p>
    # @!attribute exception_name
    #   <p>Exception name.</p>
    #   @return [String]
    # @!attribute exception_description
    #   <p>Description of the failure.</p>
    #   @return [String]
    class FailureException < Struct.new(
      nil,
      :exception_name,
      :exception_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the filter criteria used to limit which items are included in an export.
    #             If you don't include this parameter, all items and attributes are exported.</p>
    # @!attribute filter_expression
    #   <p>A condition that filters which items are included in the export. This parameter
    #               uses the same syntax as <code>FilterExpression</code> in <code>Query</code> and
    #                   <code>Scan</code>. If you don't provide <code>KeyConditionExpression</code>, this
    #               expression can also reference key attributes. If you don't specify this parameter,
    #               all items are included in the export.</p>
    #   @return [String]
    # @!attribute projection_expression
    #   <p>The attributes you want to retrieve for items included in the export. Separate
    #               attribute names in the expression with commas. If you don't specify this parameter,
    #               all attributes are returned.</p>
    #   @return [String]
    # @!attribute key_condition_expression
    #   <p>A condition expression that filters items by key values. The expression must test
    #               equality on a single partition key value and can optionally compare a sort key value.
    #               This parameter uses the same syntax as <code>KeyConditionExpression</code> in
    #                   <code>Query</code>. When you provide this parameter, <code>FilterExpression</code>
    #               can only reference non-key attributes. If you don't specify this parameter, all items
    #               are eligible for export.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ExpressionAttributeNames.html">Expression Attribute Names</a> in the Amazon DynamoDB Developer Guide.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression. For more information,
    #               see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ExpressionAttributeValues.html">Expression Attribute Values</a> in the Amazon DynamoDB Developer Guide.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class FilterSpecification < Struct.new(
      nil,
      :filter_expression,
      :projection_expression,
      :key_condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an item and related attribute values to retrieve in a
    #                 <code>TransactGetItem</code> object.</p>
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects that specifies the
    #               primary key of the item to retrieve.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute table_name
    #   <p>The name of the table from which to retrieve the specified item. You can also provide
    #               the Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes of the specified item to retrieve from
    #               the table. The attributes in the expression must be separated by commas. If no attribute
    #               names are specified, then all attributes of the specified item are returned. If any of
    #               the requested attributes are not found, they do not appear in the result.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in the ProjectionExpression
    #               parameter.</p>
    #   @return [Hash<String, String>]
    class Get < Struct.new(
      nil,
      :key,
      :table_name,
      :projection_expression,
      :expression_attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetItem</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table containing the requested item. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to retrieve.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #   @return [Boolean]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes are returned. If any of the
    #               requested attributes are not found, they do not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    class GetItemInput < Struct.new(
      nil,
      :table_name,
      :key,
      :attributes_to_get,
      :consistent_read,
      :return_consumed_capacity,
      :projection_expression,
      :expression_attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetItem</code> operation.</p>
    # @!attribute item
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, as specified by
    #                   <code>ProjectionExpression</code>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>GetItem</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#read-operation-consumption">Capacity unit consumption for read operations</a> in the <i>Amazon
    #                   DynamoDB Developer Guide</i>.</p>
    #   @return [Types::ConsumedCapacity]
    class GetItemOutput < Struct.new(
      nil,
      :item,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy is attached. The
    #               resources you can specify include tables and streams.</p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy document attached to the resource, which can be a table or
    #               stream, in JSON format.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>A unique string that represents the revision ID of the policy. If you're comparing revision IDs, make sure to always use string comparison logic.</p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index. You must use either <code>OnDemandThroughput</code> or
    #                   <code>ProvisionedThroughput</code> based on your table's capacity mode.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>The maximum number of read and write units for the specified global secondary index.
    #               If you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both. You must use either
    #                   <code>OnDemandThroughput</code> or <code>ProvisionedThroughput</code> based on your
    #               table's capacity mode.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput value (in read units per second and write units per
    #               second) for the specified secondary index. If you use this parameter, you must specify
    #                   <code>ReadUnitsPerSecond</code>, <code>WriteUnitsPerSecond</code>, or both.</p>
    #   @return [Types::WarmThroughput]
    class GlobalSecondaryIndex < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput,
      :on_demand_throughput,
      :warm_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings of a global secondary index for a global table
    #             that will be modified.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    class GlobalSecondaryIndexAutoScalingUpdate < Struct.new(
      nil,
      :index_name,
      :provisioned_write_capacity_auto_scaling_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    # @!attribute index_status
    #   <p>The current state of the global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The index is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The index is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backfilling
    #   <p>Indicates whether the index is currently backfilling. <i>Backfilling</i>
    #               is the process of reading items from the table and determining whether they can be added
    #               to the index. (Not all items will qualify: For example, a partition key cannot have any
    #               duplicate values.) If an item can be added to the index, DynamoDB will do so. After all
    #               items have been processed, the backfilling operation is complete and
    #                   <code>Backfilling</code> is false.</p>
    #            <p>You can delete an index that is being created during the <code>Backfilling</code>
    #               phase when <code>IndexStatus</code> is set to CREATING and <code>Backfilling</code> is
    #               true. You can't delete the index that is being created when <code>IndexStatus</code> is
    #               set to CREATING and <code>Backfilling</code> is false. </p>
    #            <note>
    #               <p>For indexes that were created during a <code>CreateTable</code> operation, the
    #                       <code>Backfilling</code> attribute does not appear in the
    #                       <code>DescribeTable</code> output.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughputDescription]
    # @!attribute index_size_bytes
    #   <p>The total size of the specified index, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified index. DynamoDB updates this value approximately
    #               every six hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
    #   @return [String]
    # @!attribute on_demand_throughput
    #   <p>The maximum number of read and write units for the specified global secondary index.
    #               If you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput value (in read units per second and write units per
    #               second) for the specified secondary index.</p>
    #   @return [Types::GlobalSecondaryIndexWarmThroughputDescription]
    class GlobalSecondaryIndexDescription < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      :index_status,
      :backfilling,
      :provisioned_throughput,
      :index_size_bytes,
      :item_count,
      :index_arn,
      :on_demand_throughput,
      :warm_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a global secondary index for the table when the backup
    #             was created.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index. </p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    class GlobalSecondaryIndexInfo < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      :provisioned_throughput,
      :on_demand_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new global secondary index to be added to an existing table.</p>
    #             </li>
    #             <li>
    #                <p>New provisioned throughput parameters for an existing global secondary
    #                     index.</p>
    #             </li>
    #             <li>
    #                <p>An existing global secondary index to be removed from an existing
    #                     table.</p>
    #             </li>
    #          </ul>
    # @!attribute update
    #   <p>The name of an existing global secondary index, along with new provisioned throughput
    #               settings to be applied to that index.</p>
    #   @return [Types::UpdateGlobalSecondaryIndexAction]
    # @!attribute create
    #   <p>The parameters required for creating a global secondary index on an existing
    #               table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributeDefinitions </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CreateGlobalSecondaryIndexAction]
    # @!attribute delete
    #   <p>The name of an existing global secondary index to be removed.</p>
    #   @return [Types::DeleteGlobalSecondaryIndexAction]
    class GlobalSecondaryIndexUpdate < Struct.new(
      nil,
      :update,
      :create,
      :delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the warm throughput value on a global secondary index.</p>
    # @!attribute read_units_per_second
    #   <p>Represents warm throughput read units per second value for a global secondary
    #               index.</p>
    #   @return [Integer]
    # @!attribute write_units_per_second
    #   <p>Represents warm throughput write units per second value for a global secondary
    #               index.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Represents the warm throughput status being created or updated on a global secondary
    #               index. The status can only be <code>UPDATING</code> or <code>ACTIVE</code>.</p>
    #   @return [String]
    class GlobalSecondaryIndexWarmThroughputDescription < Struct.new(
      nil,
      :read_units_per_second,
      :write_units_per_second,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a global table.</p>
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replication_group
    #   <p>The Regions where the global table has replicas.</p>
    #   @return [Array<Types::Replica>]
    class GlobalTable < Struct.new(
      nil,
      :global_table_name,
      :replication_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified global table already exists.</p>
    # @!attribute message
    #   @return [String]
    class GlobalTableAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the global table.</p>
    # @!attribute replication_group
    #   <p>The Regions where the global table has replicas.</p>
    #   @return [Array<Types::ReplicaDescription>]
    # @!attribute global_table_arn
    #   <p>The unique identifier of the global table.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation time of the global table.</p>
    #   @return [Time]
    # @!attribute global_table_status
    #   <p>The current state of the global table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The global table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The global table is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The global table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The global table is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    class GlobalTableDescription < Struct.new(
      nil,
      :replication_group,
      :global_table_arn,
      :creation_date_time,
      :global_table_status,
      :global_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings of a global secondary index for a global table that will be
    #             modified.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    #   @return [Integer]
    # @!attribute provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global secondary index's write capacity
    #               units.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    class GlobalTableGlobalSecondaryIndexSettingsUpdate < Struct.new(
      nil,
      :index_name,
      :provisioned_write_capacity_units,
      :provisioned_write_capacity_auto_scaling_settings_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified global table does not exist.</p>
    # @!attribute message
    #   @return [String]
    class GlobalTableNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a witness Region in a MRSC global table. </p>
    # @!attribute region_name
    #   <p>The name of the Amazon Web Services Region that serves as a witness for the MRSC global
    #               table.</p>
    #   @return [String]
    # @!attribute witness_status
    #   <p>The current status of the witness Region in the MRSC global table.</p>
    #   @return [String]
    class GlobalTableWitnessDescription < Struct.new(
      nil,
      :region_name,
      :witness_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new witness to be added to a new global table.</p>
    #             </li>
    #             <li>
    #                <p>An existing witness to be removed from an existing global table.</p>
    #             </li>
    #          </ul>
    #          <p>You can configure one witness per MRSC global table.</p>
    # @!attribute create
    #   <p>Specifies a witness Region to be added to a new MRSC global table. The witness must be
    #               added when creating the MRSC global table.</p>
    #   @return [Types::CreateGlobalTableWitnessGroupMemberAction]
    # @!attribute delete
    #   <p>Specifies a witness Region to be removed from an existing global table. Must be done
    #               in conjunction with removing a replica. The deletion of both a witness and replica
    #               converts the remaining replica to a single-Region DynamoDB table.</p>
    #   @return [Types::DeleteGlobalTableWitnessGroupMemberAction]
    class GlobalTableWitnessGroupUpdate < Struct.new(
      nil,
      :create,
      :delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DynamoDB rejected the request because you retried a request with a
    #             different payload but with an idempotent token that was already used.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> There was a conflict when importing from the specified S3 source. This can occur when
    #             the current import conflicts with a previous import request that had the same client
    #             token. </p>
    # @!attribute message
    #   @return [String]
    class ImportConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified import was not found. </p>
    # @!attribute message
    #   @return [String]
    class ImportNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summary information about the source file for the import.
    #             </p>
    # @!attribute import_arn
    #   <p> The Amazon Resource Number (ARN) corresponding to the import request. </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import operation. </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p> The Amazon Resource Number (ARN) of the table being imported into. </p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> The path and S3 bucket of the source file that is being imported. This includes the
    #               S3Bucket (required), S3KeyPrefix (optional) and S3BucketOwner (optional if the bucket is
    #               owned by the requester). </p>
    #   @return [Types::S3BucketSource]
    # @!attribute cloud_watch_log_group_arn
    #   <p> The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with this
    #               import task. </p>
    #   @return [String]
    # @!attribute input_format
    #   <p> The format of the source data. Valid values are <code>CSV</code>,
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The time at which this import task began. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time at which this import task ended. </p>
    #   @return [Time]
    class ImportSummary < Struct.new(
      nil,
      :import_arn,
      :import_status,
      :table_arn,
      :s3_bucket_source,
      :cloud_watch_log_group_arn,
      :input_format,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the properties of the table being imported into.
    #             </p>
    # @!attribute import_arn
    #   <p> The Amazon Resource Number (ARN) corresponding to the import request.
    #               </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p> The Amazon Resource Number (ARN) of the table being imported into.
    #               </p>
    #   @return [String]
    # @!attribute table_id
    #   <p> The table id corresponding to the table created by import table process.
    #               </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> The client token that was provided for the import task. Reusing the client token on
    #               retry makes a call to <code>ImportTable</code> idempotent. </p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> Values for the S3 bucket the source file is imported from. Includes bucket name
    #               (required), key prefix (optional) and bucket account owner ID (optional). </p>
    #   @return [Types::S3BucketSource]
    # @!attribute error_count
    #   <p> The number of errors occurred on importing the source file into the target table.
    #           </p>
    #   @return [Integer]
    # @!attribute cloud_watch_log_group_arn
    #   <p> The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with the
    #               target table. </p>
    #   @return [String]
    # @!attribute input_format
    #   <p> The format of the source data going into the target table.
    #               </p>
    #   @return [String]
    # @!attribute input_format_options
    #   <p> The format options for the data that was imported into the target table. There is one
    #               value, CsvOption. </p>
    #   @return [Types::InputFormatOptions]
    # @!attribute input_compression_type
    #   <p> The compression options for the data that has been imported into the target table.
    #               The values are NONE, GZIP, or ZSTD. </p>
    #   @return [String]
    # @!attribute table_creation_parameters
    #   <p> The parameters for the new table that is being imported into. </p>
    #   @return [Types::TableCreationParameters]
    # @!attribute start_time
    #   <p> The time when this import task started. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time at which the creation of the table associated with this import task
    #               completed. </p>
    #   @return [Time]
    # @!attribute processed_size_bytes
    #   <p> The total size of data processed from the source file, in Bytes. </p>
    #   @return [Integer]
    # @!attribute processed_item_count
    #   <p> The total number of items processed from the source file. </p>
    #   @return [Integer]
    # @!attribute imported_item_count
    #   <p> The number of items successfully imported into the new table. </p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p> The error code corresponding to the failure that the import job ran into during
    #               execution. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> The error message corresponding to the failure that the import job ran into during
    #               execution. </p>
    #   @return [String]
    class ImportTableDescription < Struct.new(
      nil,
      :import_arn,
      :import_status,
      :table_arn,
      :table_id,
      :client_token,
      :s3_bucket_source,
      :error_count,
      :cloud_watch_log_group_arn,
      :input_format,
      :input_format_options,
      :input_compression_type,
      :table_creation_parameters,
      :start_time,
      :end_time,
      :processed_size_bytes,
      :processed_item_count,
      :imported_item_count,
      :failure_code,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:error_count] = 0 unless options.key?(:error_count)
        options[:processed_item_count] = 0 unless options.key?(:processed_item_count)
        options[:imported_item_count] = 0 unless options.key?(:imported_item_count)
        super
      end
    end

    # @!attribute client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to <code>ImportTableInput</code>
    #               idempotent, meaning that multiple identical calls have the same effect as one single
    #               call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> The S3 bucket that provides the source for the import. </p>
    #   @return [Types::S3BucketSource]
    # @!attribute input_format
    #   <p> The format of the source data. Valid values for <code>ImportFormat</code> are
    #                   <code>CSV</code>, <code>DYNAMODB_JSON</code> or <code>ION</code>. </p>
    #   @return [String]
    # @!attribute input_format_options
    #   <p> Additional properties that specify how the input is formatted, </p>
    #   @return [Types::InputFormatOptions]
    # @!attribute input_compression_type
    #   <p> Type of compression to be used on the input coming from the imported table. </p>
    #   @return [String]
    # @!attribute table_creation_parameters
    #   <p>Parameters for the table to import the data into. </p>
    #   @return [Types::TableCreationParameters]
    class ImportTableInput < Struct.new(
      nil,
      :client_token,
      :s3_bucket_source,
      :input_format,
      :input_format_options,
      :input_compression_type,
      :table_creation_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_table_description
    #   <p> Represents the properties of the table created for the import, and parameters of the
    #               import. The import parameters include import status, how many items were processed, and
    #               how many errors were encountered. </p>
    #   @return [Types::ImportTableDescription]
    class ImportTableOutput < Struct.new(
      nil,
      :import_table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional object containing the parameters specific to an incremental export.</p>
    # @!attribute export_from_time
    #   <p>Time in the past which provides the inclusive start range for the export table's data,
    #               counted in seconds from the start of the Unix epoch. The incremental export will reflect
    #               the table's state including and after this point in time.</p>
    #   @return [Time]
    # @!attribute export_to_time
    #   <p>Time in the past which provides the exclusive end range for the export table's data,
    #               counted in seconds from the start of the Unix epoch. The incremental export will reflect
    #               the table's state just prior to this point in time. If this is not provided, the latest
    #               time with data available will be used.</p>
    #   @return [Time]
    # @!attribute export_view_type
    #   <p>The view type that was chosen for the export. Valid values are
    #                   <code>NEW_AND_OLD_IMAGES</code> and <code>NEW_IMAGES</code>. The default value is
    #                   <code>NEW_AND_OLD_IMAGES</code>.</p>
    #            <p>
    #               <code>NEW_AND_OLD_IMAGES</code> exports both the new and old images of each changed
    #               item, while <code>NEW_IMAGES</code> exports only the new (latest) image. The view type
    #               you choose determines the structure of each item in the output for
    #                   <code>insert</code>, <code>update</code>, and <code>delete</code> operations. For
    #               details and examples of how each view type shapes the export output, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html">DynamoDB table
    #                   export output format</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    class IncrementalExportSpecification < Struct.new(
      nil,
      :export_from_time,
      :export_to_time,
      :export_view_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent index.</p>
    # @!attribute message
    #   @return [String]
    class IndexNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The format options for the data that was imported into the target table. There is one
    #             value, CsvOption.</p>
    # @!attribute csv
    #   <p> The options for imported source files in CSV format. The values are Delimiter and
    #               HeaderList. </p>
    #   @return [Types::CsvOptions]
    class InputFormatOptions < Struct.new(
      nil,
      :csv,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error occurred on the server side.</p>
    # @!attribute message
    #   <p>The server encountered an internal error trying to fulfill the request.</p>
    #   @return [String]
    class InternalServerError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   @return [String]
    class InvalidEndpointException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified <code>ExportTime</code> is outside of the point in time recovery
    #             window.</p>
    # @!attribute message
    #   @return [String]
    class InvalidExportTimeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid restore time was specified. RestoreDateTime must be between
    #             EarliestRestorableDateTime and LatestRestorableDateTime.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRestoreTimeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about item collections, if any, that were affected by the operation.
    #                 <code>ItemCollectionMetrics</code> is only returned if the request asked for it. If
    #             the table does not have any local secondary indexes, this information is not returned in
    #             the response.</p>
    # @!attribute item_collection_key
    #   <p>The partition key value of the item collection. This value is the same as the
    #               partition key value of the item.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute size_estimate_range_gb
    #   <p>An estimate of item collection size, in gigabytes. This value is a two-element array
    #               containing a lower bound and an upper bound for the estimate. The estimate includes the
    #               size of all the items in the table, plus the size of all attributes projected into all
    #               of the local secondary indexes on that table. Use this estimate to measure whether a
    #               local secondary index is approaching its size limit.</p>
    #            <p>The estimate is subject to change over time; therefore, do not rely on the precision
    #               or accuracy of the estimate.</p>
    #   @return [Array<Float>]
    class ItemCollectionMetrics < Struct.new(
      nil,
      :item_collection_key,
      :size_estimate_range_gb,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An item collection is too large. This exception is only returned for tables that
    #             have one or more local secondary indexes.</p>
    # @!attribute message
    #   <p>The total size of an item collection has exceeded the maximum limit of 10
    #               gigabytes.</p>
    #   @return [String]
    class ItemCollectionSizeLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for the requested item.</p>
    # @!attribute item
    #   <p>Map of attribute data consisting of the data type and attribute value.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class ItemResponse < Struct.new(
      nil,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents <i>a single element</i> of a key schema. A key schema
    #             specifies the attributes that make up the primary key of a table, or the key attributes
    #             of an index.</p>
    #          <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key.
    #             For example, a simple primary key would be represented by one
    #                 <code>KeySchemaElement</code> (for the partition key). A composite primary key would
    #             require one <code>KeySchemaElement</code> for the partition key, and another
    #                 <code>KeySchemaElement</code> for the sort key.</p>
    #          <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested
    #             attribute). The data type must be one of String, Number, or Binary. The attribute cannot
    #             be nested within a List or a Map.</p>
    # @!attribute attribute_name
    #   <p>The name of a key attribute.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>The role that this key attribute will assume:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [String]
    class KeySchemaElement < Struct.new(
      nil,
      :attribute_name,
      :key_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a set of primary keys and, for each key, the attributes to retrieve from
    #             the table.</p>
    #          <p>For each primary key, you must provide <i>all</i> of the key attributes.
    #             For example, with a simple primary key, you only need to provide the partition key. For
    #             a composite primary key, you must provide <i>both</i> the partition key
    #             and the sort key.</p>
    # @!attribute keys
    #   <p>The primary key attribute values that define the items and the attributes associated
    #               with the items.</p>
    #   @return [Array<Hash<String, Types::AttributeValue>>]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy
    #                   Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    #   @return [Boolean]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the <code>ProjectionExpression</code> must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    class KeysAndAttributes < Struct.new(
      nil,
      :keys,
      :attributes_to_get,
      :consistent_read,
      :projection_expression,
      :expression_attribute_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Kinesis data stream destination.</p>
    # @!attribute stream_arn
    #   <p>The ARN for a specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of replication.</p>
    #   @return [String]
    # @!attribute destination_status_description
    #   <p>The human-readable string that corresponds to the replica status.</p>
    #   @return [String]
    # @!attribute approximate_creation_date_time_precision
    #   <p>The precision of the Kinesis data stream timestamp. The values are either
    #                   <code>MILLISECOND</code> or <code>MICROSECOND</code>.</p>
    #   @return [String]
    class KinesisDataStreamDestination < Struct.new(
      nil,
      :stream_arn,
      :destination_status,
      :destination_status_description,
      :approximate_creation_date_time_precision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is no limit to the number of daily on-demand backups that can be taken. </p>
    #          <p>For most purposes, up to 500 simultaneous table operations are allowed per account.
    #             These operations include <code>CreateTable</code>, <code>UpdateTable</code>,
    #                 <code>DeleteTable</code>,<code>UpdateTimeToLive</code>,
    #                 <code>RestoreTableFromBackup</code>, and <code>RestoreTableToPointInTime</code>. </p>
    #          <p>When you are creating a table with one or more secondary indexes, you can have up
    #             to 250 such requests running at a time. However, if the table or index specifications
    #             are complex, then DynamoDB might temporarily reduce the number of concurrent
    #             operations.</p>
    #          <p>When importing into DynamoDB, up to 50 simultaneous import table operations are
    #             allowed per account.</p>
    #          <p>There is a soft account quota of 2,500 tables.</p>
    #          <p>GetRecords was called with a value of more than 1000 for the limit request
    #             parameter.</p>
    #          <p>More than 2 processes are reading from the same streams shard at the same time.
    #             Exceeding this limit may result in request throttling.</p>
    # @!attribute message
    #   <p>Too many operations for a given subscriber.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>Lists the backups from the table specified in <code>TableName</code>. You can also
    #               provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of backups to return at once.</p>
    #   @return [Integer]
    # @!attribute time_range_lower_bound
    #   <p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is
    #               inclusive.</p>
    #   @return [Time]
    # @!attribute time_range_upper_bound
    #   <p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is
    #               exclusive. </p>
    #   @return [Time]
    # @!attribute exclusive_start_backup_arn
    #   <p>
    #               <code>LastEvaluatedBackupArn</code> is the Amazon Resource Name (ARN) of the backup last
    #               evaluated when the current page of results was returned, inclusive of the current page
    #               of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a
    #               new <code>ListBackups</code> operation in order to fetch the next page of results.
    #           </p>
    #   @return [String]
    # @!attribute backup_type
    #   <p>The backups from the table specified by <code>BackupType</code> are listed.</p>
    #            <p>Where <code>BackupType</code> can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - On-demand backup created by you. (The default setting if no
    #                       other backup types are specified.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListBackupsInput < Struct.new(
      nil,
      :table_name,
      :limit,
      :time_range_lower_bound,
      :time_range_upper_bound,
      :exclusive_start_backup_arn,
      :backup_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_summaries
    #   <p>List of <code>BackupSummary</code> objects.</p>
    #   @return [Array<Types::BackupSummary>]
    # @!attribute last_evaluated_backup_arn
    #   <p> The ARN of the backup last evaluated when the current page of results was returned,
    #               inclusive of the current page of results. This value may be specified as the
    #                   <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in
    #               order to fetch the next page of results. </p>
    #            <p> If <code>LastEvaluatedBackupArn</code> is empty, then the last page of results has
    #               been processed and there are no more results to be retrieved. </p>
    #            <p> If <code>LastEvaluatedBackupArn</code> is not empty, this may or may not indicate
    #               that there is more data to be returned. All results are guaranteed to have been returned
    #               if and only if no value for <code>LastEvaluatedBackupArn</code> is returned. </p>
    #   @return [String]
    class ListBackupsOutput < Struct.new(
      nil,
      :backup_summaries,
      :last_evaluated_backup_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to for the desired page, if there is one.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListContributorInsightsInput < Struct.new(
      nil,
      :table_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contributor_insights_summaries
    #   <p>A list of ContributorInsightsSummary.</p>
    #   @return [Array<Types::ContributorInsightsSummary>]
    # @!attribute next_token
    #   <p>A token to go to the next page if there is one.</p>
    #   @return [String]
    class ListContributorInsightsOutput < Struct.new(
      nil,
      :contributor_insights_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the exported table.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListExports</code>. When provided in this manner, the API fetches the next
    #               page of results.</p>
    #   @return [String]
    class ListExportsInput < Struct.new(
      nil,
      :table_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_summaries
    #   <p>A list of <code>ExportSummary</code> objects.</p>
    #   @return [Array<Types::ExportSummary>]
    # @!attribute next_token
    #   <p>If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call <code>ListExports</code> again, with <code>NextToken</code> set to this
    #               value.</p>
    #   @return [String]
    class ListExportsOutput < Struct.new(
      nil,
      :export_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exclusive_start_global_table_name
    #   <p>The first global table name that this operation will evaluate.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of table names to return, if the parameter is not specified
    #               DynamoDB defaults to 100.</p>
    #            <p>If the number of global tables DynamoDB finds reaches this limit, it stops the
    #               operation and returns the table names collected up to that point, with a table name in
    #               the <code>LastEvaluatedGlobalTableName</code> to apply in a subsequent operation to the
    #                   <code>ExclusiveStartGlobalTableName</code> parameter.</p>
    #   @return [Integer]
    # @!attribute region_name
    #   <p>Lists the global tables in a specific Region.</p>
    #   @return [String]
    class ListGlobalTablesInput < Struct.new(
      nil,
      :exclusive_start_global_table_name,
      :limit,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_tables
    #   <p>List of global table names.</p>
    #   @return [Array<Types::GlobalTable>]
    # @!attribute last_evaluated_global_table_name
    #   <p>Last evaluated global table name.</p>
    #   @return [String]
    class ListGlobalTablesOutput < Struct.new(
      nil,
      :global_tables,
      :last_evaluated_global_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table that was imported to.
    #           </p>
    #   @return [String]
    # @!attribute page_size
    #   <p> The number of <code>ImportSummary </code>objects returned in a single page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListImports</code>. When provided in this manner, the API fetches the next
    #               page of results. </p>
    #   @return [String]
    class ListImportsInput < Struct.new(
      nil,
      :table_arn,
      :page_size,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_summary_list
    #   <p> A list of <code>ImportSummary</code> objects. </p>
    #   @return [Array<Types::ImportSummary>]
    # @!attribute next_token
    #   <p> If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call <code>ListImports</code> again, with <code>NextToken</code> set to this
    #               value. </p>
    #   @return [String]
    class ListImportsOutput < Struct.new(
      nil,
      :import_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListTables</code> operation.</p>
    # @!attribute exclusive_start_table_name
    #   <p>The first table name that this operation will evaluate. Use the value that was
    #               returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you
    #               can obtain the next page of results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>A maximum number of table names to return. If this parameter is not specified, the
    #               limit is 100.</p>
    #   @return [Integer]
    class ListTablesInput < Struct.new(
      nil,
      :exclusive_start_table_name,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListTables</code> operation.</p>
    # @!attribute table_names
    #   <p>The names of the tables associated with the current account at the current endpoint.
    #               The maximum size of this array is 100.</p>
    #            <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this
    #               value as the <code>ExclusiveStartTableName</code> parameter in a subsequent
    #                   <code>ListTables</code> request and obtain the next page of results.</p>
    #   @return [Array<String>]
    # @!attribute last_evaluated_table_name
    #   <p>The name of the last table in the current page of results. Use this value as the
    #                   <code>ExclusiveStartTableName</code> in a new request to obtain the next page of
    #               results, until all the table names are returned.</p>
    #            <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response,
    #               this means that there are no more table names to be retrieved.</p>
    #   @return [String]
    class ListTablesOutput < Struct.new(
      nil,
      :table_names,
      :last_evaluated_table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource
    #               Name (ARN).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to ListTagOfResource. When provided in this manner, this API fetches the next page
    #               of results.</p>
    #   @return [String]
    class ListTagsOfResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags currently associated with the Amazon DynamoDB resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call ListTagsOfResource again, with NextToken set to this value.</p>
    #   @return [String]
    class ListTagsOfResourceOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a local secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the local secondary index. The name must be unique among all other indexes
    #               on this table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for the local secondary index, consisting of one or more pairs
    #               of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the local
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    class LocalSecondaryIndex < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a local secondary index.</p>
    # @!attribute index_name
    #   <p>Represents the name of the local secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for the local secondary index, consisting of one or more pairs
    #               of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    # @!attribute index_size_bytes
    #   <p>The total size of the specified index, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified index. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
    #   @return [String]
    class LocalSecondaryIndexDescription < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      :index_size_bytes,
      :item_count,
      :index_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a local secondary index for the table when the backup was
    #             created.</p>
    # @!attribute index_name
    #   <p>Represents the name of the local secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a local secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Types::Projection]
    class LocalSecondaryIndexInfo < Struct.new(
      nil,
      :index_name,
      :key_schema,
      :projection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #             you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                 <code>MaxWriteRequestUnits</code>, or both.</p>
    # @!attribute max_read_request_units
    #   <p>Maximum number of read request units for the specified table.</p>
    #            <p>To specify a maximum <code>OnDemandThroughput</code> on your table, set the value of
    #                   <code>MaxReadRequestUnits</code> as greater than or equal to 1. To remove the
    #               maximum <code>OnDemandThroughput</code> that is currently set on your table, set the
    #               value of <code>MaxReadRequestUnits</code> to -1.</p>
    #   @return [Integer]
    # @!attribute max_write_request_units
    #   <p>Maximum number of write request units for the specified table.</p>
    #            <p>To specify a maximum <code>OnDemandThroughput</code> on your table, set the value of
    #                   <code>MaxWriteRequestUnits</code> as greater than or equal to 1. To remove the
    #               maximum <code>OnDemandThroughput</code> that is currently set on your table, set the
    #               value of <code>MaxWriteRequestUnits</code> to -1.</p>
    #   @return [Integer]
    class OnDemandThroughput < Struct.new(
      nil,
      :max_read_request_units,
      :max_write_request_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Overrides the on-demand throughput settings for this replica table. If you don't
    #             specify a value for this parameter, it uses the source table's on-demand throughput
    #             settings.</p>
    # @!attribute max_read_request_units
    #   <p>Maximum number of read request units for the specified replica table.</p>
    #   @return [Integer]
    class OnDemandThroughputOverride < Struct.new(
      nil,
      :max_read_request_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents a PartiQL statement that uses parameters. </p>
    # @!attribute statement
    #   <p> A PartiQL statement that uses parameters. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p> The parameter values. </p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a PartiQL
    #                   <code>ParameterizedStatement</code> operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class ParameterizedStatement < Struct.new(
      nil,
      :statement,
      :parameters,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the point in time settings applied to the table.</p>
    # @!attribute point_in_time_recovery_status
    #   <p>The current state of point in time recovery:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Point in time recovery is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - Point in time recovery is disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute recovery_period_in_days
    #   <p>The number of preceding days for which continuous backups are taken and maintained.
    #               Your table data is only recoverable to any point-in-time from within the configured
    #               recovery period. This parameter is optional.</p>
    #   @return [Integer]
    # @!attribute earliest_restorable_date_time
    #   <p>Specifies the earliest point in time you can restore your table to. You can restore
    #               your table to any point in time during the last 35 days. </p>
    #   @return [Time]
    # @!attribute latest_restorable_date_time
    #   <p>
    #               <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #           </p>
    #   @return [Time]
    class PointInTimeRecoveryDescription < Struct.new(
      nil,
      :point_in_time_recovery_status,
      :recovery_period_in_days,
      :earliest_restorable_date_time,
      :latest_restorable_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings used to enable point in time recovery.</p>
    # @!attribute point_in_time_recovery_enabled
    #   <p>Indicates whether point in time recovery is enabled (true) or disabled (false) on the
    #               table.</p>
    #   @return [Boolean]
    # @!attribute recovery_period_in_days
    #   <p>The number of preceding days for which continuous backups are taken and maintained.
    #               Your table data is only recoverable to any point-in-time from within the configured
    #               recovery period. This parameter is optional. If no value is provided, the value will
    #               default to 35.</p>
    #   @return [Integer]
    class PointInTimeRecoverySpecification < Struct.new(
      nil,
      :point_in_time_recovery_enabled,
      :recovery_period_in_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Point in time recovery has not yet been enabled for this source table.</p>
    # @!attribute message
    #   @return [String]
    class PointInTimeRecoveryUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent resource-based policy.</p>
    #          <p>If you specified an <code>ExpectedRevisionId</code>, it's possible that a policy is
    #             present for the resource but its revision ID didn't match the expected value.</p>
    # @!attribute message
    #   @return [String]
    class PolicyNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents attributes that are copied (projected) from the table into an index. These
    #             are in addition to the primary key attributes and index key attributes, which are
    #             automatically projected.</p>
    # @!attribute projection_type
    #   <p>The set of attributes that are projected into the index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCLUDE</code> - In addition to the attributes described in
    #                           <code>KEYS_ONLY</code>, the secondary index will include other non-key
    #                       attributes that you specify.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - All of the table attributes are projected into the
    #                       index.</p>
    #               </li>
    #            </ul>
    #            <p>When using the DynamoDB console, <code>ALL</code> is selected by default.</p>
    #   @return [String]
    # @!attribute non_key_attributes
    #   <p>Represents the non-key attribute names which will be projected into the index.</p>
    #            <p>For global and local secondary indexes, the total count of
    #                   <code>NonKeyAttributes</code> summed across all of the secondary indexes, must not
    #               exceed 100. If you project the same attribute into two different indexes, this counts as
    #               two distinct attributes when determining the total. This limit only applies when you
    #               specify the ProjectionType of <code>INCLUDE</code>. You still can specify the
    #               ProjectionType of <code>ALL</code> to project all attributes from the source table, even
    #               if the table has more than 100 attributes.</p>
    #   @return [Array<String>]
    class Projection < Struct.new(
      nil,
      :projection_type,
      :non_key_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the provisioned throughput settings for the specified global secondary
    #             index. You must use <code>ProvisionedThroughput</code> or
    #                 <code>OnDemandThroughput</code> based on your table’s capacity mode.</p>
    #          <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                 Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!attribute read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html">Specifying
    #                   Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #            <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
    #               0.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html">Specifying
    #                   Read and Write Requirements</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #            <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
    #               0.</p>
    #   @return [Integer]
    class ProvisionedThroughput < Struct.new(
      nil,
      :read_capacity_units,
      :write_capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the provisioned throughput settings for the table, consisting of read and
    #             write capacity units, along with data about increases and decreases.</p>
    # @!attribute last_increase_date_time
    #   <p>The date and time of the last provisioned throughput increase for this table.</p>
    #   @return [Time]
    # @!attribute last_decrease_date_time
    #   <p>The date and time of the last provisioned throughput decrease for this table.</p>
    #   @return [Time]
    # @!attribute number_of_decreases_today
    #   <p>The number of provisioned throughput decreases for this table during this UTC calendar
    #               day. For current maximums on provisioned throughput decreases, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. Eventually consistent reads require less
    #               effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code>
    #               per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per
    #               second.</p>
    #            <p>For a table or global secondary index that uses on-demand capacity mode
    #                   (<code>PAY_PER_REQUEST</code>), this value is <code>0</code>, because on-demand mode
    #               does not use provisioned throughput.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>.</p>
    #            <p>For a table or global secondary index that uses on-demand capacity mode
    #                   (<code>PAY_PER_REQUEST</code>), this value is <code>0</code>, because on-demand mode
    #               does not use provisioned throughput.</p>
    #   @return [Integer]
    class ProvisionedThroughputDescription < Struct.new(
      nil,
      :last_increase_date_time,
      :last_decrease_date_time,
      :number_of_decreases_today,
      :read_capacity_units,
      :write_capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. For detailed information about
    #             why the request was throttled and the ARN of the impacted resource, find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception. The Amazon Web Services
    #             SDKs for DynamoDB automatically retry requests that receive this exception.
    #             Your request is eventually successful, unless your retry queue is too large to finish.
    #             Reduce the frequency of requests and use exponential backoff. For more information, go
    #             to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @!attribute message
    #   <p>You exceeded your maximum allowed provisioned throughput.</p>
    #   @return [String]
    # @!attribute throttling_reasons
    #   <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
    #        provide detailed diagnostic information about why the request was throttled.
    #       </p>
    #   @return [Array<Types::ThrottlingReason>]
    class ProvisionedThroughputExceededException < Struct.new(
      nil,
      :message,
      :throttling_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Replica-specific provisioned throughput settings. If not specified, uses the source
    #             table's provisioned throughput settings.</p>
    # @!attribute read_capacity_units
    #   <p>Replica-specific read capacity units. If not specified, uses the source table's read
    #               capacity settings.</p>
    #   @return [Integer]
    class ProvisionedThroughputOverride < Struct.new(
      nil,
      :read_capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform a <code>PutItem</code> operation.</p>
    # @!attribute item
    #   <p>A map of attribute name to attribute values, representing the primary key of the item
    #               to be written by <code>PutItem</code>. All of the table's primary key attributes must be
    #               specified, and their data types must match those of the table's key schema. If any
    #               attributes are present in the item that are part of an index key schema for the table,
    #               their types must match the index key schema. </p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table in which to write the item. You can also provide the Amazon Resource Name (ARN) of
    #               the table in this parameter.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Put</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   @return [String]
    class Put < Struct.new(
      nil,
      :item,
      :table_name,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutItem</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table to contain the item. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    #   @return [String]
    # @!attribute item
    #   <p>A map of attribute name/value pairs, one for each attribute. Only the primary key
    #               attributes are required; you can optionally provide other attribute name-value pairs for
    #               the item.</p>
    #            <p>You must provide all of the attributes for the primary key. For example, with a simple
    #               primary key, you only need to provide a value for the partition key. For a composite
    #               primary key, you must provide both values for both the partition key and the sort
    #               key.</p>
    #            <p>If you specify any attributes that are part of an index key, then the data types for
    #               those attributes must match those of the schema in the table's attribute
    #               definition.</p>
    #            <p>If the table has vector indexes, the following validations apply to write
    #               operations. A violation of any of these constraints results in a
    #               <code>ValidationException</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The vector attribute must be a list of numbers with dimensions matching the
    #                       index configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Vector values must fit in 32-bit IEEE-754 floating point format
    #                       (f32).</p>
    #               </li>
    #               <li>
    #                  <p>Partition key and inline filter attributes defined in the search schema
    #                       must have data types matching the index schema definition.</p>
    #               </li>
    #            </ul>
    #            <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #               and Binary must have a length greater than zero if the attribute is used as a key
    #               attribute for a table or index.</p>
    #            <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code>
    #               object.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::ExpectedAttributeValue>]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were updated with the <code>PutItem</code> request. For
    #               <code>PutItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value
    #                       pair, then the content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>The values returned are strongly consistent.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>PutItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   @return [String]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>PutItem</code>
    #               operation to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information on condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>PutItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class PutItemInput < Struct.new(
      nil,
      :table_name,
      :item,
      :expected,
      :return_values,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :conditional_operator,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PutItem</code> operation.</p>
    # @!attribute attributes
    #   <p>The attribute values as they appeared before the <code>PutItem</code> operation, but
    #               only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request.
    #               Each element consists of an attribute name and an attribute value.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>PutItem</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#write-operation-consumption">Capacity unity consumption for write operations</a> in the <i>Amazon
    #                   DynamoDB Developer Guide</i>.</p>
    #            <p>If the table has vector indexes, the response includes a
    #               <code>VectorIndexes</code> field with <code>VectorWriteRequestBytes</code> consumed
    #               for each affected vector index.</p>
    #   @return [Types::ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned
    #               if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table
    #               does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ItemCollectionMetrics]
    class PutItemOutput < Struct.new(
      nil,
      :attributes,
      :consumed_capacity,
      :item_collection_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform a <code>PutItem</code> operation on an item.</p>
    # @!attribute item
    #   <p>A map of attribute name to attribute values, representing the primary key of an item
    #               to be processed by <code>PutItem</code>. All of the table's primary key attributes must
    #               be specified, and their data types must match those of the table's key schema. If any
    #               attributes are present in the item that are part of an index key schema for the table,
    #               their types must match the index key schema.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class PutRequest < Struct.new(
      nil,
      :item,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached.
    #               The resources you can specify include tables and streams.</p>
    #            <p>You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the <code>Resource</code> field of a given <code>Statement</code> in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple <code>Statement</code> fields in your policy document.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>An Amazon Web Services resource-based policy document in JSON format.</p>
    #            <ul>
    #               <li>
    #                  <p>The maximum size supported for a resource-based policy document is 20 KB.
    #                           DynamoDB counts whitespaces when calculating the size of a policy
    #                       against this limit.</p>
    #               </li>
    #               <li>
    #                  <p>Within a resource-based policy, if the action for a DynamoDB
    #                       service-linked role (SLR) to replicate data for a global table is denied, adding
    #                       or deleting a replica will fail with an error.</p>
    #               </li>
    #            </ul>
    #            <p>For a full list of all considerations that apply while attaching a resource-based
    #               policy, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html">Resource-based
    #                   policy considerations</a>.</p>
    #   @return [String]
    # @!attribute expected_revision_id
    #   <p>A string value that you can use to conditionally update your policy. You can provide
    #               the revision ID of your existing policy to make mutating requests against that
    #               policy.</p>
    #            <note>
    #               <p>When you provide an expected revision ID, if the revision ID of the existing
    #                   policy on the resource doesn't match or if there's no policy attached to the
    #                   resource, your request will be rejected with a
    #                   <code>PolicyNotFoundException</code>.</p>
    #            </note>
    #            <p>To conditionally attach a policy when no policy exists for the resource, specify
    #                   <code>NO_POLICY</code> for the revision ID.</p>
    #   @return [String]
    # @!attribute confirm_remove_self_resource_access
    #   <p>Set this parameter to <code>true</code> to confirm that you want to remove your
    #               permissions to change the policy of this resource in the future.</p>
    #   @return [Boolean]
    class PutResourcePolicyInput < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :expected_revision_id,
      :confirm_remove_self_resource_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_id
    #   <p>A unique string that represents the revision ID of the policy. If you're comparing revision IDs, make sure to always use string comparison logic.</p>
    #   @return [String]
    class PutResourcePolicyOutput < Struct.new(
      nil,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>Query</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table containing the requested items. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of an index to query. This index can be any local secondary index or global
    #               secondary index on the table. Note that if you use the <code>IndexName</code> parameter,
    #               you must also provide <code>TableName.</code>
    #            </p>
    #   @return [String]
    # @!attribute select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read
    #                       capacity units as getting the items, and is subject to the same item size
    #                       calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation will read only the index and not
    #                       the table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Integer]
    # @!attribute consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #            <p>Strongly consistent reads are not supported on global secondary indexes. If you query
    #               a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you
    #               will receive a <code>ValidationException</code>.</p>
    #   @return [Boolean]
    # @!attribute key_conditions
    #   <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::Condition>]
    # @!attribute query_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::Condition>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute scan_index_forward
    #   <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal
    #               is performed in ascending order; if <code>false</code>, the traversal is performed in
    #               descending order. </p>
    #            <p>Items with the same partition key value are stored in sorted order by sort key. If the
    #               sort key data type is Number, the results are stored in numeric order. For type String,
    #               the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each
    #               byte of the binary data as unsigned.</p>
    #            <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in
    #               the order in which they are stored (by sort key value). This is the default behavior. If
    #                   <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in
    #               reverse order by sort key value, and then returns the results to the client.</p>
    #   @return [Boolean]
    # @!attribute exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number, or Binary. No
    #               set data types are allowed.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Query</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a
    #               filter expression based on a partition key or a sort key.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.FilterExpression.html">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute key_condition_expression
    #   <p>The condition that specifies the key values for items to be retrieved by the
    #                   <code>Query</code> action.</p>
    #            <p>The condition must perform an equality test on a single partition key value.</p>
    #            <p>The condition can optionally perform one of several comparison tests on a single sort
    #               key value. This allows <code>Query</code> to retrieve one item with a given partition
    #               key value and sort key value, or several items that have the same partition key value
    #               but different sort key values.</p>
    #            <p>The partition key equality test is required, and must be specified in the following
    #               format:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <i>=</i>
    #               <code>:partitionkeyval</code>
    #            </p>
    #            <p>If you also want to provide a condition for the sort key, it must be combined using
    #                   <code>AND</code> with the condition for the sort key. Following is an example, using
    #               the <b>=</b> comparison operator for the sort key:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <code>=</code>
    #               <code>:partitionkeyval</code>
    #               <code>AND</code>
    #               <code>sortKeyName</code>
    #               <code>=</code>
    #               <code>:sortkeyval</code>
    #            </p>
    #            <p>Valid comparisons for the sort key condition are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than or equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>></code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>>= </code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>BETWEEN</code>
    #                     <code>:sortkeyval1</code>
    #                     <code>AND</code>
    #                     <code>:sortkeyval2</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval1</code>, and less than or equal to
    #                           <code>:sortkeyval2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>begins_with (</code>
    #                     <code>sortKeyName</code>, <code>:sortkeyval</code>
    #                     <code>)</code> - true if the sort key value begins with a particular operand.
    #                       (You cannot use this function with a sort key that is of type Number.) Note that
    #                       the function name <code>begins_with</code> is case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as
    #                   <code>:partitionval</code> and <code>:sortval</code> with actual values at
    #               runtime.</p>
    #            <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace
    #               the names of the partition key and sort key with placeholder tokens. This option might
    #               be necessary if an attribute name conflicts with a DynamoDB reserved word. For example,
    #               the following <code>KeyConditionExpression</code> parameter causes an error because
    #                   <i>Size</i> is a reserved word:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Size = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the
    #               attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as
    #               follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#S = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For a list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>For more information on <code>ExpressionAttributeNames</code> and
    #                   <code>ExpressionAttributeValues</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using
    #                   Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    class QueryInput < Struct.new(
      nil,
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
      :expression_attribute_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>Query</code> operation.</p>
    # @!attribute items
    #   <p>An array of item attributes that match the query criteria. Each element in this array
    #               consists of an attribute name and the value for that attribute.</p>
    #   @return [Array<Hash<String, Types::AttributeValue>>]
    # @!attribute count
    #   <p>The number of items in the response.</p>
    #            <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the
    #               number of items returned after the filter was applied, and <code>ScannedCount</code> is
    #               the number of matching items before the filter was applied.</p>
    #            <p>If you did not use a filter in the request, then <code>Count</code> and
    #                   <code>ScannedCount</code> are the same.</p>
    #   @return [Integer]
    # @!attribute scanned_count
    #   <p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high
    #                   <code>ScannedCount</code> value with few, or no, <code>Count</code> results
    #               indicates an inefficient <code>Query</code> operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Count">Count and ScannedCount</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #            <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
    #               as <code>Count</code>.</p>
    #   @return [Integer]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request.</p>
    #            <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been
    #               processed and there is no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>Query</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#read-operation-consumption">Capacity unit consumption for read operations</a> in the <i>Amazon
    #                   DynamoDB Developer Guide</i>.</p>
    #   @return [Types::ConsumedCapacity]
    class QueryOutput < Struct.new(
      nil,
      :items,
      :count,
      :scanned_count,
      :last_evaluated_key,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:scanned_count] = 0 unless options.key?(:scanned_count)
        super
      end
    end

    # <p>Represents the properties of a replica.</p>
    # @!attribute region_name
    #   <p>The Region where the replica needs to be created.</p>
    #   @return [String]
    class Replica < Struct.new(
      nil,
      :region_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replica is already part of the global table.</p>
    # @!attribute message
    #   @return [String]
    class ReplicaAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings of the replica.</p>
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index auto scaling settings.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexAutoScalingDescription>]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute replica_provisioned_write_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute replica_status
    #   <p>The current state of the replica:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The replica is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The replica is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The replica is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The replica is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ReplicaAutoScalingDescription < Struct.new(
      nil,
      :region_name,
      :global_secondary_indexes,
      :replica_provisioned_read_capacity_auto_scaling_settings,
      :replica_provisioned_write_capacity_auto_scaling_settings,
      :replica_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings of a replica that will be modified.</p>
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute replica_global_secondary_index_updates
    #   <p>Represents the auto scaling settings of global secondary indexes that will be
    #               modified.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexAutoScalingUpdate>]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    class ReplicaAutoScalingUpdate < Struct.new(
      nil,
      :region_name,
      :replica_global_secondary_index_updates,
      :replica_provisioned_read_capacity_auto_scaling_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the replica.</p>
    # @!attribute region_name
    #   <p>The name of the Region.</p>
    #   @return [String]
    # @!attribute replica_status
    #   <p>The current state of the replica:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The replica is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The replica is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The replica is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The replica is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION_DISABLED</code> - The replica is inaccessible because the Amazon Web Services Region has been disabled.</p>
    #                  <note>
    #                     <p>If the Amazon Web Services Region remains inaccessible for more than 20
    #                           hours, DynamoDB will remove this replica from the replication
    #                           group. The replica will not be deleted and replication will stop from and to
    #                           this region.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS </code> - The KMS key
    #                       used to encrypt the table is inaccessible.</p>
    #                  <note>
    #                     <p>If the KMS key remains inaccessible for more than 20 hours,
    #                               DynamoDB will remove this replica from the replication group.
    #                           The replica will not be deleted and replication will stop from and to this
    #                           region.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replica_arn
    #   <p>The Amazon Resource Name (ARN) of the global table replica.</p>
    #   @return [String]
    # @!attribute replica_status_description
    #   <p>Detailed information about the replica status.</p>
    #   @return [String]
    # @!attribute replica_status_percent_progress
    #   <p>Specifies the progress of a Create, Update, or Delete action on the replica as a
    #               percentage.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key of the replica that will be used for KMS
    #               encryption.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not described, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [Types::ProvisionedThroughputOverride]
    # @!attribute on_demand_throughput_override
    #   <p>Overrides the maximum on-demand throughput settings for the specified replica
    #               table.</p>
    #   @return [Types::OnDemandThroughputOverride]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput value for this replica.</p>
    #   @return [Types::TableWarmThroughputDescription]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexDescription>]
    # @!attribute replica_inaccessible_date_time
    #   <p>The time at which the replica was first detected as inaccessible. To determine cause
    #               of inaccessibility check the <code>ReplicaStatus</code> property.</p>
    #   @return [Time]
    # @!attribute replica_table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [Types::TableClassSummary]
    # @!attribute global_table_settings_replication_mode
    #   <p>Indicates one of the settings synchronization modes for the global table replica:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: Indicates that the settings synchronization mode for the global table
    #                       replica is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: Indicates that the settings synchronization mode for the global table
    #                       replica is disabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_WITH_OVERRIDES</code>: This mode is set by default for a same account global table.
    #                       Indicates that certain global table settings can be overridden.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ReplicaDescription < Struct.new(
      nil,
      :region_name,
      :replica_status,
      :replica_arn,
      :replica_status_description,
      :replica_status_percent_progress,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :warm_throughput,
      :global_secondary_indexes,
      :replica_inaccessible_date_time,
      :replica_table_class_summary,
      :global_table_settings_replication_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a replica global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica table GSI-specific provisioned throughput. If not specified, uses the source
    #               table GSI's read capacity settings.</p>
    #   @return [Types::ProvisionedThroughputOverride]
    # @!attribute on_demand_throughput_override
    #   <p>Overrides the maximum on-demand throughput settings for the specified global secondary
    #               index in the specified replica table.</p>
    #   @return [Types::OnDemandThroughputOverride]
    class ReplicaGlobalSecondaryIndex < Struct.new(
      nil,
      :index_name,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling configuration for a replica global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>The current state of the replica global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table/index configuration is being updated. The
    #                       table/index remains available for data operations when
    #                       <code>UPDATING</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The index is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_read_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute provisioned_write_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    class ReplicaGlobalSecondaryIndexAutoScalingDescription < Struct.new(
      nil,
      :index_name,
      :index_status,
      :provisioned_read_capacity_auto_scaling_settings,
      :provisioned_write_capacity_auto_scaling_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling settings of a global secondary index for a replica that
    #             will be modified.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_read_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    class ReplicaGlobalSecondaryIndexAutoScalingUpdate < Struct.new(
      nil,
      :index_name,
      :provisioned_read_capacity_auto_scaling_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a replica global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>If not described, uses the source table GSI's read capacity settings.</p>
    #   @return [Types::ProvisionedThroughputOverride]
    # @!attribute on_demand_throughput_override
    #   <p>Overrides the maximum on-demand throughput for the specified global secondary index in
    #               the specified replica table.</p>
    #   @return [Types::OnDemandThroughputOverride]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput of the global secondary index for this replica.</p>
    #   @return [Types::GlobalSecondaryIndexWarmThroughputDescription]
    class ReplicaGlobalSecondaryIndexDescription < Struct.new(
      nil,
      :index_name,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :warm_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p> The current status of the global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The global secondary index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The global secondary index is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The global secondary index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The global secondary index is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_read_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global secondary index replica's read capacity
    #               units.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_write_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global secondary index replica's write capacity
    #               units.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    class ReplicaGlobalSecondaryIndexSettingsDescription < Struct.new(
      nil,
      :index_name,
      :index_status,
      :provisioned_read_capacity_units,
      :provisioned_read_capacity_auto_scaling_settings,
      :provisioned_write_capacity_units,
      :provisioned_write_capacity_auto_scaling_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings of a global secondary index for a global table that will be
    #             modified.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_read_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global secondary index replica's read capacity
    #               units.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    class ReplicaGlobalSecondaryIndexSettingsUpdate < Struct.new(
      nil,
      :index_name,
      :provisioned_read_capacity_units,
      :provisioned_read_capacity_auto_scaling_settings_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replica is no longer part of the global table.</p>
    # @!attribute message
    #   @return [String]
    class ReplicaNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a replica.</p>
    # @!attribute region_name
    #   <p>The Region name of the replica.</p>
    #   @return [String]
    # @!attribute replica_status
    #   <p>The current state of the Region:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The Region is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The Region is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The Region is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The Region is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replica_billing_mode_summary
    #   <p>The read/write capacity mode of the replica.</p>
    #   @return [Types::BillingModeSummary]
    # @!attribute replica_provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global table replica's read capacity units.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute replica_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute replica_provisioned_write_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global table replica's write capacity units.</p>
    #   @return [Types::AutoScalingSettingsDescription]
    # @!attribute replica_global_secondary_index_settings
    #   <p>Replica global secondary index settings for the global table.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexSettingsDescription>]
    # @!attribute replica_table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [Types::TableClassSummary]
    class ReplicaSettingsDescription < Struct.new(
      nil,
      :region_name,
      :replica_status,
      :replica_billing_mode_summary,
      :replica_provisioned_read_capacity_units,
      :replica_provisioned_read_capacity_auto_scaling_settings,
      :replica_provisioned_write_capacity_units,
      :replica_provisioned_write_capacity_auto_scaling_settings,
      :replica_global_secondary_index_settings,
      :replica_table_class_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings for a global table in a Region that will be modified.</p>
    # @!attribute region_name
    #   <p>The Region of the replica to be added.</p>
    #   @return [String]
    # @!attribute replica_provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global table replica's read capacity
    #               units.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    # @!attribute replica_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndexSettingsUpdate>]
    # @!attribute replica_table_class
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   @return [String]
    class ReplicaSettingsUpdate < Struct.new(
      nil,
      :region_name,
      :replica_provisioned_read_capacity_units,
      :replica_provisioned_read_capacity_auto_scaling_settings_update,
      :replica_global_secondary_index_settings_update,
      :replica_table_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new replica to be added to an existing global table.</p>
    #             </li>
    #             <li>
    #                <p>New parameters for an existing replica.</p>
    #             </li>
    #             <li>
    #                <p>An existing replica to be removed from an existing global table.</p>
    #             </li>
    #          </ul>
    # @!attribute create
    #   <p>The parameters required for creating a replica on an existing global table.</p>
    #   @return [Types::CreateReplicaAction]
    # @!attribute delete
    #   <p>The name of the existing replica to be removed.</p>
    #   @return [Types::DeleteReplicaAction]
    class ReplicaUpdate < Struct.new(
      nil,
      :create,
      :delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because one or more items in the request are being modified
    #             by a request in another Region. </p>
    # @!attribute message
    #   @return [String]
    class ReplicatedWriteConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new replica to be added to an existing regional table or global table. This
    #                     request invokes the <code>CreateTableReplica</code> action in the destination
    #                     Region.</p>
    #             </li>
    #             <li>
    #                <p>New parameters for an existing replica. This request invokes the
    #                         <code>UpdateTable</code> action in the destination Region.</p>
    #             </li>
    #             <li>
    #                <p>An existing replica to be deleted. The request invokes the
    #                         <code>DeleteTableReplica</code> action in the destination Region, deleting
    #                     the replica and all if its items in the destination Region.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>When you manually remove a table or global table replica, you do not automatically
    #                 remove any associated scalable targets, scaling policies, or CloudWatch
    #                 alarms.</p>
    #          </note>
    # @!attribute create
    #   <p>The parameters required for creating a replica for the table.</p>
    #   @return [Types::CreateReplicationGroupMemberAction]
    # @!attribute update
    #   <p>The parameters required for updating a replica for the table.</p>
    #   @return [Types::UpdateReplicationGroupMemberAction]
    # @!attribute delete
    #   <p>The parameters required for deleting a replica for the table.</p>
    #   @return [Types::DeleteReplicationGroupMemberAction]
    class ReplicationGroupUpdate < Struct.new(
      nil,
      :create,
      :update,
      :delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Throughput exceeds the current throughput quota for your account. For detailed
    #             information about why the request was throttled and the ARN of the impacted resource,
    #             find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception. Contact <a href="https://aws.amazon.com/support">Amazon Web Services Support</a> to request a quota
    #             increase.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute throttling_reasons
    #   <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
    #        provide detailed diagnostic information about why the request was throttled.
    #       </p>
    #   @return [Array<Types::ThrottlingReason>]
    class RequestLimitExceeded < Struct.new(
      nil,
      :message,
      :throttling_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation conflicts with the resource's availability. For example:</p>
    #          <ul>
    #             <li>
    #                <p>You attempted to recreate an existing table.</p>
    #             </li>
    #             <li>
    #                <p>You tried to delete a table currently in the <code>CREATING</code>
    #                     state.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a resource that was already being updated.</p>
    #             </li>
    #          </ul>
    #          <p>When appropriate, wait for the ongoing update to complete and attempt the request
    #             again.</p>
    # @!attribute message
    #   <p>The resource which is being attempted to be changed is in use.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a nonexistent table or index. The resource might not
    #             be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
    # @!attribute message
    #   <p>The resource which is being requested does not exist.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for the restore.</p>
    # @!attribute source_backup_arn
    #   <p>The Amazon Resource Name (ARN) of the backup from which the table was restored.</p>
    #   @return [String]
    # @!attribute source_table_arn
    #   <p>The ARN of the source table of the backup that is being restored.</p>
    #   @return [String]
    # @!attribute restore_date_time
    #   <p>Point in time or source backup time.</p>
    #   @return [Time]
    # @!attribute restore_in_progress
    #   <p>Indicates if a restore is in progress or not.</p>
    #   @return [Boolean]
    class RestoreSummary < Struct.new(
      nil,
      :source_backup_arn,
      :source_table_arn,
      :restore_date_time,
      :restore_in_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_table_name
    #   <p>The name of the new table to which the backup must be restored.</p>
    #   @return [String]
    # @!attribute backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #   @return [String]
    # @!attribute billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #   @return [String]
    # @!attribute global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<Types::GlobalSecondaryIndex>]
    # @!attribute local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<Types::LocalSecondaryIndex>]
    # @!attribute provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput_override
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #   @return [Types::SSESpecification]
    # @!attribute vector_index_override
    #   <p>The vector indexes for the restored table. If not specified, all vector indexes
    #               from the backup are restored. The indexes provided must match existing vector
    #               indexes from the backup. You can choose to exclude some or all of the vector
    #               indexes at the time of restore.</p>
    #   @return [Array<Types::VectorIndex>]
    class RestoreTableFromBackupInput < Struct.new(
      nil,
      :target_table_name,
      :backup_arn,
      :billing_mode_override,
      :global_secondary_index_override,
      :local_secondary_index_override,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :sse_specification_override,
      :vector_index_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_description
    #   <p>The description of the table created from an existing backup.</p>
    #   @return [Types::TableDescription]
    class RestoreTableFromBackupOutput < Struct.new(
      nil,
      :table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_table_arn
    #   <p>The DynamoDB table that will be restored. This value is an Amazon Resource Name
    #               (ARN).</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>Name of the source table that is being restored.</p>
    #   @return [String]
    # @!attribute target_table_name
    #   <p>The name of the new table to which it must be restored to.</p>
    #   @return [String]
    # @!attribute use_latest_restorable_time
    #   <p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code>
    #               is typically 5 minutes before the current time. </p>
    #   @return [Boolean]
    # @!attribute restore_date_time
    #   <p>Time in the past to restore the table to.</p>
    #   @return [Time]
    # @!attribute billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #   @return [String]
    # @!attribute global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #            <p>The <code>WarmThroughput</code> setting is not supported on global secondary indexes
    #               when you use <code>RestoreTableToPointInTime</code>. Although <code>WarmThroughput</code>
    #               appears in the shared index definition, including it in a
    #               <code>GlobalSecondaryIndexOverride</code> entry causes the request to fail with a
    #               validation error.</p>
    #   @return [Array<Types::GlobalSecondaryIndex>]
    # @!attribute local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<Types::LocalSecondaryIndex>]
    # @!attribute provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput_override
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #   @return [Types::SSESpecification]
    # @!attribute vector_index_override
    #   <p>The vector indexes for the restored table. If not specified, all vector indexes
    #               from the source table are restored. The indexes provided must match existing
    #               vector indexes from the source table. You can choose to exclude some or all of
    #               the vector indexes at the time of restore.</p>
    #   @return [Array<Types::VectorIndex>]
    class RestoreTableToPointInTimeInput < Struct.new(
      nil,
      :source_table_arn,
      :source_table_name,
      :target_table_name,
      :use_latest_restorable_time,
      :restore_date_time,
      :billing_mode_override,
      :global_secondary_index_override,
      :local_secondary_index_override,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :sse_specification_override,
      :vector_index_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_description
    #   <p>Represents the properties of a table.</p>
    #   @return [Types::TableDescription]
    class RestoreTableToPointInTimeOutput < Struct.new(
      nil,
      :table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The S3 bucket that is being imported from. </p>
    # @!attribute s3_bucket_owner
    #   <p> The account number of the S3 bucket that is being imported from. If the bucket is
    #               owned by the requester this is optional. </p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p> The S3 bucket that is being imported from. </p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p> The key prefix shared by all S3 Objects that are being imported. </p>
    #   @return [String]
    class S3BucketSource < Struct.new(
      nil,
      :s3_bucket_owner,
      :s3_bucket,
      :s3_key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the server-side encryption status on the specified table.</p>
    # @!attribute status
    #   <p>Represents the current state of server-side encryption. The only supported values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Server-side encryption is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Server-side encryption is being updated.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sse_type
    #   <p>Server-side encryption type. The only supported value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - Server-side encryption that uses Key Management Service. The
    #                       key is stored in your account and is managed by KMS (KMS charges apply).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute kms_master_key_arn
    #   <p>The KMS key ARN used for the KMS encryption.</p>
    #   @return [String]
    # @!attribute inaccessible_encryption_date_time
    #   <p>Indicates the time, in UNIX epoch date format, when DynamoDB detected that
    #               the table's KMS key was inaccessible. This attribute will automatically
    #               be cleared when DynamoDB detects that the table's KMS key is accessible
    #               again. DynamoDB will initiate the table archival process when table's KMS key remains inaccessible for more than seven days from this date.</p>
    #   @return [Time]
    class SSEDescription < Struct.new(
      nil,
      :status,
      :sse_type,
      :kms_master_key_arn,
      :inaccessible_encryption_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings used to enable server-side encryption.</p>
    # @!attribute enabled
    #   <p>Indicates whether server-side encryption is done using an Amazon Web Services managed
    #               key or an Amazon Web Services owned key. If enabled (true), server-side encryption type
    #               is set to <code>KMS</code> and an Amazon Web Services managed key is used (KMS charges apply). If disabled (false) or not specified, server-side
    #               encryption is set to Amazon Web Services owned key.</p>
    #   @return [Boolean]
    # @!attribute sse_type
    #   <p>Server-side encryption type. The only supported value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - Server-side encryption that uses Key Management Service. The
    #                       key is stored in your account and is managed by KMS (KMS charges apply).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key that should be used for the KMS encryption.
    #               To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN.
    #               Note that you should only provide this parameter if the key is different from the
    #               default DynamoDB key <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    class SSESpecification < Struct.new(
      nil,
      :enabled,
      :sse_type,
      :kms_master_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>Scan</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table containing the requested items or if you provide
    #                   <code>IndexName</code>, the name of the table to which that index belongs.</p>
    #            <p>You can also provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of a secondary index to scan. This index can be any local secondary index or
    #               global secondary index. Note that if you use the <code>IndexName</code> parameter, you
    #               must also provide <code>TableName</code>.</p>
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Working with Queries</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read
    #                       capacity units as getting the items, and is subject to the same item size
    #                       calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation reads only the index and not the
    #                       table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    #   @return [String]
    # @!attribute scan_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::Condition>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No
    #               set data types are allowed.</p>
    #            <p>In a parallel scan, a <code>Scan</code> request that includes
    #                   <code>ExclusiveStartKey</code> must specify the same segment whose previous
    #                   <code>Scan</code> returned the corresponding value of
    #               <code>LastEvaluatedKey</code>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute total_segments
    #   <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the
    #               total number of segments into which the <code>Scan</code> operation will be divided. The
    #               value of <code>TotalSegments</code> corresponds to the number of application workers
    #               that will perform the parallel scan. For example, if you want to use four application
    #               threads to scan a table or an index, specify a <code>TotalSegments</code> value of
    #               4.</p>
    #            <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less
    #               than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the
    #                   <code>Scan</code> operation will be sequential rather than parallel.</p>
    #            <p>If you specify <code>TotalSegments</code>, you must also specify
    #               <code>Segment</code>.</p>
    #   @return [Integer]
    # @!attribute segment
    #   <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an
    #               individual segment to be scanned by an application worker.</p>
    #            <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want
    #               to use four application threads to scan a table or an index, then the first thread
    #               specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so
    #               on.</p>
    #            <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code>
    #               request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a
    #               subsequent <code>Scan</code> operation.</p>
    #            <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than
    #               the value provided for <code>TotalSegments</code>.</p>
    #            <p>If you provide <code>Segment</code>, you must also provide
    #               <code>TotalSegments</code>.</p>
    #   @return [Integer]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the specified table
    #               or index. These attributes can include scalars, sets, or elements of a JSON document.
    #               The attributes in the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.FilterExpression">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consistent_read
    #   <p>A Boolean value that determines the read consistency model during the scan:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned
    #                       from <code>Scan</code> might not contain the results from other recently
    #                       completed write operations (<code>PutItem</code>, <code>UpdateItem</code>, or
    #                           <code>DeleteItem</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write
    #                       operations that completed before the <code>Scan</code> began are guaranteed to
    #                       be contained in the <code>Scan</code> response.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p>
    #            <p>The <code>ConsistentRead</code> parameter is not supported on global secondary
    #               indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to
    #               true, you will receive a <code>ValidationException</code>.</p>
    #   @return [Boolean]
    class ScanInput < Struct.new(
      nil,
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
      :consistent_read,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>Scan</code> operation.</p>
    # @!attribute items
    #   <p>An array of item attributes that match the scan criteria. Each element in this array
    #               consists of an attribute name and the value for that attribute.</p>
    #   @return [Array<Hash<String, Types::AttributeValue>>]
    # @!attribute count
    #   <p>The number of items in the response.</p>
    #            <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the
    #               number of items returned after the filter was applied, and <code>ScannedCount</code> is
    #               the number of matching items before the filter was applied.</p>
    #            <p>If you did not use a filter in the request, then <code>Count</code> is the same as
    #                   <code>ScannedCount</code>.</p>
    #   @return [Integer]
    # @!attribute scanned_count
    #   <p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high
    #                   <code>ScannedCount</code> value with few, or no, <code>Count</code> results
    #               indicates an inefficient <code>Scan</code> operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and
    #                   ScannedCount</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
    #               as <code>Count</code>.</p>
    #   @return [Integer]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request.</p>
    #            <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been
    #               processed and there is no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>Scan</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#read-operation-consumption">Capacity unit consumption for read operations</a> in the <i>Amazon
    #                   DynamoDB Developer Guide</i>.</p>
    #   @return [Types::ConsumedCapacity]
    class ScanOutput < Struct.new(
      nil,
      :items,
      :count,
      :scanned_count,
      :last_evaluated_key,
      :consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        options[:scanned_count] = 0 unless options.key?(:scanned_count)
        super
      end
    end

    # <p>A single result from a <code>SearchVectors</code> operation.</p>
    # @!attribute item
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               projected attributes of the item returned by the vector search.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute score
    #   <p>The similarity score for this item relative to the search vector. The
    #               interpretation depends on the distance function configured for the vector
    #               index.</p>
    #   @return [Float]
    class SearchResultItem < Struct.new(
      nil,
      :item,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:score] = 0 unless options.key?(:score)
        super
      end
    end

    # <p>An element in the search schema of a vector index.</p>
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute search_schema_element_type
    #   <p>The role of the attribute in the search schema. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - A partition key that partitions the vector index for
    #                       independent scaling. When specified, you must provide this attribute's value
    #                       in the <code>SearchConditionExpression</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INLINE_FILTER</code> - An attribute projected into the vector index
    #                       for filtering at the storage layer during search. Inline filters are
    #                       optional in the <code>SearchConditionExpression</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SearchSchemaElement < Struct.new(
      nil,
      :attribute_name,
      :search_schema_element_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name or Amazon Resource Name (ARN) of the table containing the vector index.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the vector index to search. The index must be in the
    #               <code>ACTIVE</code> state.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. Use the
    #               <code>#</code> character in an expression to dereference an attribute name.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression. Use the
    #               <code>:</code> character in an expression to dereference an attribute value.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the index.
    #               Separate attribute names with commas. If not specified, the operation returns all
    #               attributes projected into the vector index.</p>
    #            <p>Only attributes projected into the vector index can be retrieved.</p>
    #   @return [String]
    # @!attribute search_vector
    #   <p>The search vector to compare against the indexed vectors. Each element is a 32-bit
    #               IEEE-754 floating point number, provided in DynamoDB list format.</p>
    #            <p>The number of dimensions must match the number of dimensions configured for the
    #               vector index.</p>
    #   @return [Array<Types::AttributeValue>]
    # @!attribute search_condition_expression
    #   <p>A condition expression used to filter the vector search results. The expression can
    #               reference attributes defined in the vector index search schema, including
    #               <code>HASH</code> and <code>INLINE_FILTER</code> key elements.</p>
    #            <p>Only the equality operator (<code>=</code>) is supported for <code>HASH</code>
    #               attributes. Comparison and range operators are supported for
    #               <code>INLINE_FILTER</code> attributes. Only top-level attributes from the search
    #               schema can be referenced.</p>
    #   @return [String]
    # @!attribute top_k
    #   <p>The number of most similar results to return.</p>
    #   @return [Integer]
    class SearchVectorsInput < Struct.new(
      nil,
      :table_name,
      :index_name,
      :return_consumed_capacity,
      :expression_attribute_names,
      :expression_attribute_values,
      :projection_expression,
      :search_vector,
      :search_condition_expression,
      :top_k,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>SearchVectors</code> operation. Contains
    #               <code>VectorSearchRequestBytes</code>, which represents the vector search capacity
    #               consumed.</p>
    #   @return [Types::VectorCapacity]
    # @!attribute search_results
    #   <p>A list of items returned by the vector similarity search, sorted by similarity
    #               with the most similar item first. Each item contains the projected attributes and
    #               a similarity score.</p>
    #   @return [Array<Types::SearchResultItem>]
    class SearchVectorsOutput < Struct.new(
      nil,
      :consumed_capacity,
      :search_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the table when the backup was created. </p>
    # @!attribute table_name
    #   <p>The name of the table for which the backup was created. </p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique identifier for the table for which the backup was created. </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>ARN of the table for which backup was created. </p>
    #   @return [String]
    # @!attribute table_size_bytes
    #   <p>Size of the table in bytes. Note that this is an approximate value.</p>
    #   @return [Integer]
    # @!attribute key_schema
    #   <p>Schema of the table. </p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute table_creation_date_time
    #   <p>Time when the source table was created. </p>
    #   @return [Time]
    # @!attribute provisioned_throughput
    #   <p>Read IOPs and Write IOPS on the table when the backup was created.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute item_count
    #   <p>Number of items in the table. Note that this is an approximate value. </p>
    #   @return [Integer]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - Sets the read/write capacity mode to
    #                           <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
    #                           <code>PAY_PER_REQUEST</code>. We recommend using
    #                           <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SourceTableDetails < Struct.new(
      nil,
      :table_name,
      :table_id,
      :table_arn,
      :table_size_bytes,
      :key_schema,
      :table_creation_date_time,
      :provisioned_throughput,
      :on_demand_throughput,
      :item_count,
      :billing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of the features enabled on the table when the backup was created.
    #             For example, LSIs, GSIs, streams, TTL. </p>
    # @!attribute local_secondary_indexes
    #   <p>Represents the LSI properties for the table when the backup was created. It includes
    #               the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
    #           </p>
    #   @return [Array<Types::LocalSecondaryIndexInfo>]
    # @!attribute global_secondary_indexes
    #   <p>Represents the GSI properties for the table when the backup was created. It includes
    #               the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the
    #               table at the time of backup. </p>
    #   @return [Array<Types::GlobalSecondaryIndexInfo>]
    # @!attribute stream_description
    #   <p>Stream settings on the table when the backup was created.</p>
    #   @return [Types::StreamSpecification]
    # @!attribute time_to_live_description
    #   <p>Time to Live settings on the table when the backup was created.</p>
    #   @return [Types::TimeToLiveDescription]
    # @!attribute sse_description
    #   <p>The description of the server-side encryption status on the table when the backup was
    #               created.</p>
    #   @return [Types::SSEDescription]
    # @!attribute vector_indexes
    #   <p>The vector index properties for the table at the time the backup was created,
    #               including the index name, vector attribute, dimensions, distance function, search
    #               schema, and projection.</p>
    #   @return [Array<Types::VectorIndexInfo>]
    class SourceTableFeatureDetails < Struct.new(
      nil,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :stream_description,
      :time_to_live_description,
      :sse_description,
      :vector_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the DynamoDB Streams configuration for a table in DynamoDB.</p>
    # @!attribute stream_enabled
    #   <p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the
    #               table.</p>
    #   @return [Boolean]
    # @!attribute stream_view_type
    #   <p> When an item in the table is modified, <code>StreamViewType</code> determines what
    #               information is written to the stream for this table. Valid values for
    #                   <code>StreamViewType</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - Only the key attributes of the modified item are
    #                       written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified,
    #                       is written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified,
    #                       is written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the
    #                       item are written to the stream.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StreamSpecification < Struct.new(
      nil,
      :stream_enabled,
      :stream_view_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target table with the specified name already exists. </p>
    # @!attribute message
    #   @return [String]
    class TableAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the auto scaling configuration for a global table.</p>
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replicas
    #   <p>Represents replicas of the global table.</p>
    #   @return [Array<Types::ReplicaAutoScalingDescription>]
    class TableAutoScalingDescription < Struct.new(
      nil,
      :table_name,
      :table_status,
      :replicas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of the table class.</p>
    # @!attribute table_class
    #   <p>The table class of the specified table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   @return [String]
    # @!attribute last_update_date_time
    #   <p>The date and time at which the table class was last updated.</p>
    #   @return [Time]
    class TableClassSummary < Struct.new(
      nil,
      :table_class,
      :last_update_date_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The parameters for the table created as part of the import operation. </p>
    # @!attribute table_name
    #   <p> The name of the table created as part of the import operation. </p>
    #   @return [String]
    # @!attribute attribute_definitions
    #   <p> The attributes of the table created as part of the import operation. </p>
    #   @return [Array<Types::AttributeDefinition>]
    # @!attribute key_schema
    #   <p> The primary key and option sort key of the table created as part of the import
    #               operation. </p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute billing_mode
    #   <p> The billing mode for provisioning the table created as part of the import operation.
    #           </p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index. You must use <code>ProvisionedThroughput</code> or
    #                   <code>OnDemandThroughput</code> based on your table’s capacity mode.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    #   @return [Types::SSESpecification]
    # @!attribute global_secondary_indexes
    #   <p> The Global Secondary Indexes (GSI) of the table to be created as part of the import
    #               operation. </p>
    #   @return [Array<Types::GlobalSecondaryIndex>]
    # @!attribute vector_indexes
    #   <p>The vector indexes of the table to be created as part of the import
    #               operation.</p>
    #   @return [Array<Types::VectorIndex>]
    class TableCreationParameters < Struct.new(
      nil,
      :table_name,
      :attribute_definitions,
      :key_schema,
      :billing_mode,
      :provisioned_throughput,
      :on_demand_throughput,
      :sse_specification,
      :global_secondary_indexes,
      :vector_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a table.</p>
    # @!attribute attribute_definitions
    #   <p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes
    #               one attribute in the table and index key schema.</p>
    #            <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of the attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributeType</code> - The data type for the attribute.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists
    #               of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of the attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeyType</code> - The role of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HASH</code> - partition key</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RANGE</code> - sort key</p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>The partition key of an item is also known as its <i>hash
    #                               attribute</i>. The term "hash attribute" derives from DynamoDB's
    #                           usage of an internal hash function to evenly distribute data items across
    #                           partitions, based on their partition key values.</p>
    #                     <p>The sort key of an item is also known as its <i>range
    #                               attribute</i>. The term "range attribute" derives from the way
    #                           DynamoDB stores items with the same partition key physically close together,
    #                           in sorted order by the sort key value.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<Types::KeySchemaElement>]
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table/index configuration is being updated. The
    #                       table/index remains available for data operations when
    #                       <code>UPDATING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The KMS key
    #                       used to encrypt the table in inaccessible. Table operations may fail due to
    #                       failure to use the KMS key. DynamoDB will initiate the
    #                       table archival process when a table's KMS key remains
    #                       inaccessible for more than seven days. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARCHIVING</code> - The table is being archived. Operations are not allowed
    #                       until archival is complete. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARCHIVED</code> - The table has been archived. See the ArchivalReason for
    #                       more information. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the table was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute provisioned_throughput
    #   <p>The provisioned throughput settings for the table, consisting of read and write
    #               capacity units, along with data about increases and decreases.</p>
    #   @return [Types::ProvisionedThroughputDescription]
    # @!attribute table_size_bytes
    #   <p>The total size of the specified table, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified table. DynamoDB updates this value approximately
    #               every six hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>A unique identifier for the table, in UUID format, generated by DynamoDB when the
    #               table is created.</p>
    #   @return [String]
    # @!attribute billing_mode_summary
    #   <p>Contains the details for the read/write capacity mode.</p>
    #   @return [Types::BillingModeSummary]
    # @!attribute local_secondary_indexes
    #   <p>Represents one or more local secondary indexes on the table. Each index is scoped to a
    #               given partition key value. Tables with one or more local secondary indexes are subject
    #               to an item collection size limit, where the amount of data within a given item
    #               collection cannot exceed 10 GB. Each element is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the local secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the complete index key schema. The attribute
    #                       names in the key schema must be between 1 and 255 characters (inclusive). The
    #                       key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes.
    #                       DynamoDB updates this value approximately every six hours. Recent changes might
    #                       not be reflected in this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemCount</code> - Represents the number of items in the index. DynamoDB
    #                       updates this value approximately every six hours. Recent changes might not be
    #                       reflected in this value.</p>
    #               </li>
    #            </ul>
    #            <p>If the table is in the <code>DELETING</code> state, no information about indexes will
    #               be returned.</p>
    #   @return [Array<Types::LocalSecondaryIndexDescription>]
    # @!attribute global_secondary_indexes
    #   <p>The global secondary indexes, if any, on the table. Each index is scoped to a given
    #               partition key value. Each element is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Backfilling</code> - If true, then the index is currently in the
    #                       backfilling phase. Backfilling occurs only when a new global secondary index is
    #                       added to the table. It is the process by which DynamoDB populates the new index
    #                       with data from the table. (This attribute does not appear for indexes that were
    #                       created during a <code>CreateTable</code> operation.) </p>
    #                  <p> You can delete an index that is being created during the
    #                           <code>Backfilling</code> phase when <code>IndexStatus</code> is set to
    #                       CREATING and <code>Backfilling</code> is true. You can't delete the index that
    #                       is being created when <code>IndexStatus</code> is set to CREATING and
    #                           <code>Backfilling</code> is false. (This attribute does not appear for
    #                       indexes that were created during a <code>CreateTable</code> operation.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexSizeBytes</code> - The total size of the global secondary index, in
    #                       bytes. DynamoDB updates this value approximately every six hours. Recent changes
    #                       might not be reflected in this value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexStatus</code> - The current status of the global secondary
    #                       index:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code> - The index is being created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UPDATING</code> - The index is being updated.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code> - The index is being deleted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ACTIVE</code> - The index is ready for use.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemCount</code> - The number of items in the global secondary index.
    #                       DynamoDB updates this value approximately every six hours. Recent changes might
    #                       not be reflected in this value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the complete index key schema. The attribute
    #                       names in the key schema must be between 1 and 255 characters (inclusive). The
    #                       key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - In addition to the attributes described
    #                                       in <code>KEYS_ONLY</code>, the secondary index will include
    #                                       other non-key attributes that you specify.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units, along with
    #                       data about increases and decreases. </p>
    #               </li>
    #            </ul>
    #            <p>If the table is in the <code>DELETING</code> state, no information about indexes will
    #               be returned.</p>
    #   @return [Array<Types::GlobalSecondaryIndexDescription>]
    # @!attribute stream_specification
    #   <p>The current DynamoDB Streams configuration for the table.</p>
    #   @return [Types::StreamSpecification]
    # @!attribute latest_stream_label
    #   <p>A timestamp, in ISO 8601 format, for this stream.</p>
    #            <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream,
    #               because it is possible that a stream from another table might have the same timestamp.
    #               However, the combination of the following three elements is guaranteed to be
    #               unique:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services customer ID</p>
    #               </li>
    #               <li>
    #                  <p>Table name</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamLabel</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute latest_stream_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this
    #               table.</p>
    #   @return [String]
    # @!attribute global_table_version
    #   <p>Represents the version of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">global tables</a>
    #               in use, if the table is replicated across Amazon Web Services Regions.</p>
    #   @return [String]
    # @!attribute replicas
    #   <p>Represents replicas of the table.</p>
    #   @return [Array<Types::ReplicaDescription>]
    # @!attribute global_table_witnesses
    #   <p>The witness Region and its current status in the MRSC global table. Only one witness
    #               Region can be configured per MRSC global table.</p>
    #   @return [Array<Types::GlobalTableWitnessDescription>]
    # @!attribute global_table_settings_replication_mode
    #   <p>Indicates one of the settings synchronization modes for the global table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: Indicates that the settings synchronization mode for the global table
    #                       is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: Indicates that the settings synchronization mode for the global table is
    #                       disabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_WITH_OVERRIDES</code>: This mode is set by default for a same account global table.
    #                       Indicates that certain global table settings can be overridden.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restore_summary
    #   <p>Contains details for the restore.</p>
    #   @return [Types::RestoreSummary]
    # @!attribute sse_description
    #   <p>The description of the server-side encryption status on the specified table.</p>
    #   @return [Types::SSEDescription]
    # @!attribute archival_summary
    #   <p>Contains information about the table archive.</p>
    #   @return [Types::ArchivalSummary]
    # @!attribute table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [Types::TableClassSummary]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is enabled (true) or disabled (false) on the
    #               table.</p>
    #   @return [Boolean]
    # @!attribute on_demand_throughput
    #   <p>The maximum number of read and write units for the specified on-demand table. If you
    #               use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Describes the warm throughput value of the base table.</p>
    #   @return [Types::TableWarmThroughputDescription]
    # @!attribute multi_region_consistency
    #   <p>Indicates one of the following consistency modes for a global table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVENTUAL</code>: Indicates that the global table is configured for
    #                       multi-Region eventual consistency (MREC).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STRONG</code>: Indicates that the global table is configured for
    #                       multi-Region strong consistency (MRSC).</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify this field, the global table consistency mode defaults to
    #                   <code>EVENTUAL</code>. For more information about global tables consistency modes,
    #               see <a href="https://docs.aws.amazon.com/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes">
    #                   Consistency modes</a> in DynamoDB developer guide. </p>
    #   @return [String]
    # @!attribute vector_indexes
    #   <p>The vector indexes, if any, on the table. Each element is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the vector index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexStatus</code> - The current status of the vector index:
    #                       <code>CREATING</code>, <code>ACTIVE</code>, or
    #                       <code>DELETING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Backfilling</code> - Specifies whether the index is currently
    #                       backfilling. During backfill, <code>SearchVectors</code> operations might
    #                       return incomplete results.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorAttribute</code> - The attribute that contains vector
    #                       embeddings.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code> - The number of dimensions in each
    #                       vector.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceFunction</code> - The distance function used to calculate
    #                       similarity (<code>COSINE</code>, <code>EUCLIDEAN</code>, or
    #                       <code>DOT_PRODUCT</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SearchSchema</code> - The partition key and inline filter
    #                       attributes for the vector index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied
    #                       (projected) from the table into the vector index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexArn</code> - The Amazon Resource Name (ARN) that uniquely
    #                       identifies the index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexSizeBytes</code> - The total size of the vector index, in
    #                       bytes. Amazon DynamoDB updates this value approximately every six hours.
    #                       Recent changes might not be reflected in this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemCount</code> - The number of items indexed in the vector
    #                       index. Amazon DynamoDB updates this value approximately every six hours.
    #                       Recent changes might not be reflected in this value.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::VectorIndexDescription>]
    class TableDescription < Struct.new(
      nil,
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
      :billing_mode_summary,
      :local_secondary_indexes,
      :global_secondary_indexes,
      :stream_specification,
      :latest_stream_label,
      :latest_stream_arn,
      :global_table_version,
      :replicas,
      :global_table_witnesses,
      :global_table_settings_replication_mode,
      :restore_summary,
      :sse_description,
      :archival_summary,
      :table_class_summary,
      :deletion_protection_enabled,
      :on_demand_throughput,
      :warm_throughput,
      :multi_region_consistency,
      :vector_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target table with the specified name is either being created or deleted.
    #         </p>
    # @!attribute message
    #   @return [String]
    class TableInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A source table with the name <code>TableName</code> does not currently exist within
    #             the subscriber's account or the subscriber is operating in the wrong Amazon Web Services
    #             Region.</p>
    # @!attribute message
    #   @return [String]
    class TableNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the warm throughput value (in read units per second and write units per
    #             second) of the table. Warm throughput is applicable for DynamoDB Standard-IA tables and
    #             specifies the minimum provisioned capacity maintained for immediate data access.</p>
    # @!attribute read_units_per_second
    #   <p>Represents the base table's warm throughput value in read units per second.</p>
    #   @return [Integer]
    # @!attribute write_units_per_second
    #   <p>Represents the base table's warm throughput value in write units per second.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>Represents warm throughput value of the base table.</p>
    #   @return [String]
    class TableWarmThroughputDescription < Struct.new(
      nil,
      :read_units_per_second,
      :write_units_per_second,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single
    #             DynamoDB table. </p>
    #          <p>Amazon Web Services-assigned tag names and values are automatically assigned the
    #                 <code>aws:</code> prefix, which the user cannot assign. Amazon Web Services-assigned
    #             tag names do not count towards the tag limit of 50. User-assigned tag names have the
    #             prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the
    #             application of a tag.</p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                 for DynamoDB</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. Each DynamoDB table can
    #               only have up to one tag with the same key. If you try to add an existing tag (same key),
    #               the existing tag value will be updated to the new value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is
    #               an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. For detailed information about why
    #             the request was throttled and the ARN of the impacted resource, find the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> field in the returned exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute throttling_reasons
    #   <p>A list of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ThrottlingReason.html">ThrottlingReason</a> that
    #        provide detailed diagnostic information about why the request was throttled.
    #       </p>
    #   @return [Array<Types::ThrottlingReason>]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :throttling_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the specific reason why a DynamoDB request was throttled and the
    #             ARN of the impacted resource. This helps identify exactly what resource is being throttled,
    #             what type of operation caused it, and why the throttling occurred.</p>
    # @!attribute reason
    #   <p>The reason for throttling. The throttling reason follows a specific format:
    #                   <code>ResourceType+OperationType+LimitType</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource Type (What is being throttled): Table or Index</p>
    #               </li>
    #               <li>
    #                  <p>Operation Type (What kind of operation): Read or Write</p>
    #               </li>
    #               <li>
    #                  <p>Limit Type (Why the throttling occurred):</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProvisionedThroughputExceeded</code>: The request rate is
    #                               exceeding the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">provisioned throughput capacity</a> (read or write capacity
    #                               units) configured for a table or a global secondary index (GSI) in
    #                               provisioned capacity mode.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AccountLimitExceeded</code>: The request rate has caused a table
    #                               or global secondary index (GSI) in on-demand mode to exceed the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ServiceQuotas.html#default-limits-throughput">per-table account-level service quotas</a> for read/write
    #                               throughput in the current Amazon Web Services Region. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>KeyRangeThroughputExceeded</code>: The request rate directed at
    #                               a specific partition key value has exceeded the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html">internal partition-level throughput limits</a>, indicating
    #                               uneven access patterns across the table's or GSI's key space.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MaxOnDemandThroughputExceeded</code>: The request rate has
    #                               exceeded the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode-max-throughput.html">configured maximum throughput limits</a> set for a table or
    #                               index in on-demand capacity mode.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>Examples of complete throttling reasons:</p>
    #            <ul>
    #               <li>
    #                  <p>TableReadProvisionedThroughputExceeded</p>
    #               </li>
    #               <li>
    #                  <p>IndexWriteAccountLimitExceeded</p>
    #               </li>
    #            </ul>
    #            <p>This helps identify exactly what resource is being throttled, what type of operation
    #               caused it, and why the throttling occurred.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB table or index that experienced the
    #               throttling event.</p>
    #   @return [String]
    class ThrottlingReason < Struct.new(
      nil,
      :reason,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the Time to Live (TTL) status on the specified table. </p>
    # @!attribute time_to_live_status
    #   <p> The TTL status for the table.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p> The name of the TTL attribute for items in the table.</p>
    #   @return [String]
    class TimeToLiveDescription < Struct.new(
      nil,
      :time_to_live_status,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings used to enable or disable Time to Live (TTL) for the specified
    #             table.</p>
    # @!attribute enabled
    #   <p>Indicates whether TTL is to be enabled (true) or disabled (false) on the table.</p>
    #   @return [Boolean]
    # @!attribute attribute_name
    #   <p>The name of the TTL attribute used to store the expiration time for items in the
    #               table.</p>
    #   @return [String]
    class TimeToLiveSpecification < Struct.new(
      nil,
      :enabled,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an item to be retrieved as part of the transaction.</p>
    # @!attribute get
    #   <p>Contains the primary key that identifies the item to get, together with the name of
    #               the table that contains the item, and optionally the specific attributes of the item to
    #               retrieve.</p>
    #   @return [Types::Get]
    class TransactGetItem < Struct.new(
      nil,
      :get,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transact_items
    #   <p>An ordered array of up to 100 <code>TransactGetItem</code> objects, each of which
    #               contains a <code>Get</code> structure.</p>
    #   @return [Array<Types::TransactGetItem>]
    # @!attribute return_consumed_capacity
    #   <p>A value of <code>TOTAL</code> causes consumed capacity information to be returned, and
    #               a value of <code>NONE</code> prevents that information from being returned. No other
    #               value is valid.</p>
    #   @return [String]
    class TransactGetItemsInput < Struct.new(
      nil,
      :transact_items,
      :return_consumed_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumed_capacity
    #   <p>If the <i>ReturnConsumedCapacity</i> value was <code>TOTAL</code>, this
    #               is an array of <code>ConsumedCapacity</code> objects, one for each table addressed by
    #                   <code>TransactGetItem</code> objects in the <i>TransactItems</i>
    #               parameter. These <code>ConsumedCapacity</code> objects report the read-capacity units
    #               consumed by the <code>TransactGetItems</code> call in that table.</p>
    #   @return [Array<Types::ConsumedCapacity>]
    # @!attribute responses
    #   <p>An ordered array of up to 100 <code>ItemResponse</code> objects, each of which
    #               corresponds to the <code>TransactGetItem</code> object in the same position in the
    #                   <i>TransactItems</i> array. Each <code>ItemResponse</code> object
    #               contains a Map of the name-value pairs that are the projected attributes of the
    #               requested item.</p>
    #            <p>If a requested item could not be retrieved, the corresponding
    #                   <code>ItemResponse</code> object is Null, or if the requested item has no projected
    #               attributes, the corresponding <code>ItemResponse</code> object is an empty Map. </p>
    #   @return [Array<Types::ItemResponse>]
    class TransactGetItemsOutput < Struct.new(
      nil,
      :consumed_capacity,
      :responses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of requests that can perform update, put, delete, or check operations on
    #             multiple items in one or more tables atomically.</p>
    # @!attribute condition_check
    #   <p>A request to perform a check item operation.</p>
    #   @return [Types::ConditionCheck]
    # @!attribute put
    #   <p>A request to perform a <code>PutItem</code> operation.</p>
    #   @return [Types::Put]
    # @!attribute delete
    #   <p>A request to perform a <code>DeleteItem</code> operation.</p>
    #   @return [Types::Delete]
    # @!attribute update
    #   <p>A request to perform an <code>UpdateItem</code> operation.</p>
    #   @return [Types::Update]
    class TransactWriteItem < Struct.new(
      nil,
      :condition_check,
      :put,
      :delete,
      :update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transact_items
    #   <p>An ordered array of up to 100 <code>TransactWriteItem</code> objects, each of which
    #               contains a <code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
    #                   <code>Delete</code> object. These can operate on items in different tables, but the
    #               tables must reside in the same Amazon Web Services account and Region, and no two of them
    #               can operate on the same item. </p>
    #   @return [Array<Types::TransactWriteItem>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections (if any), that were modified
    #               during the operation and are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned. </p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Providing a <code>ClientRequestToken</code> makes the call to
    #                   <code>TransactWriteItems</code> idempotent, meaning that multiple identical calls
    #               have the same effect as one single call.</p>
    #            <p>Although multiple identical calls using the same client request token produce the same
    #               result on the server (no side effects), the responses to the calls might not be the
    #               same. If the <code>ReturnConsumedCapacity</code> parameter is set, then the initial
    #                   <code>TransactWriteItems</code> call returns the amount of write capacity units
    #               consumed in making the changes. Subsequent <code>TransactWriteItems</code> calls with
    #               the same client token return the number of read capacity units consumed in reading the
    #               item.</p>
    #            <p>A client request token is valid for 10 minutes after the first request that uses it is
    #               completed. After 10 minutes, any request with the same client token is treated as a new
    #               request. Do not resubmit the same request with the same client token for more than 10
    #               minutes, or the result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 10-minute idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #   @return [String]
    class TransactWriteItemsInput < Struct.new(
      nil,
      :transact_items,
      :return_consumed_capacity,
      :return_item_collection_metrics,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire <code>TransactWriteItems</code> operation.
    #               The values of the list are ordered according to the ordering of the
    #                   <code>TransactItems</code> request parameter. </p>
    #            <p>If the table has vector indexes, each element also includes a
    #               <code>VectorIndexes</code> field with <code>VectorWriteRequestBytes</code> consumed
    #               for each affected vector index.</p>
    #   @return [Array<Types::ConsumedCapacity>]
    # @!attribute item_collection_metrics
    #   <p>A list of tables that were processed by <code>TransactWriteItems</code> and, for each
    #               table, information about any item collections that were affected by individual
    #                   <code>UpdateItem</code>, <code>PutItem</code>, or <code>DeleteItem</code>
    #               operations. </p>
    #   @return [Hash<String, Array<Types::ItemCollectionMetrics>>]
    class TransactWriteItemsOutput < Struct.new(
      nil,
      :consumed_capacity,
      :item_collection_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entire transaction request was canceled.</p>
    #          <p>DynamoDB cancels a <code>TransactWriteItems</code> request under the following
    #             circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactWriteItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>More than one action in the <code>TransactWriteItems</code> operation
    #                     targets the same item.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>An item size becomes too large (larger than 400 KB), or a local secondary
    #                     index (LSI) becomes too large, or a similar validation error occurs because of
    #                     changes made by the transaction.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                <p> There is an ongoing <code>TransactWriteItems</code> operation that
    #                     conflicts with a concurrent <code>TransactWriteItems</code> request. In this
    #                     case the <code>TransactWriteItems</code> operation fails with a
    #                         <code>TransactionCanceledException</code>. </p>
    #             </li>
    #          </ul>
    #          <p>DynamoDB cancels a <code>TransactGetItems</code> request under the
    #             following circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>There is an ongoing <code>TransactGetItems</code> operation that conflicts
    #                     with a concurrent <code>PutItem</code>, <code>UpdateItem</code>,
    #                         <code>DeleteItem</code> or <code>TransactWriteItems</code> request. In this
    #                     case the <code>TransactGetItems</code> operation fails with a
    #                         <code>TransactionCanceledException</code>.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactGetItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>DynamoDB lists the cancellation reasons on the
    #                     <code>CancellationReasons</code> property. Transaction cancellation reasons are ordered in the order of requested
    #                 items, if an item has no error it will have <code>None</code> code and
    #                     <code>Null</code> message. The <code>None</code> code is returned as the literal
    #                 string <code>"None"</code>, not a null or absent value; the message field is omitted
    #                 entirely for an item that has no error. This is important to note when using an SDK
    #                 that surfaces the code as an optional or nullable type.</p>
    #          </note>
    #          <p>Cancellation reason codes and possible error messages:</p>
    #          <ul>
    #             <li>
    #                <p>No Errors:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>None</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: <code>null</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Conditional Check Failed:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ConditionalCheckFailed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: The conditional request failed. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Item Collection Size Limit Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ItemCollectionSizeLimitExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Collection size exceeded.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Transaction Conflict:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>TransactionConflict</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Transaction is ongoing for the item.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Provisioned Throughput Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ProvisionedThroughputExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages:</p>
    #                      <ul>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for the
    #                                     table was exceeded. Consider increasing your provisioning level
    #                                     with the UpdateTable API.</p>
    #                            <note>
    #                               <p>This Message is received when provisioned throughput is
    #                                         exceeded is on a provisioned DynamoDB
    #                                         table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for one or
    #                                     more global secondary indexes of the table was exceeded.
    #                                     Consider increasing your provisioning level for the
    #                                     under-provisioned global secondary indexes with the UpdateTable
    #                                     API.</p>
    #                            <note>
    #                               <p>This message is returned when provisioned throughput is
    #                                         exceeded is on a provisioned GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Throttling Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ThrottlingError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity of your table or
    #                                     index. DynamoDB is automatically scaling your table or
    #                                     index so please try again shortly. If exceptions persist, check
    #                                     if you have a hot key:
    #                                     https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on an
    #                                         On-Demand table as DynamoDB is automatically
    #                                         scaling the table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity for one or more
    #                                     global secondary indexes. DynamoDB is automatically
    #                                     scaling your index so please try again shortly.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on an
    #                                         On-Demand GSI as DynamoDB is automatically scaling
    #                                         the GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Validation Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ValidationError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>One or more parameter values were invalid.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key beyond allowed size limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key to unsupported type.</p>
    #                         </li>
    #                         <li>
    #                            <p>An operand in the update expression has an incorrect data
    #                                     type.</p>
    #                         </li>
    #                         <li>
    #                            <p>Item size to update has exceeded the maximum allowed
    #                                     size.</p>
    #                         </li>
    #                         <li>
    #                            <p>Number overflow. Attempting to store a number with
    #                                     magnitude larger than supported range.</p>
    #                         </li>
    #                         <li>
    #                            <p>Type mismatch for attribute to update.</p>
    #                         </li>
    #                         <li>
    #                            <p>Nesting Levels have exceeded supported limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The document path provided in the update expression is
    #                                     invalid for update.</p>
    #                         </li>
    #                         <li>
    #                            <p>The provided expression refers to an attribute that does
    #                                     not exist in the item.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute cancellation_reasons
    #   <p>A list of cancellation reasons.</p>
    #   @return [Array<Types::CancellationReason>]
    class TransactionCanceledException < Struct.new(
      nil,
      :message,
      :cancellation_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Operation was rejected because there is an ongoing transaction for the
    #             item.</p>
    # @!attribute message
    #   @return [String]
    class TransactionConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The transaction with the given request token is already in progress.</p>
    #          <p> Recommended Settings </p>
    #          <note>
    #             <p> This is a general recommendation for handling the
    #                     <code>TransactionInProgressException</code>. These settings help ensure that the
    #                 client retries will trigger completion of the ongoing
    #                     <code>TransactWriteItems</code> request. </p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p> Set <code>clientExecutionTimeout</code> to a value that allows at least one
    #                     retry to be processed after 5 seconds have elapsed since the first attempt for
    #                     the <code>TransactWriteItems</code> operation. </p>
    #             </li>
    #             <li>
    #                <p> Set <code>socketTimeout</code> to a value a little lower than the
    #                         <code>requestTimeout</code> setting. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>requestTimeout</code> should be set based on the time taken for the
    #                     individual retries of a single HTTP request for your use case, but setting it to
    #                     1 second or higher should work well to reduce chances of retries and
    #                         <code>TransactionInProgressException</code> errors. </p>
    #             </li>
    #             <li>
    #                <p> Use exponential backoff when retrying and tune backoff if needed. </p>
    #             </li>
    #          </ul>
    #          <p> Assuming <a href="https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97">default retry policy</a>, example timeout settings based on the guidelines
    #             above are as follows: </p>
    #          <p>Example timeline:</p>
    #          <ul>
    #             <li>
    #                <p>0-1000 first attempt</p>
    #             </li>
    #             <li>
    #                <p>1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay
    #                     for 4xx errors)</p>
    #             </li>
    #             <li>
    #                <p>1500-2500 second attempt</p>
    #             </li>
    #             <li>
    #                <p>2500-3500 second sleep/delay (500 * 2, exponential backoff)</p>
    #             </li>
    #             <li>
    #                <p>3500-4500 third attempt</p>
    #             </li>
    #             <li>
    #                <p>4500-6500 third sleep/delay (500 * 2^2)</p>
    #             </li>
    #             <li>
    #                <p>6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds
    #                     have elapsed since the first attempt reached TC)</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class TransactionInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The DynamoDB resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the DynamoDB resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a request to perform an <code>UpdateItem</code> operation.</p>
    # @!attribute key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new value(s) for them.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Name of the table for the <code>UpdateItem</code> request. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Update</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   @return [String]
    class Update < Struct.new(
      nil,
      :key,
      :update_expression,
      :table_name,
      :condition_expression,
      :expression_attribute_names,
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    #   @return [String]
    # @!attribute point_in_time_recovery_specification
    #   <p>Represents the settings used to enable point in time recovery.</p>
    #   @return [Types::PointInTimeRecoverySpecification]
    class UpdateContinuousBackupsInput < Struct.new(
      nil,
      :table_name,
      :point_in_time_recovery_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_backups_description
    #   <p>Represents the continuous backups and point in time recovery settings on the
    #               table.</p>
    #   @return [Types::ContinuousBackupsDescription]
    class UpdateContinuousBackupsOutput < Struct.new(
      nil,
      :continuous_backups_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The global secondary index name, if applicable.</p>
    #   @return [String]
    # @!attribute contributor_insights_action
    #   <p>Represents the contributor insights action.</p>
    #   @return [String]
    # @!attribute contributor_insights_mode
    #   <p>Specifies whether to track all access and throttled events or throttled events only for
    #               the DynamoDB table or index.</p>
    #   @return [String]
    class UpdateContributorInsightsInput < Struct.new(
      nil,
      :table_name,
      :index_name,
      :contributor_insights_action,
      :contributor_insights_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index, if applicable.</p>
    #   @return [String]
    # @!attribute contributor_insights_status
    #   <p>The status of contributor insights</p>
    #   @return [String]
    # @!attribute contributor_insights_mode
    #   <p>The updated mode of CloudWatch Contributor Insights that determines whether to monitor
    #               all access and throttled events or to track throttled events exclusively.</p>
    #   @return [String]
    class UpdateContributorInsightsOutput < Struct.new(
      nil,
      :table_name,
      :index_name,
      :contributor_insights_status,
      :contributor_insights_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the new provisioned throughput settings to be applied to a global secondary
    #             index.</p>
    # @!attribute index_name
    #   <p>The name of the global secondary index to be updated.</p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute on_demand_throughput
    #   <p>Updates the maximum number of read and write units for the specified global secondary
    #               index. If you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput value of the new provisioned throughput settings to be
    #               applied to a global secondary index.</p>
    #   @return [Types::WarmThroughput]
    class UpdateGlobalSecondaryIndexAction < Struct.new(
      nil,
      :index_name,
      :provisioned_throughput,
      :on_demand_throughput,
      :warm_throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replica_updates
    #   <p>A list of Regions that should be added or removed from the global table.</p>
    #   @return [Array<Types::ReplicaUpdate>]
    class UpdateGlobalTableInput < Struct.new(
      nil,
      :global_table_name,
      :replica_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [Types::GlobalTableDescription]
    class UpdateGlobalTableOutput < Struct.new(
      nil,
      :global_table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The name of the global table</p>
    #   @return [String]
    # @!attribute global_table_billing_mode
    #   <p>The billing mode of the global table. If <code>GlobalTableBillingMode</code> is not
    #               specified, the global table defaults to <code>PROVISIONED</code> capacity billing
    #               mode.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute global_table_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    #   @return [Integer]
    # @!attribute global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing provisioned write capacity for the global
    #               table.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    # @!attribute global_table_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    #   @return [Array<Types::GlobalTableGlobalSecondaryIndexSettingsUpdate>]
    # @!attribute replica_settings_update
    #   <p>Represents the settings for a global table in a Region that will be modified.</p>
    #   @return [Array<Types::ReplicaSettingsUpdate>]
    class UpdateGlobalTableSettingsInput < Struct.new(
      nil,
      :global_table_name,
      :global_table_billing_mode,
      :global_table_provisioned_write_capacity_units,
      :global_table_provisioned_write_capacity_auto_scaling_settings_update,
      :global_table_global_secondary_index_settings_update,
      :replica_settings_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    # @!attribute replica_settings
    #   <p>The Region-specific settings for the global table.</p>
    #   @return [Array<Types::ReplicaSettingsDescription>]
    class UpdateGlobalTableSettingsOutput < Struct.new(
      nil,
      :global_table_name,
      :replica_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateItem</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table containing the item to update. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute attribute_updates
    #   <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValueUpdate>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Types::ExpectedAttributeValue>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear
    #               before or after they are successfully updated. For <code>UpdateItem</code>, the valid
    #               values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - Returns all of the attributes of the item, as they
    #                       appeared before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared
    #                       before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <p>The values returned are strongly consistent.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   @return [String]
    # @!attribute update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new values for them.</p>
    #            <p>The following action values are available for <code>UpdateExpression</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SET</code> - Adds one or more attributes and values to an item. If any of
    #                       these attributes already exist, they are replaced by the new values. You can
    #                       also use <code>SET</code> to add or subtract from an attribute that is of type
    #                       Number. For example: <code>SET myNum = myNum + :val</code>
    #                  </p>
    #                  <p>
    #                     <code>SET</code> supports the following functions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>if_not_exists (path, operand)</code> - if the item does not
    #                               contain an attribute at the specified path, then
    #                                   <code>if_not_exists</code> evaluates to operand; otherwise, it
    #                               evaluates to path. You can use this function to avoid overwriting an
    #                               attribute that may already be present in the item.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>list_append (operand, operand)</code> - evaluates to a list with a
    #                               new element added to it. You can append the new element to the start or
    #                               the end of the list by reversing the order of the operands.</p>
    #                     </li>
    #                  </ul>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - Removes one or more attributes from an item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - Adds the specified value to the item, if the attribute does
    #                       not already exist. If the attribute does exist, then the behavior of
    #                           <code>ADD</code> depends on the data type of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then <code>Value</code> is mathematically added to the
    #                               existing attribute. If <code>Value</code> is a negative number, then it
    #                               is subtracted from the existing attribute.</p>
    #                        <note>
    #                           <p>If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses <code>0</code> as the initial value.</p>
    #                           <p>Similarly, if you use <code>ADD</code> for an existing item to
    #                                   increment or decrement an attribute value that doesn't exist before
    #                                   the update, DynamoDB uses <code>0</code> as the initial value. For
    #                                   example, suppose that the item you want to update doesn't have an
    #                                   attribute named <code>itemcount</code>, but you decide to
    #                                       <code>ADD</code> the number <code>3</code> to this attribute
    #                                   anyway. DynamoDB will create the <code>itemcount</code> attribute,
    #                                   set its initial value to <code>0</code>, and finally add
    #                                       <code>3</code> to it. The result will be a new
    #                                       <code>itemcount</code> attribute in the item, with a value of
    #                                       <code>3</code>.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>If the existing data type is a set and if <code>Value</code> is also a
    #                               set, then <code>Value</code> is added to the existing set. For example,
    #                               if the attribute value is the set <code>[1,2]</code>, and the
    #                                   <code>ADD</code> action specified <code>[3]</code>, then the final
    #                               attribute value is <code>[1,2,3]</code>. An error occurs if an
    #                                   <code>ADD</code> action is specified for a set attribute and the
    #                               attribute type specified does not match the existing set type. </p>
    #                        <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings.</p>
    #                     </li>
    #                  </ul>
    #                  <important>
    #                     <p>The <code>ADD</code> action only supports Number and set data types.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes an element from a set.</p>
    #                  <p>If a set of values is specified, then those values are subtracted from the old
    #                       set. For example, if the attribute value was the set <code>[a,b,c]</code> and
    #                       the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final
    #                       attribute value is <code>[b]</code>. Specifying an empty set is an error.</p>
    #                  <important>
    #                     <p>The <code>DELETE</code> action only supports set data types.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #            <p>You can have many actions in a single expression, such as the following: <code>SET
    #                   a=:value1, b=:value2 DELETE :value3, :value4, :value5</code>
    #            </p>
    #            <p>For more information on update expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying
    #                   Items and Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.) To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an <code>UpdateItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   @return [String]
    class UpdateItemInput < Struct.new(
      nil,
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
      :expression_attribute_values,
      :return_values_on_condition_check_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateItem</code> operation.</p>
    # @!attribute attributes
    #   <p>A map of attribute values as they appear before or after the <code>UpdateItem</code>
    #               operation, as determined by the <code>ReturnValues</code> parameter.</p>
    #            <p>The <code>Attributes</code> map is only present if the update was successful and
    #                   <code>ReturnValues</code> was specified as something other than <code>NONE</code> in
    #               the request. Each element represents one attribute.</p>
    #   @return [Hash<String, Types::AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>UpdateItem</code> operation. The data
    #               returned includes the total provisioned throughput consumed, along with statistics for
    #               the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
    #               only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
    #               more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#write-operation-consumption">Capacity unity consumption for write operations</a> in the <i>Amazon
    #                   DynamoDB Developer Guide</i>.</p>
    #            <p>If the table has vector indexes, the response includes a
    #               <code>VectorIndexes</code> field with <code>VectorWriteRequestBytes</code> consumed
    #               for each affected vector index.</p>
    #   @return [Types::ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only
    #               returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
    #               table does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ItemCollectionMetrics]
    class UpdateItemOutput < Struct.new(
      nil,
      :attributes,
      :consumed_capacity,
      :item_collection_metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables updating the configuration for Kinesis Streaming.</p>
    # @!attribute approximate_creation_date_time_precision
    #   <p>Enables updating the precision of Kinesis data stream timestamp. </p>
    #   @return [String]
    class UpdateKinesisStreamingConfiguration < Struct.new(
      nil,
      :approximate_creation_date_time_precision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The table name for the Kinesis streaming destination input. You can also provide the
    #               ARN of the table in this parameter.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the Kinesis stream input.</p>
    #   @return [String]
    # @!attribute update_kinesis_streaming_configuration
    #   <p>The command to update the Kinesis stream configuration.</p>
    #   @return [Types::UpdateKinesisStreamingConfiguration]
    class UpdateKinesisStreamingDestinationInput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :update_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The table name for the Kinesis streaming destination output.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the Kinesis stream input.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The status of the attempt to update the Kinesis streaming destination output.</p>
    #   @return [String]
    # @!attribute update_kinesis_streaming_configuration
    #   <p>The command to update the Kinesis streaming destination configuration.</p>
    #   @return [Types::UpdateKinesisStreamingConfiguration]
    class UpdateKinesisStreamingDestinationOutput < Struct.new(
      nil,
      :table_name,
      :stream_arn,
      :destination_status,
      :update_kinesis_streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a replica to be modified.</p>
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key of the replica that should be used for KMS
    #               encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or
    #               alias ARN. Note that you should only provide this parameter if the key is different from
    #               the default DynamoDB KMS key <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not specified, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [Types::ProvisionedThroughputOverride]
    # @!attribute on_demand_throughput_override
    #   <p>Overrides the maximum on-demand throughput for the replica table.</p>
    #   @return [Types::OnDemandThroughputOverride]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<Types::ReplicaGlobalSecondaryIndex>]
    # @!attribute table_class_override
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   @return [String]
    class UpdateReplicationGroupMemberAction < Struct.new(
      nil,
      :region_name,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :on_demand_throughput_override,
      :global_secondary_indexes,
      :table_class_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateTable</code> operation.</p>
    # @!attribute attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes. If you
    #               are adding a new global secondary index to the table, <code>AttributeDefinitions</code>
    #               must include the key element(s) of the new index.</p>
    #   @return [Array<Types::AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table to be updated. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. When switching from pay-per-request to provisioned capacity, initial
    #               provisioned capacity values must be set. The initial provisioned capacity values are
    #               estimated based on the consumed read and write capacity of your table and global
    #               secondary indexes over the past 30 minutes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for most DynamoDB workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       steady workloads with predictable growth where capacity requirements can be
    #                       reliably forecasted. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>The new provisioned throughput settings for the specified table or index.</p>
    #   @return [Types::ProvisionedThroughput]
    # @!attribute global_secondary_index_updates
    #   <p>An array of one or more global secondary indexes for the table. For each index in the
    #               array, you can request one action:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Create</code> - add a new global secondary index to the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Update</code> - modify the provisioned throughput settings of an existing
    #                       global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> - remove a global secondary index from the table.</p>
    #               </li>
    #            </ul>
    #            <p>You can create or delete only one global secondary index per <code>UpdateTable</code>
    #               operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global
    #                   Secondary Indexes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>. </p>
    #   @return [Array<Types::GlobalSecondaryIndexUpdate>]
    # @!attribute stream_specification
    #   <p>Represents the DynamoDB Streams configuration for the table.</p>
    #            <note>
    #               <p>You receive a <code>ValidationException</code> if you try to enable a stream on a
    #                   table that already has a stream, or if you try to disable a stream on a table that
    #                   doesn't have a stream.</p>
    #            </note>
    #   @return [Types::StreamSpecification]
    # @!attribute sse_specification
    #   <p>The new server-side encryption settings for the specified table.</p>
    #   @return [Types::SSESpecification]
    # @!attribute replica_updates
    #   <p>A list of replica update actions (create, delete, or update) for the table.</p>
    #   @return [Array<Types::ReplicationGroupUpdate>]
    # @!attribute table_class
    #   <p>The table class of the table to be updated. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on
    #               the table.</p>
    #   @return [Boolean]
    # @!attribute multi_region_consistency
    #   <p>Specifies the consistency mode for a new global table. This parameter is only valid
    #               when you create a global table by specifying one or more <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ReplicationGroupUpdate.html#DDB-Type-ReplicationGroupUpdate-Create">Create</a> actions in the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html#DDB-UpdateTable-request-ReplicaUpdates">ReplicaUpdates</a> action list.</p>
    #            <p>You can specify one of the following consistency modes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVENTUAL</code>: Configures a new global table for multi-Region eventual
    #                       consistency (MREC). This is the default consistency mode for global
    #                       tables.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STRONG</code>: Configures a new global table for multi-Region strong
    #                       consistency (MRSC).</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify this field, the global table consistency mode defaults to
    #                   <code>EVENTUAL</code>. For more information about global tables consistency modes,
    #               see <a href="https://docs.aws.amazon.com/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes">
    #                   Consistency modes</a> in DynamoDB developer guide. </p>
    #   @return [String]
    # @!attribute global_table_witness_updates
    #   <p>A list of witness updates for a  MRSC global table. A witness provides a cost-effective
    #               alternative to a full replica in a MRSC global table by maintaining replicated change
    #               data written to global table replicas. You cannot perform read or write operations on a
    #               witness. For each witness, you can request one action:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Create</code> - add a new witness to the global table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> - remove a witness from the global table.</p>
    #               </li>
    #            </ul>
    #            <p>You can create or delete only one witness per <code>UpdateTable</code>
    #               operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes">Multi-Region strong consistency (MRSC)</a> in the Amazon DynamoDB
    #               Developer Guide</p>
    #   @return [Array<Types::GlobalTableWitnessGroupUpdate>]
    # @!attribute on_demand_throughput
    #   <p>Updates the maximum number of read and write units for the specified table in
    #               on-demand capacity mode. If you use this parameter, you must specify
    #                   <code>MaxReadRequestUnits</code>, <code>MaxWriteRequestUnits</code>, or both.</p>
    #   @return [Types::OnDemandThroughput]
    # @!attribute warm_throughput
    #   <p>Represents the warm throughput (in read units per second and write units per second)
    #               for updating a table.</p>
    #   @return [Types::WarmThroughput]
    # @!attribute global_table_settings_replication_mode
    #   <p>Controls the settings replication mode for a global table replica. This attribute can be defined
    #               using UpdateTable operation only on a regional table with values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: Defines settings replication on a regional table to be used as a
    #                       source table for creating Multi-Account Global Table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: Remove settings replication on a regional table. Settings replication needs
    #                       to be defined to ENABLED again in order to create a Multi-Account Global Table using this table.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vector_index_updates
    #   <p>A list of vector indexes to be added to or removed from the table. You can add or
    #               remove one vector index for each <code>UpdateTable</code> operation.</p>
    #            <p>To add a vector index, specify <code>IndexName</code>,
    #               <code>VectorAttribute</code>, <code>Dimensions</code>,
    #               <code>DistanceFunction</code>, and <code>Projection</code>. To remove a vector
    #               index, specify only the <code>IndexName</code>.</p>
    #   @return [Array<Types::VectorIndexUpdate>]
    class UpdateTableInput < Struct.new(
      nil,
      :attribute_definitions,
      :table_name,
      :billing_mode,
      :provisioned_throughput,
      :global_secondary_index_updates,
      :stream_specification,
      :sse_specification,
      :replica_updates,
      :table_class,
      :deletion_protection_enabled,
      :multi_region_consistency,
      :global_table_witness_updates,
      :on_demand_throughput,
      :warm_throughput,
      :global_table_settings_replication_mode,
      :vector_index_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateTable</code> operation.</p>
    # @!attribute table_description
    #   <p>Represents the properties of the table.</p>
    #   @return [Types::TableDescription]
    class UpdateTableOutput < Struct.new(
      nil,
      :table_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_secondary_index_updates
    #   <p>Represents the auto scaling settings of the global secondary indexes of the replica to
    #               be updated.</p>
    #   @return [Array<Types::GlobalSecondaryIndexAutoScalingUpdate>]
    # @!attribute table_name
    #   <p>The name of the global table to be updated. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [Types::AutoScalingSettingsUpdate]
    # @!attribute replica_updates
    #   <p>Represents the auto scaling settings of replicas of the table that will be
    #               modified.</p>
    #   @return [Array<Types::ReplicaAutoScalingUpdate>]
    class UpdateTableReplicaAutoScalingInput < Struct.new(
      nil,
      :global_secondary_index_updates,
      :table_name,
      :provisioned_write_capacity_auto_scaling_update,
      :replica_updates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_auto_scaling_description
    #   <p>Returns information about the auto scaling settings of a table with replicas.</p>
    #   @return [Types::TableAutoScalingDescription]
    class UpdateTableReplicaAutoScalingOutput < Struct.new(
      nil,
      :table_auto_scaling_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateTimeToLive</code> operation.</p>
    # @!attribute table_name
    #   <p>The name of the table to be configured. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    #   @return [String]
    # @!attribute time_to_live_specification
    #   <p>Represents the settings used to enable or disable Time to Live for the specified
    #               table.</p>
    #   @return [Types::TimeToLiveSpecification]
    class UpdateTimeToLiveInput < Struct.new(
      nil,
      :table_name,
      :time_to_live_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute time_to_live_specification
    #   <p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>
    #   @return [Types::TimeToLiveSpecification]
    class UpdateTimeToLiveOutput < Struct.new(
      nil,
      :time_to_live_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of a vector attribute for a vector index.</p>
    # @!attribute attribute_name
    #   <p>The name of the vector attribute.</p>
    #   @return [String]
    class VectorAttributeDefinition < Struct.new(
      nil,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The consumed capacity for vector index operations, including vector search request bytes
    #             and vector write request bytes.</p>
    # @!attribute vector_search_request_bytes
    #   <p>The number of vector search request bytes consumed by a
    #               <code>SearchVectors</code> operation.</p>
    #   @return [Float]
    # @!attribute vector_write_request_bytes
    #   <p>The number of vector write request bytes consumed when writing to a vector index.
    #               Reported for write operations that modify attributes indexed by a vector
    #               index.</p>
    #   @return [Float]
    class VectorCapacity < Struct.new(
      nil,
      :vector_search_request_bytes,
      :vector_write_request_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for a vector index, including the index name,
    #             vector attribute, dimensions, distance function, search schema, and
    #             projection.</p>
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute vector_attribute
    #   <p>The vector attribute configuration for the index.</p>
    #   @return [Types::VectorAttributeDefinition]
    # @!attribute search_schema
    #   <p>The search schema that defines partition key and inline filter attributes for
    #               the vector index.</p>
    #   @return [Array<Types::SearchSchemaElement>]
    # @!attribute projection
    #   <p>Specifies attributes that are copied (projected) from the table into the vector
    #               index.</p>
    #   @return [Types::Projection]
    # @!attribute dimensions
    #   <p>The number of dimensions in each vector.</p>
    #   @return [Integer]
    # @!attribute distance_function
    #   <p>The distance function used to calculate similarity between vectors. Valid values:
    #               <code>COSINE</code>, <code>EUCLIDEAN</code>, <code>DOT_PRODUCT</code>.</p>
    #   @return [String]
    class VectorIndex < Struct.new(
      nil,
      :index_name,
      :vector_attribute,
      :search_schema,
      :projection,
      :dimensions,
      :distance_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the current state and configuration of a vector index, including its
    #             status, size, item count, and the settings specified when the index was
    #             created.</p>
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute search_schema
    #   <p>The search schema that defines partition key and inline filter attributes for
    #               the vector index.</p>
    #   @return [Array<Types::SearchSchemaElement>]
    # @!attribute projection
    #   <p>Specifies attributes that are copied (projected) from the table into the vector
    #               index.</p>
    #   @return [Types::Projection]
    # @!attribute vector_attribute
    #   <p>The vector attribute configuration for the index.</p>
    #   @return [Types::VectorAttributeDefinition]
    # @!attribute dimensions
    #   <p>The number of dimensions in each vector.</p>
    #   @return [Integer]
    # @!attribute distance_function
    #   <p>The distance function used to calculate similarity between vectors.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>The current state of the vector index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The index is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The index is being deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute backfilling
    #   <p>Specifies whether the index is currently backfilling. During backfill,
    #               <code>SearchVectors</code> operations might return incomplete results.</p>
    #   @return [Boolean]
    # @!attribute index_size_bytes
    #   <p>The total size of the vector index, in bytes. Amazon DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items indexed in the vector index. Amazon DynamoDB updates this
    #               value approximately every six hours. Recent changes might not be reflected in
    #               this value.</p>
    #   @return [Integer]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the vector index.</p>
    #   @return [String]
    class VectorIndexDescription < Struct.new(
      nil,
      :index_name,
      :search_schema,
      :projection,
      :vector_attribute,
      :dimensions,
      :distance_function,
      :index_status,
      :backfilling,
      :index_size_bytes,
      :item_count,
      :index_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration of a vector index as it existed at the time a backup
    #             was created.</p>
    # @!attribute index_name
    #   <p>The name of the vector index.</p>
    #   @return [String]
    # @!attribute vector_attribute
    #   <p>The vector attribute configuration for the index.</p>
    #   @return [Types::VectorAttributeDefinition]
    # @!attribute search_schema
    #   <p>The search schema that defines partition key and inline filter attributes for
    #               the vector index.</p>
    #   @return [Array<Types::SearchSchemaElement>]
    # @!attribute projection
    #   <p>Specifies attributes that are copied (projected) from the table into the vector
    #               index.</p>
    #   @return [Types::Projection]
    # @!attribute dimensions
    #   <p>The number of dimensions in each vector.</p>
    #   @return [Integer]
    # @!attribute distance_function
    #   <p>The distance function used to calculate similarity between vectors.</p>
    #   @return [String]
    class VectorIndexInfo < Struct.new(
      nil,
      :index_name,
      :vector_attribute,
      :search_schema,
      :projection,
      :dimensions,
      :distance_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A vector index to be added to or removed from a table.</p>
    # @!attribute create
    #   <p>The configuration for creating a new vector index on the table.</p>
    #   @return [Types::CreateVectorIndexAction]
    # @!attribute delete
    #   <p>The configuration for deleting an existing vector index from the table.</p>
    #   @return [Types::DeleteVectorIndexAction]
    class VectorIndexUpdate < Struct.new(
      nil,
      :create,
      :delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides visibility into the number of read and write operations your table or
    #             secondary index can instantaneously support. The settings can be modified using the
    #                 <code>UpdateTable</code> operation to meet the throughput requirements of an
    #             upcoming peak event.</p>
    # @!attribute read_units_per_second
    #   <p>Represents the number of read operations your base table can instantaneously
    #               support.</p>
    #   @return [Integer]
    # @!attribute write_units_per_second
    #   <p>Represents the number of write operations your base table can instantaneously
    #               support.</p>
    #   @return [Integer]
    class WarmThroughput < Struct.new(
      nil,
      :read_units_per_second,
      :write_units_per_second,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an operation to perform - either <code>DeleteItem</code> or
    #                 <code>PutItem</code>. You can only request one of these operations, not both, in a
    #             single <code>WriteRequest</code>. If you do need to perform both of these operations,
    #             you need to provide two separate <code>WriteRequest</code> objects.</p>
    # @!attribute put_request
    #   <p>A request to perform a <code>PutItem</code> operation.</p>
    #   @return [Types::PutRequest]
    # @!attribute delete_request
    #   <p>A request to perform a <code>DeleteItem</code> operation.</p>
    #   @return [Types::DeleteRequest]
    class WriteRequest < Struct.new(
      nil,
      :put_request,
      :delete_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
