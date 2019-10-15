# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM
  module Types

    # @note When making an API call, you may pass CreateLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         execution_role_arn: "ExecutionRoleArn", # required
    #         description: "PolicyDescription", # required
    #         state: "ENABLED", # required, accepts ENABLED, DISABLED
    #         policy_details: { # required
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           target_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           schedules: [
    #             {
    #               name: "ScheduleName",
    #               copy_tags: false,
    #               tags_to_add: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               variable_tags: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               create_rule: {
    #                 interval: 1, # required
    #                 interval_unit: "HOURS", # required, accepts HOURS
    #                 times: ["Time"],
    #               },
    #               retain_rule: {
    #                 count: 1, # required
    #               },
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the lifecycle policy. The characters ^\[0-9A-Za-z
    #   \_-\]+$ are supported.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The desired activation state of the lifecycle policy after creation.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The configuration details of the lifecycle policy.
    #
    #   Target tags cannot be re-used across lifecycle policies.
    #   @return [Types::PolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicyRequest AWS API Documentation
    #
    class CreateLifecyclePolicyRequest < Struct.new(
      :execution_role_arn,
      :description,
      :state,
      :policy_details)
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateLifecyclePolicyResponse AWS API Documentation
    #
    class CreateLifecyclePolicyResponse < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # Specifies when to create snapshots of EBS volumes.
    #
    # @note When making an API call, you may pass CreateRule
    #   data as a hash:
    #
    #       {
    #         interval: 1, # required
    #         interval_unit: "HOURS", # required, accepts HOURS
    #         times: ["Time"],
    #       }
    #
    # @!attribute [rw] interval
    #   The interval between snapshots. The supported values are 2, 3, 4, 6,
    #   8, 12, and 24.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_unit
    #   The interval unit.
    #   @return [String]
    #
    # @!attribute [rw] times
    #   The time, in UTC, to start the operation. The supported format is
    #   hh:mm.
    #
    #   The operation occurs within a one-hour window following the
    #   specified time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/CreateRule AWS API Documentation
    #
    class CreateRule < Struct.new(
      :interval,
      :interval_unit,
      :times)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicyRequest AWS API Documentation
    #
    class DeleteLifecyclePolicyRequest < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/DeleteLifecyclePolicyResponse AWS API Documentation
    #
    class DeleteLifecyclePolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetLifecyclePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         policy_ids: ["PolicyId"],
    #         state: "ENABLED", # accepts ENABLED, DISABLED, ERROR
    #         resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #         target_tags: ["TagFilter"],
    #         tags_to_add: ["TagFilter"],
    #       }
    #
    # @!attribute [rw] policy_ids
    #   The identifiers of the data lifecycle policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The activation state.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   The target tag for a policy.
    #
    #   Tags are strings in the format `key=value`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags_to_add
    #   The tags to add to objects created by the policy.
    #
    #   Tags are strings in the format `key=value`.
    #
    #   These user-defined tags are added in addition to the AWS-added
    #   lifecycle tags.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePoliciesRequest AWS API Documentation
    #
    class GetLifecyclePoliciesRequest < Struct.new(
      :policy_ids,
      :state,
      :resource_types,
      :target_tags,
      :tags_to_add)
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   Summary information about the lifecycle policies.
    #   @return [Array<Types::LifecyclePolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePoliciesResponse AWS API Documentation
    #
    class GetLifecyclePoliciesResponse < Struct.new(
      :policies)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicyRequest AWS API Documentation
    #
    class GetLifecyclePolicyRequest < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Detailed information about the lifecycle policy.
    #   @return [Types::LifecyclePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/GetLifecyclePolicyResponse AWS API Documentation
    #
    class GetLifecyclePolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # The service failed in an unexpected way.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :code)
      include Aws::Structure
    end

    # Bad request. The request is missing required parameters or has invalid
    # parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] required_parameters
    #   The request omitted one or more required parameters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mutually_exclusive_parameters
    #   The request included parameters that cannot be provided together.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :code,
      :required_parameters,
      :mutually_exclusive_parameters)
      include Aws::Structure
    end

    # Detailed information about a lifecycle policy.
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The activation state of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The local date and time when the lifecycle policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_modified
    #   The local date and time when the lifecycle policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_details
    #   The configuration of the lifecycle policy
    #   @return [Types::PolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LifecyclePolicy AWS API Documentation
    #
    class LifecyclePolicy < Struct.new(
      :policy_id,
      :description,
      :state,
      :execution_role_arn,
      :date_created,
      :date_modified,
      :policy_details)
      include Aws::Structure
    end

    # Summary information about a lifecycle policy.
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The activation state of the lifecycle policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LifecyclePolicySummary AWS API Documentation
    #
    class LifecyclePolicySummary < Struct.new(
      :policy_id,
      :description,
      :state)
      include Aws::Structure
    end

    # The request failed because a limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Value is the type of resource for which a limit was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code,
      :resource_type)
      include Aws::Structure
    end

    # Optional parameters that can be added to the policy. The set of valid
    # parameters depends on the combination of `policyType` and
    # `resourceType` values.
    #
    # @note When making an API call, you may pass Parameters
    #   data as a hash:
    #
    #       {
    #         exclude_boot_volume: false,
    #       }
    #
    # @!attribute [rw] exclude_boot_volume
    #   When executing an EBS Snapshot Management – Instance policy, execute
    #   all CreateSnapshots calls with the `excludeBootVolume` set to the
    #   supplied field. Defaults to false. Only valid for EBS Snapshot
    #   Management – Instance policies.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :exclude_boot_volume)
      include Aws::Structure
    end

    # Specifies the configuration of a lifecycle policy.
    #
    # @note When making an API call, you may pass PolicyDetails
    #   data as a hash:
    #
    #       {
    #         policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #         resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #         target_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         schedules: [
    #           {
    #             name: "ScheduleName",
    #             copy_tags: false,
    #             tags_to_add: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               },
    #             ],
    #             variable_tags: [
    #               {
    #                 key: "String", # required
    #                 value: "String", # required
    #               },
    #             ],
    #             create_rule: {
    #               interval: 1, # required
    #               interval_unit: "HOURS", # required, accepts HOURS
    #               times: ["Time"],
    #             },
    #             retain_rule: {
    #               count: 1, # required
    #             },
    #           },
    #         ],
    #         parameters: {
    #           exclude_boot_volume: false,
    #         },
    #       }
    #
    # @!attribute [rw] policy_type
    #   This field determines the valid target resource types and actions a
    #   policy can manage. This field defaults to EBS\_SNAPSHOT\_MANAGEMENT
    #   if not present.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_tags
    #   The single tag that identifies targeted resources for this policy.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] schedules
    #   The schedule of policy-defined actions.
    #   @return [Array<Types::Schedule>]
    #
    # @!attribute [rw] parameters
    #   A set of optional parameters that can be provided by the policy.
    #   @return [Types::Parameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/PolicyDetails AWS API Documentation
    #
    class PolicyDetails < Struct.new(
      :policy_type,
      :resource_types,
      :target_tags,
      :schedules,
      :parameters)
      include Aws::Structure
    end

    # A requested resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Value is the type of resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   Value is a list of resource IDs that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      :resource_type,
      :resource_ids)
      include Aws::Structure
    end

    # Specifies the number of snapshots to keep for each EBS volume.
    #
    # @note When making an API call, you may pass RetainRule
    #   data as a hash:
    #
    #       {
    #         count: 1, # required
    #       }
    #
    # @!attribute [rw] count
    #   The number of snapshots to keep for each volume, up to a maximum of
    #   1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/RetainRule AWS API Documentation
    #
    class RetainRule < Struct.new(
      :count)
      include Aws::Structure
    end

    # Specifies a schedule.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         name: "ScheduleName",
    #         copy_tags: false,
    #         tags_to_add: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         variable_tags: [
    #           {
    #             key: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         create_rule: {
    #           interval: 1, # required
    #           interval_unit: "HOURS", # required, accepts HOURS
    #           times: ["Time"],
    #         },
    #         retain_rule: {
    #           count: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the schedule.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Copy all user-defined tags on a source volume to snapshots of the
    #   volume created by this policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags_to_add
    #   The tags to apply to policy-created resources. These user-defined
    #   tags are in addition to the AWS-added lifecycle tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] variable_tags
    #   A collection of key/value pairs with values determined dynamically
    #   when the policy is executed. Keys may be any valid Amazon EC2 tag
    #   key. Values must be in one of the two following formats:
    #   `$(instance-id)` or `$(timestamp)`. Variable tags are only valid for
    #   EBS Snapshot Management – Instance policies.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] create_rule
    #   The create rule.
    #   @return [Types::CreateRule]
    #
    # @!attribute [rw] retain_rule
    #   The retain rule.
    #   @return [Types::RetainRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :name,
      :copy_tags,
      :tags_to_add,
      :variable_tags,
      :create_rule,
      :retain_rule)
      include Aws::Structure
    end

    # Specifies a tag for a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLifecyclePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         execution_role_arn: "ExecutionRoleArn",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "PolicyDescription",
    #         policy_details: {
    #           policy_type: "EBS_SNAPSHOT_MANAGEMENT", # accepts EBS_SNAPSHOT_MANAGEMENT
    #           resource_types: ["VOLUME"], # accepts VOLUME, INSTANCE
    #           target_tags: [
    #             {
    #               key: "String", # required
    #               value: "String", # required
    #             },
    #           ],
    #           schedules: [
    #             {
    #               name: "ScheduleName",
    #               copy_tags: false,
    #               tags_to_add: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               variable_tags: [
    #                 {
    #                   key: "String", # required
    #                   value: "String", # required
    #                 },
    #               ],
    #               create_rule: {
    #                 interval: 1, # required
    #                 interval_unit: "HOURS", # required, accepts HOURS
    #                 times: ["Time"],
    #               },
    #               retain_rule: {
    #                 count: 1, # required
    #               },
    #             },
    #           ],
    #           parameters: {
    #             exclude_boot_volume: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] policy_id
    #   The identifier of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to run the
    #   operations specified by the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The desired activation state of the lifecycle policy after creation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The configuration of the lifecycle policy.
    #
    #   Target tags cannot be re-used across policies.
    #   @return [Types::PolicyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicyRequest AWS API Documentation
    #
    class UpdateLifecyclePolicyRequest < Struct.new(
      :policy_id,
      :execution_role_arn,
      :state,
      :description,
      :policy_details)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12/UpdateLifecyclePolicyResponse AWS API Documentation
    #
    class UpdateLifecyclePolicyResponse < Aws::EmptyStructure; end

  end
end
