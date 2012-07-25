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
    class Client < Core::Client

      API_VERSION = '2010-05-15'

      extend Core::Client::QueryXML

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

      # Calls the CreateStack API operation.
      # @method create_stack(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      # * +:template_body+ - (String)
      # * +:template_url+ - (String)
      # * +:parameters+ - (Array<Hash>)
      #   * +:parameter_key+ - (String)
      #   * +:parameter_value+ - (String)
      # * +:disable_rollback+ - (Boolean)
      # * +:timeout_in_minutes+ - (Integer)
      # * +:notification_ar_ns+ - (Array<String>)
      # * +:capabilities+ - (Array<String>)
      # * +:on_failure+ - (String)
      #
      # === Response Structure:
      #
      # * +:stack_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_stack, 'CreateStack'

      # Calls the CreateUploadBucket API operation.
      # @method create_upload_bucket(options = {})
      #
      # === Options:
      #
      # This method accepts no options.
      #
      # === Response Structure:
      #
      # * +:bucket_name+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :create_upload_bucket, 'CreateUploadBucket'

      # Calls the DeleteStack API operation.
      # @method delete_stack(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      #
      # === Response Structure:
      #
      # This method returns no response data.
      #
      # @return [Core::Response]
      #
      define_client_method :delete_stack, 'DeleteStack'

      # Calls the DescribeStackEvents API operation.
      # @method describe_stack_events(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - (String)
      # * +:next_token+ - (String)
      #
      # === Response Structure:
      #
      # * +:stack_events+ - (Array<Hash>)
      #   * +:stack_id+ - (String)
      #   * +:event_id+ - (String)
      #   * +:stack_name+ - (String)
      #   * +:logical_resource_id+ - (String)
      #   * +:physical_resource_id+ - (String)
      #   * +:resource_type+ - (String)
      #   * +:timestamp+ - (Time)
      #   * +:resource_status+ - (String)
      #   * +:resource_status_reason+ - (String)
      #   * +:resource_properties+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_stack_events, 'DescribeStackEvents'

      # Calls the DescribeStackResource API operation.
      # @method describe_stack_resource(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      # * +:logical_resource_id+ - *required* - (String)
      #
      # === Response Structure:
      #
      # * +:stack_resource_detail+ - (Hash)
      #   * +:stack_name+ - (String)
      #   * +:stack_id+ - (String)
      #   * +:logical_resource_id+ - (String)
      #   * +:physical_resource_id+ - (String)
      #   * +:resource_type+ - (String)
      #   * +:last_updated_timestamp+ - (Time)
      #   * +:resource_status+ - (String)
      #   * +:resource_status_reason+ - (String)
      #   * +:description+ - (String)
      #   * +:metadata+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_stack_resource, 'DescribeStackResource'

      # Calls the DescribeStackResources API operation.
      # @method describe_stack_resources(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - (String)
      # * +:logical_resource_id+ - (String)
      # * +:physical_resource_id+ - (String)
      #
      # === Response Structure:
      #
      # * +:stack_resources+ - (Array<Hash>)
      #   * +:stack_name+ - (String)
      #   * +:stack_id+ - (String)
      #   * +:logical_resource_id+ - (String)
      #   * +:physical_resource_id+ - (String)
      #   * +:resource_type+ - (String)
      #   * +:timestamp+ - (Time)
      #   * +:resource_status+ - (String)
      #   * +:resource_status_reason+ - (String)
      #   * +:description+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_stack_resources, 'DescribeStackResources'

      # Calls the DescribeStacks API operation.
      # @method describe_stacks(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - (String)
      #
      # === Response Structure:
      #
      # * +:stacks+ - (Array<Hash>)
      #   * +:stack_id+ - (String)
      #   * +:stack_name+ - (String)
      #   * +:description+ - (String)
      #   * +:parameters+ - (Array<Hash>)
      #     * +:parameter_key+ - (String)
      #     * +:parameter_value+ - (String)
      #   * +:creation_time+ - (Time)
      #   * +:last_updated_time+ - (Time)
      #   * +:stack_status+ - (String)
      #   * +:stack_status_reason+ - (String)
      #   * +:disable_rollback+ - (Boolean)
      #   * +:notification_ar_ns+ - (Array<String>)
      #   * +:timeout_in_minutes+ - (Integer)
      #   * +:capabilities+ - (Array<String>)
      #   * +:outputs+ - (Array<Hash>)
      #     * +:output_key+ - (String)
      #     * +:output_value+ - (String)
      #     * +:description+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :describe_stacks, 'DescribeStacks'

      # Calls the EstimateTemplateCost API operation.
      # @method estimate_template_cost(options = {})
      #
      # === Options:
      #
      # * +:template_body+ - (String)
      # * +:template_url+ - (String)
      # * +:parameters+ - (Array<Hash>)
      #   * +:parameter_key+ - (String)
      #   * +:parameter_value+ - (String)
      #
      # === Response Structure:
      #
      # * +:url+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :estimate_template_cost, 'EstimateTemplateCost'

      # Calls the GetTemplate API operation.
      # @method get_template(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      #
      # === Response Structure:
      #
      # * +:template_body+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :get_template, 'GetTemplate'

      # Calls the ListStackResources API operation.
      # @method list_stack_resources(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      # * +:next_token+ - (String)
      #
      # === Response Structure:
      #
      # * +:stack_resource_summaries+ - (Array<Hash>)
      #   * +:logical_resource_id+ - (String)
      #   * +:physical_resource_id+ - (String)
      #   * +:resource_type+ - (String)
      #   * +:last_updated_timestamp+ - (Time)
      #   * +:resource_status+ - (String)
      #   * +:resource_status_reason+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :list_stack_resources, 'ListStackResources'

      # Calls the ListStacks API operation.
      # @method list_stacks(options = {})
      #
      # === Options:
      #
      # * +:next_token+ - (String)
      # * +:stack_status_filter+ - (Array<String>)
      #
      # === Response Structure:
      #
      # * +:stack_summaries+ - (Array<Hash>)
      #   * +:stack_id+ - (String)
      #   * +:stack_name+ - (String)
      #   * +:template_description+ - (String)
      #   * +:creation_time+ - (Time)
      #   * +:last_updated_time+ - (Time)
      #   * +:deletion_time+ - (Time)
      #   * +:stack_status+ - (String)
      #   * +:stack_status_reason+ - (String)
      # * +:next_token+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :list_stacks, 'ListStacks'

      # Calls the UpdateStack API operation.
      # @method update_stack(options = {})
      #
      # === Options:
      #
      # * +:stack_name+ - *required* - (String)
      # * +:template_body+ - (String)
      # * +:template_url+ - (String)
      # * +:parameters+ - (Array<Hash>)
      #   * +:parameter_key+ - (String)
      #   * +:parameter_value+ - (String)
      # * +:capabilities+ - (Array<String>)
      #
      # === Response Structure:
      #
      # * +:stack_id+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :update_stack, 'UpdateStack'

      # Calls the ValidateTemplate API operation.
      # @method validate_template(options = {})
      #
      # === Options:
      #
      # * +:template_body+ - (String)
      # * +:template_url+ - (String)
      #
      # === Response Structure:
      #
      # * +:parameters+ - (Array<Hash>)
      #   * +:parameter_key+ - (String)
      #   * +:default_value+ - (String)
      #   * +:no_echo+ - (Boolean)
      #   * +:description+ - (String)
      # * +:description+ - (String)
      # * +:capabilities+ - (Array<String>)
      # * +:capabilities_reason+ - (String)
      #
      # @return [Core::Response]
      #
      define_client_method :validate_template, 'ValidateTemplate'

      ## end client methods ##

    end
  end
end
