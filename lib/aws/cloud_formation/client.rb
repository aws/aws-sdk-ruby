# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module AWS
  class CloudFormation

    # Client class for AWS CloudFormation.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[
        :describe_adjustment_types,
        :describe_auto_scaling_groups,
        :describe_auto_scaling_instances,
        :describe_auto_scaling_notification_types,
        :describe_launch_configurations,
        :describe_metric_collection_types,
        :describe_notification_configurations,
        :describe_policies,
        :describe_scaling_activities,
        :describe_scaling_process_types,
        :describe_scheduled_actions,
        :describe_tags,
      ]

      # client methods #

      # @!method cancel_update_stack(options = {})
      # Calls the CancelUpdateStack API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or the unique
      #     identifier associated with the stack.
      # @return [Core::Response]

      # @!method create_stack(options = {})
      # Calls the CreateStack API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name associated with the
      #     stack. The name must be unique within your AWS account. Must
      #     contain only alphanumeric characters (case sensitive) and start
      #     with an alpha character. Maximum length of the name is 255
      #     characters.
      #   * `:template_body` - (String) Structure containing the template body.
      #     (For more information, go to the AWS CloudFormation User Guide.)
      #     Conditional: You must pass TemplateBody or TemplateURL. If both are
      #     passed, only TemplateBody is used.
      #   * `:template_url` - (String) Location of file containing the template
      #     body. The URL must point to a template (max size: 307,200 bytes)
      #     located in an S3 bucket in the same region as the stack. For more
      #     information, go to the AWS CloudFormation User Guide. Conditional:
      #     You must pass TemplateURL or TemplateBody. If both are passed, only
      #     TemplateBody is used.
      #   * `:parameters` - (Array<Hash>) A list of Parameter structures that
      #     specify input parameters for the stack.
      #     * `:parameter_key` - (String) The key associated with the
      #       parameter.
      #     * `:parameter_value` - (String) The value associated with the
      #       parameter.
      #   * `:disable_rollback` - (Boolean) Set to `true` to disable rollback
      #     of the stack if stack creation failed. You can specify either
      #     DisableRollback or OnFailure, but not both. Default: `false`
      #   * `:timeout_in_minutes` - (Integer) The amount of time that can pass
      #     before the stack status becomes CREATE_FAILED; if DisableRollback
      #     is not set or is set to `false` , the stack will be rolled back.
      #   * `:notification_arns` - (Array<String>) The Simple Notification
      #     Service (SNS) topic ARNs to publish stack related events. You can
      #     find your SNS topic ARNs using the SNS console or your Command Line
      #     Interface (CLI).
      #   * `:capabilities` - (Array<String>) The list of capabilities that you
      #     want to allow in the stack. If your template contains IAM
      #     resources, you must specify the CAPABILITY_IAM value for this
      #     parameter; otherwise, this action returns an
      #     InsufficientCapabilities error. IAM resources are the following:
      #     AWS::IAM::AccessKey, AWS::IAM::Group, AWS::IAM::Policy,
      #     AWS::IAM::User, and AWS::IAM::UserToGroupAddition.
      #   * `:on_failure` - (String) Determines what action will be taken if
      #     stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or
      #     DELETE. You can specify either OnFailure or DisableRollback, but
      #     not both. Default: ROLLBACK Valid values include:
      #     * `DO_NOTHING`
      #     * `ROLLBACK`
      #     * `DELETE`
      #   * `:tags` - (Array<Hash>) A set of user-defined Tags to associate
      #     with this stack, represented by key/value pairs. Tags defined for
      #     the stack are propogated to EC2 resources that are created as part
      #     of the stack. A maximum number of 10 tags can be specified.
      #     * `:key` - (String) Required. A string used to identify this tag.
      #       You can specify a maximum of 128 characters for a tag key. Tags
      #       owned by Amazon Web Services (AWS) have the reserved prefix:
      #       aws:.
      #     * `:value` - (String) Required. A string containing the value for
      #       this tag. You can specify a maximum of 256 characters for a tag
      #       value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_id` - (String)

      # @!method delete_stack(options = {})
      # Calls the DeleteStack API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or the unique
      #     identifier associated with the stack.
      # @return [Core::Response]

      # @!method describe_stack_events(options = {})
      # Calls the DescribeStackEvents API operation.
      # @param [Hash] options
      #   * `:stack_name` - (String) The name or the unique identifier
      #     associated with the stack. Default: There is no default value.
      #   * `:next_token` - (String) String that identifies the start of the
      #     next list of events, if there is one. Default: There is no default
      #     value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_events` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:event_id` - (String)
      #     * `:stack_name` - (String)
      #     * `:logical_resource_id` - (String)
      #     * `:physical_resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:timestamp` - (Time)
      #     * `:resource_status` - (String)
      #     * `:resource_status_reason` - (String)
      #     * `:resource_properties` - (String)
      #   * `:next_token` - (String)

      # @!method describe_stack_resource(options = {})
      # Calls the DescribeStackResource API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or the unique
      #     identifier associated with the stack. Default: There is no default
      #     value.
      #   * `:logical_resource_id` - *required* - (String) The logical name of
      #     the resource as specified in the template. Default: There is no
      #     default value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_resource_detail` - (Hash)
      #     * `:stack_name` - (String)
      #     * `:stack_id` - (String)
      #     * `:logical_resource_id` - (String)
      #     * `:physical_resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:last_updated_timestamp` - (Time)
      #     * `:resource_status` - (String)
      #     * `:resource_status_reason` - (String)
      #     * `:description` - (String)
      #     * `:metadata` - (String)

      # @!method describe_stack_resources(options = {})
      # Calls the DescribeStackResources API operation.
      # @param [Hash] options
      #   * `:stack_name` - (String) The name or the unique identifier
      #     associated with the stack. Required: Conditional. If you do not
      #     specify StackName, you must specify PhysicalResourceId. Default:
      #     There is no default value.
      #   * `:logical_resource_id` - (String) The logical name of the resource
      #     as specified in the template. Default: There is no default value.
      #   * `:physical_resource_id` - (String) The name or unique identifier
      #     that corresponds to a physical instance ID of a resource supported
      #     by AWS CloudFormation. For example, for an Amazon Elastic Compute
      #     Cloud (EC2) instance, PhysicalResourceId corresponds to the
      #     InstanceId. You can pass the EC2 InstanceId to
      #     DescribeStackResources to find which stack the instance belongs to
      #     and what other resources are part of the stack. Required:
      #     Conditional. If you do not specify PhysicalResourceId, you must
      #     specify StackName. Default: There is no default value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_resources` - (Array<Hash>)
      #     * `:stack_name` - (String)
      #     * `:stack_id` - (String)
      #     * `:logical_resource_id` - (String)
      #     * `:physical_resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:timestamp` - (Time)
      #     * `:resource_status` - (String)
      #     * `:resource_status_reason` - (String)
      #     * `:description` - (String)

      # @!method describe_stacks(options = {})
      # Calls the DescribeStacks API operation.
      # @param [Hash] options
      #   * `:stack_name` - (String) The name or the unique identifier
      #     associated with the stack. Default: There is no default value.
      #   * `:next_token` - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stacks` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:stack_name` - (String)
      #     * `:description` - (String)
      #     * `:parameters` - (Array<Hash>)
      #       * `:parameter_key` - (String)
      #       * `:parameter_value` - (String)
      #     * `:creation_time` - (Time)
      #     * `:last_updated_time` - (Time)
      #     * `:stack_status` - (String)
      #     * `:stack_status_reason` - (String)
      #     * `:disable_rollback` - (Boolean)
      #     * `:notification_arns` - (Array<String>)
      #     * `:timeout_in_minutes` - (Integer)
      #     * `:capabilities` - (Array<String>)
      #     * `:outputs` - (Array<Hash>)
      #       * `:output_key` - (String)
      #       * `:output_value` - (String)
      #       * `:description` - (String)
      #     * `:tags` - (Array<Hash>)
      #       * `:key` - (String)
      #       * `:value` - (String)
      #   * `:next_token` - (String)

      # @!method estimate_template_cost(options = {})
      # Calls the EstimateTemplateCost API operation.
      # @param [Hash] options
      #   * `:template_body` - (String) Structure containing the template body.
      #     (For more information, go to the AWS CloudFormation User Guide.)
      #     Conditional: You must pass TemplateBody or TemplateURL. If both are
      #     passed, only TemplateBody is used.
      #   * `:template_url` - (String) Location of file containing the template
      #     body. The URL must point to a template located in an S3 bucket in
      #     the same region as the stack. For more information, go to the AWS
      #     CloudFormation User Guide. Conditional: You must pass TemplateURL
      #     or TemplateBody. If both are passed, only TemplateBody is used.
      #   * `:parameters` - (Array<Hash>) A list of Parameter structures that
      #     specify input parameters.
      #     * `:parameter_key` - (String) The key associated with the
      #       parameter.
      #     * `:parameter_value` - (String) The value associated with the
      #       parameter.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:url` - (String)

      # @!method get_template(options = {})
      # Calls the GetTemplate API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or the unique
      #     identifier associated with the stack.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:template_body` - (String)

      # @!method list_stack_resources(options = {})
      # Calls the ListStackResources API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or the unique
      #     identifier associated with the stack. Default: There is no default
      #     value.
      #   * `:next_token` - (String) String that identifies the start of the
      #     next list of stack resource summaries, if there is one. Default:
      #     There is no default value.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_resource_summaries` - (Array<Hash>)
      #     * `:logical_resource_id` - (String)
      #     * `:physical_resource_id` - (String)
      #     * `:resource_type` - (String)
      #     * `:last_updated_timestamp` - (Time)
      #     * `:resource_status` - (String)
      #     * `:resource_status_reason` - (String)
      #   * `:next_token` - (String)

      # @!method list_stacks(options = {})
      # Calls the ListStacks API operation.
      # @param [Hash] options
      #   * `:next_token` - (String) String that identifies the start of the
      #     next list of stacks, if there is one. Default: There is no default
      #     value.
      #   * `:stack_status_filter` - (Array<String>) Stack status to use as a
      #     filter. Specify one or more stack status codes to list only stacks
      #     with the specified status codes. For a complete list of stack
      #     status codes, see the StackStatus parameter of the Stack data type.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_summaries` - (Array<Hash>)
      #     * `:stack_id` - (String)
      #     * `:stack_name` - (String)
      #     * `:template_description` - (String)
      #     * `:creation_time` - (Time)
      #     * `:last_updated_time` - (Time)
      #     * `:deletion_time` - (Time)
      #     * `:stack_status` - (String)
      #     * `:stack_status_reason` - (String)
      #   * `:next_token` - (String)

      # @!method update_stack(options = {})
      # Calls the UpdateStack API operation.
      # @param [Hash] options
      #   * `:stack_name` - *required* - (String) The name or stack ID of the
      #     stack to update. Must contain only alphanumeric characters (case
      #     sensitive) and start with an alpha character. Maximum length of the
      #     name is 255 characters.
      #   * `:template_body` - (String) Structure containing the template body.
      #     (For more information, go to the AWS CloudFormation User Guide.)
      #     Conditional: You must pass TemplateBody or TemplateURL. If both are
      #     passed, only TemplateBody is used.
      #   * `:template_url` - (String) Location of file containing the template
      #     body. The URL must point to a template located in an S3 bucket in
      #     the same region as the stack. For more information, go to the AWS
      #     CloudFormation User Guide. Conditional: You must pass TemplateURL
      #     or TemplateBody. If both are passed, only TemplateBody is used.
      #   * `:parameters` - (Array<Hash>) A list of Parameter structures that
      #     specify input parameters for the stack.
      #     * `:parameter_key` - (String) The key associated with the
      #       parameter.
      #     * `:parameter_value` - (String) The value associated with the
      #       parameter.
      #   * `:capabilities` - (Array<String>) The list of capabilities that you
      #     want to allow in the stack. If your stack contains IAM resources,
      #     you must specify the CAPABILITY_IAM value for this parameter;
      #     otherwise, this action returns an InsufficientCapabilities error.
      #     IAM resources are the following: AWS::IAM::AccessKey,
      #     AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::User, and
      #     AWS::IAM::UserToGroupAddition.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:stack_id` - (String)

      # @!method validate_template(options = {})
      # Calls the ValidateTemplate API operation.
      # @param [Hash] options
      #   * `:template_body` - (String) String containing the template body.
      #     (For more information, go to the AWS CloudFormation User Guide.)
      #     Conditional: You must pass TemplateURL or TemplateBody. If both are
      #     passed, only TemplateBody is used.
      #   * `:template_url` - (String) Location of file containing the template
      #     body. The URL must point to a template (max size: 307,200 bytes)
      #     located in an S3 bucket in the same region as the stack. For more
      #     information, go to the AWS CloudFormation User Guide. Conditional:
      #     You must pass TemplateURL or TemplateBody. If both are passed, only
      #     TemplateBody is used.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:parameters` - (Array<Hash>)
      #     * `:parameter_key` - (String)
      #     * `:default_value` - (String)
      #     * `:no_echo` - (Boolean)
      #     * `:description` - (String)
      #   * `:description` - (String)
      #   * `:capabilities` - (Array<String>)
      #   * `:capabilities_reason` - (String)

      # end client methods #

      define_client_methods('2010-05-15')

    end
  end
end
