# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

      define_client_methods('2010-05-15')

      # @private
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

      ## client methods ##

      # @!method create_stack(options = {})
      # Calls the CreateStack API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      #   * +:template_body+ - (String)
      #   * +:template_url+ - (String)
      #   * +:parameters+ - (Array<Hash>)
      #     * +:parameter_key+ - (String)
      #     * +:parameter_value+ - (String)
      #   * +:disable_rollback+ - (Boolean)
      #   * +:timeout_in_minutes+ - (Integer)
      #   * +:notification_arns+ - (Array<String>)
      #   * +:capabilities+ - (Array<String>)
      #   * +:on_failure+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_id+ - (String)

      # @!method create_upload_bucket(options = {})
      # Calls the CreateUploadBucket API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:bucket_name+ - (String)

      # @!method delete_stack(options = {})
      # Calls the DeleteStack API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      # @return [Core::Response]

      # @!method describe_stack_events(options = {})
      # Calls the DescribeStackEvents API operation.
      # @param [Hash] options
      #   * +:stack_name+ - (String)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_events+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:event_id+ - (String)
      #     * +:stack_name+ - (String)
      #     * +:logical_resource_id+ - (String)
      #     * +:physical_resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:timestamp+ - (Time)
      #     * +:resource_status+ - (String)
      #     * +:resource_status_reason+ - (String)
      #     * +:resource_properties+ - (String)
      #   * +:next_token+ - (String)

      # @!method describe_stack_resource(options = {})
      # Calls the DescribeStackResource API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      #   * +:logical_resource_id+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_resource_detail+ - (Hash)
      #     * +:stack_name+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:logical_resource_id+ - (String)
      #     * +:physical_resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:last_updated_timestamp+ - (Time)
      #     * +:resource_status+ - (String)
      #     * +:resource_status_reason+ - (String)
      #     * +:description+ - (String)
      #     * +:metadata+ - (String)

      # @!method describe_stack_resources(options = {})
      # Calls the DescribeStackResources API operation.
      # @param [Hash] options
      #   * +:stack_name+ - (String)
      #   * +:logical_resource_id+ - (String)
      #   * +:physical_resource_id+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_resources+ - (Array<Hash>)
      #     * +:stack_name+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:logical_resource_id+ - (String)
      #     * +:physical_resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:timestamp+ - (Time)
      #     * +:resource_status+ - (String)
      #     * +:resource_status_reason+ - (String)
      #     * +:description+ - (String)

      # @!method describe_stacks(options = {})
      # Calls the DescribeStacks API operation.
      # @param [Hash] options
      #   * +:stack_name+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stacks+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:stack_name+ - (String)
      #     * +:description+ - (String)
      #     * +:parameters+ - (Array<Hash>)
      #       * +:parameter_key+ - (String)
      #       * +:parameter_value+ - (String)
      #     * +:creation_time+ - (Time)
      #     * +:last_updated_time+ - (Time)
      #     * +:stack_status+ - (String)
      #     * +:stack_status_reason+ - (String)
      #     * +:disable_rollback+ - (Boolean)
      #     * +:notification_arns+ - (Array<String>)
      #     * +:timeout_in_minutes+ - (Integer)
      #     * +:capabilities+ - (Array<String>)
      #     * +:outputs+ - (Array<Hash>)
      #       * +:output_key+ - (String)
      #       * +:output_value+ - (String)
      #       * +:description+ - (String)

      # @!method estimate_template_cost(options = {})
      # Calls the EstimateTemplateCost API operation.
      # @param [Hash] options
      #   * +:template_body+ - (String)
      #   * +:template_url+ - (String)
      #   * +:parameters+ - (Array<Hash>)
      #     * +:parameter_key+ - (String)
      #     * +:parameter_value+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:url+ - (String)

      # @!method get_template(options = {})
      # Calls the GetTemplate API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:template_body+ - (String)

      # @!method list_stack_resources(options = {})
      # Calls the ListStackResources API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      #   * +:next_token+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_resource_summaries+ - (Array<Hash>)
      #     * +:logical_resource_id+ - (String)
      #     * +:physical_resource_id+ - (String)
      #     * +:resource_type+ - (String)
      #     * +:last_updated_timestamp+ - (Time)
      #     * +:resource_status+ - (String)
      #     * +:resource_status_reason+ - (String)
      #   * +:next_token+ - (String)

      # @!method list_stacks(options = {})
      # Calls the ListStacks API operation.
      # @param [Hash] options
      #   * +:next_token+ - (String)
      #   * +:stack_status_filter+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_summaries+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:stack_name+ - (String)
      #     * +:template_description+ - (String)
      #     * +:creation_time+ - (Time)
      #     * +:last_updated_time+ - (Time)
      #     * +:deletion_time+ - (Time)
      #     * +:stack_status+ - (String)
      #     * +:stack_status_reason+ - (String)
      #   * +:next_token+ - (String)

      # @!method update_stack(options = {})
      # Calls the UpdateStack API operation.
      # @param [Hash] options
      #   * +:stack_name+ - *required* - (String)
      #   * +:template_body+ - (String)
      #   * +:template_url+ - (String)
      #   * +:parameters+ - (Array<Hash>)
      #     * +:parameter_key+ - (String)
      #     * +:parameter_value+ - (String)
      #   * +:capabilities+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_id+ - (String)

      # @!method validate_template(options = {})
      # Calls the ValidateTemplate API operation.
      # @param [Hash] options
      #   * +:template_body+ - (String)
      #   * +:template_url+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:parameters+ - (Array<Hash>)
      #     * +:parameter_key+ - (String)
      #     * +:default_value+ - (String)
      #     * +:no_echo+ - (Boolean)
      #     * +:description+ - (String)
      #   * +:description+ - (String)
      #   * +:capabilities+ - (Array<String>)
      #   * +:capabilities_reason+ - (String)

      ## end client methods ##

    end
  end
end
