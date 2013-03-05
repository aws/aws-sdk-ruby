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
  class OpsWorks

    # Client class for AWS OpsWorks.
    class Client < Core::JSONClient

      # @private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method clone_stack(options = {})
      # Calls the CloneStack API operation.
      # @param [Hash] options
      #   * +:source_stack_id+ - *required* - (String)
      #   * +:name+ - (String)
      #   * +:region+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #   * +:service_role_arn+ - *required* - (String)
      #   * +:default_instance_profile_arn+ - (String)
      #   * +:default_os+ - (String)
      #   * +:hostname_theme+ - (String)
      #   * +:default_availability_zone+ - (String)
      #   * +:custom_json+ - (String)
      #   * +:use_custom_cookbooks+ - (Boolean)
      #   * +:custom_cookbooks_source+ - (Hash)
      #     * +:type+ - (String)
      #     * +:url+ - (String)
      #     * +:username+ - (String)
      #     * +:password+ - (String)
      #     * +:ssh_key+ - (String)
      #     * +:revision+ - (String)
      #   * +:default_ssh_key_name+ - (String)
      #   * +:clone_permissions+ - (Boolean)
      #   * +:clone_app_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_id+ - (String)

      # @!method create_app(options = {})
      # Calls the CreateApp API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:name+ - *required* - (String)
      #   * +:description+ - (String)
      #   * +:type+ - *required* - (String)
      #   * +:app_source+ - (Hash)
      #     * +:type+ - (String)
      #     * +:url+ - (String)
      #     * +:username+ - (String)
      #     * +:password+ - (String)
      #     * +:ssh_key+ - (String)
      #     * +:revision+ - (String)
      #   * +:domains+ - (Array<String>)
      #   * +:enable_ssl+ - (Boolean)
      #   * +:ssl_configuration+ - (Hash)
      #     * +:certificate+ - *required* - (String)
      #     * +:private_key+ - *required* - (String)
      #     * +:chain+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:app_id+ - (String)

      # @!method create_deployment(options = {})
      # Calls the CreateDeployment API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:app_id+ - (String)
      #   * +:instance_ids+ - (Array<String>)
      #   * +:command+ - *required* - (Hash)
      #     * +:name+ - *required* - (String)
      #     * +:args+ - (Hash<String,Array<String>>)
      #   * +:comment+ - (String)
      #   * +:custom_json+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:deployment_id+ - (String)

      # @!method create_instance(options = {})
      # Calls the CreateInstance API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:layer_ids+ - *required* - (Array<String>)
      #   * +:instance_type+ - *required* - (String)
      #   * +:auto_scaling_type+ - (String)
      #   * +:hostname+ - (String)
      #   * +:os+ - (String)
      #   * +:ssh_key_name+ - (String)
      #   * +:availability_zone+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:instance_id+ - (String)

      # @!method create_layer(options = {})
      # Calls the CreateLayer API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:type+ - *required* - (String)
      #   * +:name+ - *required* - (String)
      #   * +:shortname+ - *required* - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #   * +:custom_instance_profile_arn+ - (String)
      #   * +:custom_security_group_ids+ - (Array<String>)
      #   * +:packages+ - (Array<String>)
      #   * +:volume_configurations+ - (Array<Hash>)
      #     * +:mount_point+ - *required* - (String)
      #     * +:raid_level+ - (Integer)
      #     * +:number_of_disks+ - *required* - (Integer)
      #     * +:size+ - *required* - (Integer)
      #   * +:enable_auto_healing+ - (Boolean)
      #   * +:auto_assign_elastic_ips+ - (Boolean)
      #   * +:custom_recipes+ - (Hash)
      #     * +:setup+ - (Array<String>)
      #     * +:configure+ - (Array<String>)
      #     * +:deploy+ - (Array<String>)
      #     * +:undeploy+ - (Array<String>)
      #     * +:shutdown+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:layer_id+ - (String)

      # @!method create_stack(options = {})
      # Calls the CreateStack API operation.
      # @param [Hash] options
      #   * +:name+ - *required* - (String)
      #   * +:region+ - *required* - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #   * +:service_role_arn+ - *required* - (String)
      #   * +:default_instance_profile_arn+ - *required* - (String)
      #   * +:default_os+ - (String)
      #   * +:hostname_theme+ - (String)
      #   * +:default_availability_zone+ - (String)
      #   * +:custom_json+ - (String)
      #   * +:use_custom_cookbooks+ - (Boolean)
      #   * +:custom_cookbooks_source+ - (Hash)
      #     * +:type+ - (String)
      #     * +:url+ - (String)
      #     * +:username+ - (String)
      #     * +:password+ - (String)
      #     * +:ssh_key+ - (String)
      #     * +:revision+ - (String)
      #   * +:default_ssh_key_name+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stack_id+ - (String)

      # @!method create_user_profile(options = {})
      # Calls the CreateUserProfile API operation.
      # @param [Hash] options
      #   * +:iam_user_arn+ - *required* - (String)
      #   * +:ssh_username+ - (String)
      #   * +:ssh_public_key+ - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:iam_user_arn+ - (String)

      # @!method delete_app(options = {})
      # Calls the DeleteApp API operation.
      # @param [Hash] options
      #   * +:app_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method delete_instance(options = {})
      # Calls the DeleteInstance API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      #   * +:delete_elastic_ip+ - (Boolean)
      #   * +:delete_volumes+ - (Boolean)
      # @return [Core::Response]

      # @!method delete_layer(options = {})
      # Calls the DeleteLayer API operation.
      # @param [Hash] options
      #   * +:layer_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method delete_stack(options = {})
      # Calls the DeleteStack API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method delete_user_profile(options = {})
      # Calls the DeleteUserProfile API operation.
      # @param [Hash] options
      #   * +:iam_user_arn+ - *required* - (String)
      # @return [Core::Response]

      # @!method describe_apps(options = {})
      # Calls the DescribeApps API operation.
      # @param [Hash] options
      #   * +:stack_id+ - (String)
      #   * +:app_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:apps+ - (Array<Hash>)
      #     * +:app_id+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:name+ - (String)
      #     * +:description+ - (String)
      #     * +:type+ - (String)
      #     * +:app_source+ - (Hash)
      #       * +:type+ - (String)
      #       * +:url+ - (String)
      #       * +:username+ - (String)
      #       * +:password+ - (String)
      #       * +:ssh_key+ - (String)
      #       * +:revision+ - (String)
      #     * +:domains+ - (Array<String>)
      #     * +:enable_ssl+ - (Boolean)
      #     * +:ssl_configuration+ - (Hash)
      #       * +:certificate+ - (String)
      #       * +:private_key+ - (String)
      #       * +:chain+ - (String)
      #     * +:attributes+ - (Hash<String,String>)
      #     * +:created_at+ - (String)

      # @!method describe_commands(options = {})
      # Calls the DescribeCommands API operation.
      # @param [Hash] options
      #   * +:deployment_id+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:command_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:commands+ - (Array<Hash>)
      #     * +:command_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:deployment_id+ - (String)
      #     * +:created_at+ - (String)
      #     * +:acknowledged_at+ - (String)
      #     * +:completed_at+ - (String)
      #     * +:status+ - (String)
      #     * +:exit_code+ - (Integer)
      #     * +:log_url+ - (String)
      #     * +:type+ - (String)

      # @!method describe_deployments(options = {})
      # Calls the DescribeDeployments API operation.
      # @param [Hash] options
      #   * +:stack_id+ - (String)
      #   * +:app_id+ - (String)
      #   * +:deployment_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:deployments+ - (Array<Hash>)
      #     * +:deployment_id+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:app_id+ - (String)
      #     * +:created_at+ - (String)
      #     * +:completed_at+ - (String)
      #     * +:duration+ - (Integer)
      #     * +:iam_user_arn+ - (String)
      #     * +:comment+ - (String)
      #     * +:command+ - (Hash)
      #       * +:name+ - (String)
      #       * +:args+ - (Hash<String,Hash>)
      #         * +:value+ - (Array<String>)
      #     * +:status+ - (String)
      #     * +:custom_json+ - (String)
      #     * +:instance_ids+ - (Array<String>)

      # @!method describe_elastic_ips(options = {})
      # Calls the DescribeElasticIps API operation.
      # @param [Hash] options
      #   * +:instance_id+ - (String)
      #   * +:ips+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:elastic_ips+ - (Array<Hash>)
      #     * +:ip+ - (String)
      #     * +:name+ - (String)
      #     * +:region+ - (String)

      # @!method describe_instances(options = {})
      # Calls the DescribeInstances API operation.
      # @param [Hash] options
      #   * +:stack_id+ - (String)
      #   * +:layer_id+ - (String)
      #   * +:app_id+ - (String)
      #   * +:instance_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:instances+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      #     * +:ec_2_instance_id+ - (String)
      #     * +:hostname+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:layer_ids+ - (Array<String>)
      #     * +:security_group_ids+ - (Array<String>)
      #     * +:instance_type+ - (String)
      #     * +:instance_profile_arn+ - (String)
      #     * +:status+ - (String)
      #     * +:os+ - (String)
      #     * +:availability_zone+ - (String)
      #     * +:public_dns+ - (String)
      #     * +:private_dns+ - (String)
      #     * +:public_ip+ - (String)
      #     * +:private_ip+ - (String)
      #     * +:elastic_ip+ - (String)
      #     * +:auto_scaling_type+ - (String)
      #     * +:ssh_key_name+ - (String)
      #     * +:ssh_host_rsa_key_fingerprint+ - (String)
      #     * +:ssh_host_dsa_key_fingerprint+ - (String)
      #     * +:created_at+ - (String)
      #     * +:last_service_error_id+ - (String)

      # @!method describe_layers(options = {})
      # Calls the DescribeLayers API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:layer_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:layers+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:layer_id+ - (String)
      #     * +:type+ - (String)
      #     * +:name+ - (String)
      #     * +:shortname+ - (String)
      #     * +:attributes+ - (Hash<String,String>)
      #     * +:custom_instance_profile_arn+ - (String)
      #     * +:custom_security_group_ids+ - (Array<String>)
      #     * +:default_security_group_names+ - (Array<String>)
      #     * +:packages+ - (Array<String>)
      #     * +:volume_configurations+ - (Array<Hash>)
      #       * +:mount_point+ - (String)
      #       * +:raid_level+ - (Integer)
      #       * +:number_of_disks+ - (Integer)
      #       * +:size+ - (Integer)
      #     * +:enable_auto_healing+ - (Boolean)
      #     * +:auto_assign_elastic_ips+ - (Boolean)
      #     * +:default_recipes+ - (Hash)
      #       * +:setup+ - (Array<String>)
      #       * +:configure+ - (Array<String>)
      #       * +:deploy+ - (Array<String>)
      #       * +:undeploy+ - (Array<String>)
      #       * +:shutdown+ - (Array<String>)
      #     * +:custom_recipes+ - (Hash)
      #       * +:setup+ - (Array<String>)
      #       * +:configure+ - (Array<String>)
      #       * +:deploy+ - (Array<String>)
      #       * +:undeploy+ - (Array<String>)
      #       * +:shutdown+ - (Array<String>)
      #     * +:created_at+ - (String)

      # @!method describe_load_based_auto_scaling(options = {})
      # Calls the DescribeLoadBasedAutoScaling API operation.
      # @param [Hash] options
      #   * +:layer_ids+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:load_based_auto_scaling_configurations+ - (Array<Hash>)
      #     * +:layer_id+ - (String)
      #     * +:enable+ - (Boolean)
      #     * +:up_scaling+ - (Hash)
      #       * +:instance_count+ - (Integer)
      #       * +:thresholds_wait_time+ - (Integer)
      #       * +:ignore_metrics_time+ - (Integer)
      #       * +:cpu_threshold+ - (Numeric)
      #       * +:memory_threshold+ - (Numeric)
      #       * +:load_threshold+ - (Numeric)
      #     * +:down_scaling+ - (Hash)
      #       * +:instance_count+ - (Integer)
      #       * +:thresholds_wait_time+ - (Integer)
      #       * +:ignore_metrics_time+ - (Integer)
      #       * +:cpu_threshold+ - (Numeric)
      #       * +:memory_threshold+ - (Numeric)
      #       * +:load_threshold+ - (Numeric)

      # @!method describe_permissions(options = {})
      # Calls the DescribePermissions API operation.
      # @param [Hash] options
      #   * +:iam_user_arn+ - *required* - (String)
      #   * +:stack_id+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:permissions+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:iam_user_arn+ - (String)
      #     * +:allow_ssh+ - (Boolean)
      #     * +:allow_sudo+ - (Boolean)

      # @!method describe_raid_arrays(options = {})
      # Calls the DescribeRaidArrays API operation.
      # @param [Hash] options
      #   * +:instance_id+ - (String)
      #   * +:raid_array_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:raid_arrays+ - (Array<Hash>)
      #     * +:raid_array_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:name+ - (String)
      #     * +:raid_level+ - (Integer)
      #     * +:number_of_disks+ - (Integer)
      #     * +:size+ - (Integer)
      #     * +:device+ - (String)
      #     * +:mount_point+ - (String)
      #     * +:availability_zone+ - (String)
      #     * +:created_at+ - (String)

      # @!method describe_service_errors(options = {})
      # Calls the DescribeServiceErrors API operation.
      # @param [Hash] options
      #   * +:stack_id+ - (String)
      #   * +:instance_id+ - (String)
      #   * +:service_error_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:service_errors+ - (Array<Hash>)
      #     * +:service_error_id+ - (String)
      #     * +:stack_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:type+ - (String)
      #     * +:message+ - (String)
      #     * +:created_at+ - (String)

      # @!method describe_stacks(options = {})
      # Calls the DescribeStacks API operation.
      # @param [Hash] options
      #   * +:stack_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:stacks+ - (Array<Hash>)
      #     * +:stack_id+ - (String)
      #     * +:name+ - (String)
      #     * +:region+ - (String)
      #     * +:attributes+ - (Hash<String,String>)
      #     * +:service_role_arn+ - (String)
      #     * +:default_instance_profile_arn+ - (String)
      #     * +:default_os+ - (String)
      #     * +:hostname_theme+ - (String)
      #     * +:default_availability_zone+ - (String)
      #     * +:custom_json+ - (String)
      #     * +:use_custom_cookbooks+ - (Boolean)
      #     * +:custom_cookbooks_source+ - (Hash)
      #       * +:type+ - (String)
      #       * +:url+ - (String)
      #       * +:username+ - (String)
      #       * +:password+ - (String)
      #       * +:ssh_key+ - (String)
      #       * +:revision+ - (String)
      #     * +:default_ssh_key_name+ - (String)
      #     * +:created_at+ - (String)

      # @!method describe_time_based_auto_scaling(options = {})
      # Calls the DescribeTimeBasedAutoScaling API operation.
      # @param [Hash] options
      #   * +:instance_ids+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:time_based_auto_scaling_configurations+ - (Array<Hash>)
      #     * +:instance_id+ - (String)
      #     * +:auto_scaling_schedule+ - (Hash)
      #       * +:monday+ - (Hash<String,String>)
      #       * +:tuesday+ - (Hash<String,String>)
      #       * +:wednesday+ - (Hash<String,String>)
      #       * +:thursday+ - (Hash<String,String>)
      #       * +:friday+ - (Hash<String,String>)
      #       * +:saturday+ - (Hash<String,String>)
      #       * +:sunday+ - (Hash<String,String>)

      # @!method describe_user_profiles(options = {})
      # Calls the DescribeUserProfiles API operation.
      # @param [Hash] options
      #   * +:iam_user_arns+ - *required* - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:user_profiles+ - (Array<Hash>)
      #     * +:iam_user_arn+ - (String)
      #     * +:name+ - (String)
      #     * +:ssh_username+ - (String)
      #     * +:ssh_public_key+ - (String)

      # @!method describe_volumes(options = {})
      # Calls the DescribeVolumes API operation.
      # @param [Hash] options
      #   * +:instance_id+ - (String)
      #   * +:raid_array_id+ - (String)
      #   * +:volume_ids+ - (Array<String>)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:volumes+ - (Array<Hash>)
      #     * +:volume_id+ - (String)
      #     * +:ec_2_volume_id+ - (String)
      #     * +:name+ - (String)
      #     * +:raid_array_id+ - (String)
      #     * +:instance_id+ - (String)
      #     * +:status+ - (String)
      #     * +:size+ - (Integer)
      #     * +:device+ - (String)
      #     * +:mount_point+ - (String)
      #     * +:region+ - (String)
      #     * +:availability_zone+ - (String)

      # @!method get_hostname_suggestion(options = {})
      # Calls the GetHostnameSuggestion API operation.
      # @param [Hash] options
      #   * +:layer_id+ - *required* - (String)
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #   * +:layer_id+ - (String)
      #   * +:hostname+ - (String)

      # @!method reboot_instance(options = {})
      # Calls the RebootInstance API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method set_load_based_auto_scaling(options = {})
      # Calls the SetLoadBasedAutoScaling API operation.
      # @param [Hash] options
      #   * +:layer_id+ - *required* - (String)
      #   * +:enable+ - (Boolean)
      #   * +:up_scaling+ - (Hash)
      #     * +:instance_count+ - (Integer)
      #     * +:thresholds_wait_time+ - (Integer)
      #     * +:ignore_metrics_time+ - (Integer)
      #     * +:cpu_threshold+ - (Float)
      #     * +:memory_threshold+ - (Float)
      #     * +:load_threshold+ - (Float)
      #   * +:down_scaling+ - (Hash)
      #     * +:instance_count+ - (Integer)
      #     * +:thresholds_wait_time+ - (Integer)
      #     * +:ignore_metrics_time+ - (Integer)
      #     * +:cpu_threshold+ - (Float)
      #     * +:memory_threshold+ - (Float)
      #     * +:load_threshold+ - (Float)
      # @return [Core::Response]

      # @!method set_permission(options = {})
      # Calls the SetPermission API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:iam_user_arn+ - *required* - (String)
      #   * +:allow_ssh+ - (Boolean)
      #   * +:allow_sudo+ - (Boolean)
      # @return [Core::Response]

      # @!method set_time_based_auto_scaling(options = {})
      # Calls the SetTimeBasedAutoScaling API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      #   * +:auto_scaling_schedule+ - (Hash)
      #     * +:monday+ - (Hash<String,String>)
      #     * +:tuesday+ - (Hash<String,String>)
      #     * +:wednesday+ - (Hash<String,String>)
      #     * +:thursday+ - (Hash<String,String>)
      #     * +:friday+ - (Hash<String,String>)
      #     * +:saturday+ - (Hash<String,String>)
      #     * +:sunday+ - (Hash<String,String>)
      # @return [Core::Response]

      # @!method start_instance(options = {})
      # Calls the StartInstance API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method start_stack(options = {})
      # Calls the StartStack API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method stop_instance(options = {})
      # Calls the StopInstance API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method stop_stack(options = {})
      # Calls the StopStack API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      # @return [Core::Response]

      # @!method update_app(options = {})
      # Calls the UpdateApp API operation.
      # @param [Hash] options
      #   * +:app_id+ - *required* - (String)
      #   * +:name+ - (String)
      #   * +:description+ - (String)
      #   * +:type+ - (String)
      #   * +:app_source+ - (Hash)
      #     * +:type+ - (String)
      #     * +:url+ - (String)
      #     * +:username+ - (String)
      #     * +:password+ - (String)
      #     * +:ssh_key+ - (String)
      #     * +:revision+ - (String)
      #   * +:domains+ - (Array<String>)
      #   * +:enable_ssl+ - (Boolean)
      #   * +:ssl_configuration+ - (Hash)
      #     * +:certificate+ - *required* - (String)
      #     * +:private_key+ - *required* - (String)
      #     * +:chain+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      # @return [Core::Response]

      # @!method update_instance(options = {})
      # Calls the UpdateInstance API operation.
      # @param [Hash] options
      #   * +:instance_id+ - *required* - (String)
      #   * +:layer_ids+ - (Array<String>)
      #   * +:instance_type+ - (String)
      #   * +:auto_scaling_type+ - (String)
      #   * +:hostname+ - (String)
      #   * +:os+ - (String)
      #   * +:ssh_key_name+ - (String)
      # @return [Core::Response]

      # @!method update_layer(options = {})
      # Calls the UpdateLayer API operation.
      # @param [Hash] options
      #   * +:layer_id+ - *required* - (String)
      #   * +:name+ - (String)
      #   * +:shortname+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #   * +:custom_instance_profile_arn+ - (String)
      #   * +:custom_security_group_ids+ - (Array<String>)
      #   * +:packages+ - (Array<String>)
      #   * +:volume_configurations+ - (Array<Hash>)
      #     * +:mount_point+ - *required* - (String)
      #     * +:raid_level+ - (Integer)
      #     * +:number_of_disks+ - *required* - (Integer)
      #     * +:size+ - *required* - (Integer)
      #   * +:enable_auto_healing+ - (Boolean)
      #   * +:auto_assign_elastic_ips+ - (Boolean)
      #   * +:custom_recipes+ - (Hash)
      #     * +:setup+ - (Array<String>)
      #     * +:configure+ - (Array<String>)
      #     * +:deploy+ - (Array<String>)
      #     * +:undeploy+ - (Array<String>)
      #     * +:shutdown+ - (Array<String>)
      # @return [Core::Response]

      # @!method update_stack(options = {})
      # Calls the UpdateStack API operation.
      # @param [Hash] options
      #   * +:stack_id+ - *required* - (String)
      #   * +:name+ - (String)
      #   * +:attributes+ - (Hash<String,String>)
      #   * +:service_role_arn+ - (String)
      #   * +:default_instance_profile_arn+ - (String)
      #   * +:default_os+ - (String)
      #   * +:hostname_theme+ - (String)
      #   * +:default_availability_zone+ - (String)
      #   * +:custom_json+ - (String)
      #   * +:use_custom_cookbooks+ - (Boolean)
      #   * +:custom_cookbooks_source+ - (Hash)
      #     * +:type+ - (String)
      #     * +:url+ - (String)
      #     * +:username+ - (String)
      #     * +:password+ - (String)
      #     * +:ssh_key+ - (String)
      #     * +:revision+ - (String)
      #   * +:default_ssh_key_name+ - (String)
      # @return [Core::Response]

      # @!method update_user_profile(options = {})
      # Calls the UpdateUserProfile API operation.
      # @param [Hash] options
      #   * +:iam_user_arn+ - *required* - (String)
      #   * +:ssh_username+ - (String)
      #   * +:ssh_public_key+ - (String)
      # @return [Core::Response]

      # end client methods #

      define_client_methods('2013-02-18')

    end
  end
end
