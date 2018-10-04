# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvents
  module Types

    # This structure specifies the VPC subnets and security groups for the
    # task, and whether a public IP address is to be used. This structure is
    # relevant only for ECS tasks that use the `awsvpc` network mode.
    #
    # @note When making an API call, you may pass AwsVpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] subnets
    #   Specifies the subnets associated with the task. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   Specifies the security groups associated with the task. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Specifies whether the task's elastic network interface receives a
    #   public IP address. You can specify `ENABLED` only when `LaunchType`
    #   in `EcsParameters` is set to `FARGATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      include Aws::Structure
    end

    # The array properties for the submitted job, such as the size of the
    # array. The array size can be between 2 and 10,000. If you specify
    # array properties for a job, it becomes an array job. This parameter is
    # used only if the target is an AWS Batch job.
    #
    # @note When making an API call, you may pass BatchArrayProperties
    #   data as a hash:
    #
    #       {
    #         size: 1,
    #       }
    #
    # @!attribute [rw] size
    #   The size of the array, if this is an array batch job. Valid values
    #   are integers between 2 and 10,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchArrayProperties AWS API Documentation
    #
    class BatchArrayProperties < Struct.new(
      :size)
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an AWS Batch job.
    #
    # @note When making an API call, you may pass BatchParameters
    #   data as a hash:
    #
    #       {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #       }
    #
    # @!attribute [rw] job_definition
    #   The ARN or name of the job definition to use if the event target is
    #   an AWS Batch job. This job definition must already exist.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name to use for this execution of the job, if the target is an
    #   AWS Batch job.
    #   @return [String]
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. This parameter
    #   is used only if the target is an AWS Batch job.
    #   @return [Types::BatchArrayProperties]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs, if the target is an AWS
    #   Batch job. The retry strategy is the number of times to retry the
    #   failed job execution. Valid values are 1–10. When you specify a
    #   retry strategy here, it overrides the retry strategy defined in the
    #   job definition.
    #   @return [Types::BatchRetryStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchParameters AWS API Documentation
    #
    class BatchParameters < Struct.new(
      :job_definition,
      :job_name,
      :array_properties,
      :retry_strategy)
      include Aws::Structure
    end

    # The retry strategy to use for failed jobs, if the target is an AWS
    # Batch job. If you specify a retry strategy here, it overrides the
    # retry strategy defined in the job definition.
    #
    # @note When making an API call, you may pass BatchRetryStrategy
    #   data as a hash:
    #
    #       {
    #         attempts: 1,
    #       }
    #
    # @!attribute [rw] attempts
    #   The number of times to attempt to retry, if the job fails. Valid
    #   values are 1–10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchRetryStrategy AWS API Documentation
    #
    class BatchRetryStrategy < Struct.new(
      :attempts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBusRequest AWS API Documentation
    #
    class DescribeEventBusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the event bus. Currently, this is always `default`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account permitted to write
    #   events to the current account.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that enables the external account to send events to your
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBusResponse AWS API Documentation
    #
    class DescribeEventBusResponse < Struct.new(
      :name,
      :arn,
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleRequest AWS API Documentation
    #
    class DescribeRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleResponse AWS API Documentation
    #
    class DescribeRuleResponse < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :schedule_expression,
      :state,
      :description,
      :role_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRuleRequest AWS API Documentation
    #
    class DisableRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an Amazon ECS
    # task.
    #
    # @note When making an API call, you may pass EcsParameters
    #   data as a hash:
    #
    #       {
    #         task_definition_arn: "Arn", # required
    #         task_count: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         group: "String",
    #       }
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition to use if the event target is an
    #   Amazon ECS task.
    #   @return [String]
    #
    # @!attribute [rw] task_count
    #   The number of tasks to create based on `TaskDefinition`. The default
    #   is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   Specifies the launch type on which your task is running. The launch
    #   type that you specify here must match one of the launch type
    #   (compatibilities) of the target task. The `FARGATE` value is
    #   supported only in the Regions where AWS Fargate with Amazon ECS is
    #   supported. For more information, see [AWS Fargate on Amazon ECS][1]
    #   in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Use this structure if the ECS task uses the `awsvpc` network mode.
    #   This structure specifies the VPC subnets and security groups
    #   associated with the task, and whether a public IP address is to be
    #   used. This structure is required if `LaunchType` is `FARGATE`
    #   because the `awsvpc` mode is required for Fargate tasks.
    #
    #   If you specify `NetworkConfiguration` when the target ECS task does
    #   not use the `awsvpc` network mode, the task fails.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] platform_version
    #   Specifies the platform version for the task. Specify only the
    #   numeric portion of the platform version, such as `1.1.0`.
    #
    #   This structure is used only if `LaunchType` is `FARGATE`. For more
    #   information about valid platform versions, see [AWS Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] group
    #   Specifies an ECS task group for the task. The maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EcsParameters AWS API Documentation
    #
    class EcsParameters < Struct.new(
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRuleRequest AWS API Documentation
    #
    class EnableRuleRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # Contains the parameters needed for you to provide custom input to a
    # target based on one or more pieces of data extracted from the event.
    #
    # @note When making an API call, you may pass InputTransformer
    #   data as a hash:
    #
    #       {
    #         input_paths_map: {
    #           "InputTransformerPathKey" => "TargetInputPath",
    #         },
    #         input_template: "TransformerInput", # required
    #       }
    #
    # @!attribute [rw] input_paths_map
    #   Map of JSON paths to be extracted from the event. You can then
    #   insert these in the template in `InputTemplate` to produce the
    #   output you want to be sent to the target.
    #
    #   `InputPathsMap` is an array key-value pairs, where each value is a
    #   valid JSON path. You can have as many as 10 key-value pairs. You
    #   must use JSON dot notation, not bracket notation.
    #
    #   The keys cannot start with "AWS."
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_template
    #   Input template where you specify placeholders that will be filled
    #   with the values of the keys from `InputPathsMap` to customize the
    #   data sent to the target. Enclose each `InputPathsMaps` value in
    #   brackets: &lt;*value*&gt; The InputTemplate must be valid JSON.
    #
    #   If `InputTemplate` is a JSON object (surrounded by curly braces),
    #   the following restrictions apply:
    #
    #   * The placeholder cannot be used as an object key.
    #
    #   * Object values cannot include quote marks.
    #
    #   The following example shows the syntax for using `InputPathsMap` and
    #   `InputTemplate`.
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state <status>"`
    #
    #   `\}`
    #
    #   To have the `InputTemplate` include quote marks within a JSON
    #   string, escape each quote marks with a slash, as in the following
    #   example:
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state "<status>""`
    #
    #   `\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/InputTransformer AWS API Documentation
    #
    class InputTransformer < Struct.new(
      :input_paths_map,
      :input_template)
      include Aws::Structure
    end

    # This object enables you to specify a JSON path to extract from the
    # event and use as the partition key for the Amazon Kinesis data stream,
    # so that you can control the shard to which the event goes. If you do
    # not include this parameter, the default is to use the `eventId` as the
    # partition key.
    #
    # @note When making an API call, you may pass KinesisParameters
    #   data as a hash:
    #
    #       {
    #         partition_key_path: "TargetPartitionKeyPath", # required
    #       }
    #
    # @!attribute [rw] partition_key_path
    #   The JSON path to be extracted from the event and used as the
    #   partition key. For more information, see [Amazon Kinesis Streams Key
    #   Concepts][1] in the *Amazon Kinesis Streams Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/KinesisParameters AWS API Documentation
    #
    class KinesisParameters < Struct.new(
      :partition_key_path)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRuleNamesByTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetArn", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetRequest AWS API Documentation
    #
    class ListRuleNamesByTargetRequest < Struct.new(
      :target_arn,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] rule_names
    #   The names of the rules that can invoke the given target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetResponse AWS API Documentation
    #
    class ListRuleNamesByTargetResponse < Struct.new(
      :rule_names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "RuleName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   The prefix matching the rule name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   The rules that match the specified criteria.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsByRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleRequest AWS API Documentation
    #
    class ListTargetsByRuleRequest < Struct.new(
      :rule,
      :next_token,
      :limit)
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The targets assigned to the rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleResponse AWS API Documentation
    #
    class ListTargetsByRuleResponse < Struct.new(
      :targets,
      :next_token)
      include Aws::Structure
    end

    # This structure specifies the network configuration for an ECS task.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] awsvpc_configuration
    #   Use this structure to specify the VPC subnets and security groups
    #   for the task, and whether a public IP address is to be used. This
    #   structure is relevant only for ECS tasks that use the `awsvpc`
    #   network mode.
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "String",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #   @return [Array<Types::PutEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :entries)
      include Aws::Structure
    end

    # Represents an event to be submitted.
    #
    # @note When making an API call, you may pass PutEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       }
    #
    # @!attribute [rw] time
    #   The time stamp of the event, per [RFC3339][1]. If no time stamp is
    #   provided, the time stamp of the PutEvents call is used.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339.txt
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source of the event. This field is required.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   AWS resources, identified by Amazon Resource Name (ARN), which the
    #   event primarily concerns. Any number, including zero, may be
    #   present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   Free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A valid JSON string. There is no other schema imposed. The JSON
    #   string may contain fields and nested subobjects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequestEntry AWS API Documentation
    #
    class PutEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail)
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   The successfully and unsuccessfully ingested events results. If the
    #   ingestion was successful, the entry has the event ID in it.
    #   Otherwise, you can use the error code and error message to identify
    #   the problem with the entry.
    #   @return [Array<Types::PutEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      include Aws::Structure
    end

    # Represents an event that failed to be submitted.
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the event submission failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the event submission failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResultEntry AWS API Documentation
    #
    class PutEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPermissionRequest
    #   data as a hash:
    #
    #       {
    #         action: "Action", # required
    #         principal: "Principal", # required
    #         statement_id: "StatementId", # required
    #       }
    #
    # @!attribute [rw] action
    #   The action that you are enabling the other account to perform.
    #   Currently, this must be `events:PutEvents`.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The 12-digit AWS account ID that you are permitting to put events to
    #   your default event bus. Specify "*" to permit any account to put
    #   events to your default event bus.
    #
    #   If you specify "*", avoid creating rules that may match
    #   undesirable events. To create more secure rules, make sure that the
    #   event pattern for each rule contains an `account` field with a
    #   specific account ID from which to receive events. Rules with an
    #   account field do not match any events sent from other accounts.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   An identifier string for the external account that you are granting
    #   permissions to. If you later want to revoke the permission for this
    #   external account, specify this `StatementId` when you run
    #   RemovePermission.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPermissionRequest AWS API Documentation
    #
    class PutPermissionRequest < Struct.new(
      :action,
      :principal,
      :statement_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         schedule_expression: "ScheduleExpression",
    #         event_pattern: "EventPattern",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "RuleDescription",
    #         role_arn: "RoleArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule that you are creating or updating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)" or
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleRequest AWS API Documentation
    #
    class PutRuleRequest < Struct.new(
      :name,
      :schedule_expression,
      :event_pattern,
      :state,
      :description,
      :role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleResponse AWS API Documentation
    #
    class PutRuleResponse < Struct.new(
      :rule_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             arn: "TargetArn", # required
    #             role_arn: "RoleArn",
    #             input: "TargetInput",
    #             input_path: "TargetInputPath",
    #             input_transformer: {
    #               input_paths_map: {
    #                 "InputTransformerPathKey" => "TargetInputPath",
    #               },
    #               input_template: "TransformerInput", # required
    #             },
    #             kinesis_parameters: {
    #               partition_key_path: "TargetPartitionKeyPath", # required
    #             },
    #             run_command_parameters: {
    #               run_command_targets: [ # required
    #                 {
    #                   key: "RunCommandTargetKey", # required
    #                   values: ["RunCommandTargetValue"], # required
    #                 },
    #               ],
    #             },
    #             ecs_parameters: {
    #               task_definition_arn: "Arn", # required
    #               task_count: 1,
    #               launch_type: "EC2", # accepts EC2, FARGATE
    #               network_configuration: {
    #                 awsvpc_configuration: {
    #                   subnets: ["String"], # required
    #                   security_groups: ["String"],
    #                   assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               },
    #               platform_version: "String",
    #               group: "String",
    #             },
    #             batch_parameters: {
    #               job_definition: "String", # required
    #               job_name: "String", # required
    #               array_properties: {
    #                 size: 1,
    #               },
    #               retry_strategy: {
    #                 attempts: 1,
    #               },
    #             },
    #             sqs_parameters: {
    #               message_group_id: "MessageGroupId",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to update or add to the rule.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsRequest AWS API Documentation
    #
    class PutTargetsRequest < Struct.new(
      :rule,
      :targets)
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::PutTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResponse AWS API Documentation
    #
    class PutTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      include Aws::Structure
    end

    # Represents a target that failed to be added to a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target addition failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target addition failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResultEntry AWS API Documentation
    #
    class PutTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         statement_id: "StatementId", # required
    #       }
    #
    # @!attribute [rw] statement_id
    #   The statement ID corresponding to the account that is no longer
    #   allowed to put events to the default event bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :statement_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         ids: ["TargetId"], # required
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   The IDs of the targets to remove from the rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsRequest AWS API Documentation
    #
    class RemoveTargetsRequest < Struct.new(
      :rule,
      :ids)
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::RemoveTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResponse AWS API Documentation
    #
    class RemoveTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      include Aws::Structure
    end

    # Represents a target that failed to be removed from a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target removal failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target removal failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResultEntry AWS API Documentation
    #
    class RemoveTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Contains information about a rule in Amazon CloudWatch Events.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern of the rule. For more information, see [Events and
    #   Event Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that is used for target
    #   invocation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :state,
      :description,
      :schedule_expression,
      :role_arn)
      include Aws::Structure
    end

    # This parameter contains the criteria (either InstanceIds or a tag)
    # used to specify which EC2 instances are to be sent the command.
    #
    # @note When making an API call, you may pass RunCommandParameters
    #   data as a hash:
    #
    #       {
    #         run_command_targets: [ # required
    #           {
    #             key: "RunCommandTargetKey", # required
    #             values: ["RunCommandTargetValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] run_command_targets
    #   Currently, we support including only one RunCommandTarget block,
    #   which specifies either an array of InstanceIds or a tag.
    #   @return [Array<Types::RunCommandTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RunCommandParameters AWS API Documentation
    #
    class RunCommandParameters < Struct.new(
      :run_command_targets)
      include Aws::Structure
    end

    # Information about the EC2 instances that are to be sent the command,
    # specified as key-value pairs. Each `RunCommandTarget` block can
    # include only one key, but this key may specify multiple values.
    #
    # @note When making an API call, you may pass RunCommandTarget
    #   data as a hash:
    #
    #       {
    #         key: "RunCommandTargetKey", # required
    #         values: ["RunCommandTargetValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   Can be either `tag:` *tag-key* or `InstanceIds`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   If `Key` is `tag:` *tag-key*, `Values` is a list of tag values. If
    #   `Key` is `InstanceIds`, `Values` is a list of Amazon EC2 instance
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RunCommandTarget AWS API Documentation
    #
    class RunCommandTarget < Struct.new(
      :key,
      :values)
      include Aws::Structure
    end

    # This structure includes the custom parameter to be used when the
    # target is an SQS FIFO queue.
    #
    # @note When making an API call, you may pass SqsParameters
    #   data as a hash:
    #
    #       {
    #         message_group_id: "MessageGroupId",
    #       }
    #
    # @!attribute [rw] message_group_id
    #   The FIFO message group ID to use as the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/SqsParameters AWS API Documentation
    #
    class SqsParameters < Struct.new(
      :message_group_id)
      include Aws::Structure
    end

    # Targets are the resources to be invoked when a rule is triggered. For
    # a complete list of services and resources that can be set as a target,
    # see PutTargets.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath",
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             },
    #           ],
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2", # accepts EC2, FARGATE
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           platform_version: "String",
    #           group: "String",
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1,
    #           },
    #           retry_strategy: {
    #             attempts: 1,
    #           },
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId",
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be used for this
    #   target when the rule is triggered. If one rule triggers multiple
    #   targets, you can use a different IAM role for each target.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Valid JSON text passed to the target. In this case, nothing from the
    #   event itself is passed to the target. For more information, see [The
    #   JavaScript Object Notation (JSON) Data Interchange Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The value of the JSONPath that is used for extracting part of the
    #   matched event when passing it to the target. You must use JSON dot
    #   notation, not bracket notation. For more information about JSON
    #   paths, see [JSONPath][1].
    #
    #
    #
    #   [1]: http://goessner.net/articles/JsonPath/
    #   @return [String]
    #
    # @!attribute [rw] input_transformer
    #   Settings to enable you to provide custom input to a target based on
    #   certain event data. You can extract one or more key-value pairs from
    #   the event and then use that data to send customized input to the
    #   target.
    #   @return [Types::InputTransformer]
    #
    # @!attribute [rw] kinesis_parameters
    #   The custom parameter you can use to control the shard assignment,
    #   when the target is a Kinesis data stream. If you do not include this
    #   parameter, the default is to use the `eventId` as the partition key.
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] run_command_parameters
    #   Parameters used when you are using the rule to invoke Amazon EC2 Run
    #   Command.
    #   @return [Types::RunCommandParameters]
    #
    # @!attribute [rw] ecs_parameters
    #   Contains the Amazon ECS task definition and task count to be used,
    #   if the event target is an Amazon ECS task. For more information
    #   about Amazon ECS tasks, see [Task Definitions ][1] in the *Amazon
    #   EC2 Container Service Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    #   @return [Types::EcsParameters]
    #
    # @!attribute [rw] batch_parameters
    #   If the event target is an AWS Batch job, this contains the job
    #   definition, job name, and other parameters. For more information,
    #   see [Jobs][1] in the *AWS Batch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/batch/latest/userguide/jobs.html
    #   @return [Types::BatchParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   Contains the message group ID to use when the target is a FIFO
    #   queue.
    #
    #   If you specify an SQS FIFO queue as a target, the queue must have
    #   content-based deduplication enabled.
    #   @return [Types::SqsParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Target AWS API Documentation
    #
    class Target < Struct.new(
      :id,
      :arn,
      :role_arn,
      :input,
      :input_path,
      :input_transformer,
      :kinesis_parameters,
      :run_command_parameters,
      :ecs_parameters,
      :batch_parameters,
      :sqs_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestEventPatternRequest
    #   data as a hash:
    #
    #       {
    #         event_pattern: "EventPattern", # required
    #         event: "String", # required
    #       }
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon CloudWatch Events User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event, in JSON format, to test against the event pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternRequest AWS API Documentation
    #
    class TestEventPatternRequest < Struct.new(
      :event_pattern,
      :event)
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   Indicates whether the event matches the event pattern.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternResponse AWS API Documentation
    #
    class TestEventPatternResponse < Struct.new(
      :result)
      include Aws::Structure
    end

  end
end
