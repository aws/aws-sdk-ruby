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
  class ElasticBeanstalk

    # Client class for AWS Elastic Beanstalk.
    class Client < Core::QueryClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method check_dns_availability(options = {})
      # Calls the CheckDNSAvailability API operation.
      # @param [Hash] options
      #   * `:cname_prefix` - *required* - (String) The prefix used when this
      #     CNAME is reserved.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:available` - (Boolean)
      #   * `:fully_qualified_cname` - (String)

      # @!method create_application(options = {})
      # Calls the CreateApplication API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application. Constraint: This name must be unique within your
      #     account. If the specified name already exists, the action returns
      #     an InvalidParameterValue error.
      #   * `:description` - (String) Describes the application.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:application` - (Hash)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)
      #     * `:versions` - (Array<String>)
      #     * `:configuration_templates` - (Array<String>)

      # @!method create_application_version(options = {})
      # Calls the CreateApplicationVersion API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application. If no application is found with this name, and
      #     AutoCreateApplication is `false` , returns an InvalidParameterValue
      #     error.
      #   * `:version_label` - *required* - (String) A label identifying this
      #     version. Constraint: Must be unique per application. If an
      #     application version already exists with this label for the
      #     specified application, AWS Elastic Beanstalk returns an
      #     InvalidParameterValue error.
      #   * `:description` - (String) Describes this version.
      #   * `:source_bundle` - (Hash) The Amazon S3 bucket and key that
      #     identify the location of the source bundle for this version. If
      #     data found at the Amazon S3 location exceeds the maximum allowed
      #     source bundle size, AWS Elastic Beanstalk returns an
      #     InvalidParameterValue error. Default: If not specified, AWS Elastic
      #     Beanstalk uses a sample application. If only partially specified
      #     (for example, a bucket is provided but not the key) or if no data
      #     is found at the Amazon S3 location, AWS Elastic Beanstalk returns
      #     an InvalidParameterCombination error.
      #     * `:s3_bucket` - (String) The Amazon S3 bucket where the data is
      #       located.
      #     * `:s3_key` - (String) The Amazon S3 key where the data is located.
      #   * `:auto_create_application` - (Boolean) Determines how the system
      #     behaves if the specified application for this version does not
      #     already exist: `true` : Automatically creates the specified
      #     application for this version if it does not already exist. `false`
      #     : Returns an InvalidParameterValue if the specified application for
      #     this version does not already exist. `true` : Automatically creates
      #     the specified application for this release if it does not already
      #     exist. `false` : Throws an InvalidParameterValue if the specified
      #     application for this release does not already exist. Default:
      #     `false` Valid Values: `true` | `false`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:application_version` - (Hash)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:version_label` - (String)
      #     * `:source_bundle` - (Hash)
      #       * `:s3_bucket` - (String)
      #       * `:s3_key` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)

      # @!method create_configuration_template(options = {})
      # Calls the CreateConfigurationTemplate API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application to associate with this configuration template. If no
      #     application is found with this name, AWS Elastic Beanstalk returns
      #     an InvalidParameterValue error.
      #   * `:template_name` - *required* - (String) The name of the
      #     configuration template. Constraint: This name must be unique per
      #     application. Default: If a configuration template already exists
      #     with this name, AWS Elastic Beanstalk returns an
      #     InvalidParameterValue error.
      #   * `:solution_stack_name` - (String) The name of the solution stack
      #     used by this configuration. The solution stack specifies the
      #     operating system, architecture, and application server for a
      #     configuration template. It determines the set of configuration
      #     options as well as the possible and default values. Use
      #     ListAvailableSolutionStacks to obtain a list of available solution
      #     stacks. Default: If the SolutionStackName is not specified and the
      #     source configuration parameter is blank, AWS Elastic Beanstalk uses
      #     the default solution stack. If not specified and the source
      #     configuration parameter is specified, AWS Elastic Beanstalk uses
      #     the same solution stack as the source configuration template.
      #   * `:source_configuration` - (Hash) If specified, AWS Elastic
      #     Beanstalk uses the configuration values from the specified
      #     configuration template to create a new configuration. Values
      #     specified in the OptionSettings parameter of this call overrides
      #     any values obtained from the SourceConfiguration. If no
      #     configuration template is found, returns an InvalidParameterValue
      #     error. Constraint: If both the solution stack name parameter and
      #     the source configuration parameters are specified, the solution
      #     stack of the source configuration template must match the specified
      #     solution stack name or else AWS Elastic Beanstalk returns an
      #     InvalidParameterCombination error.
      #     * `:application_name` - (String) The name of the application
      #       associated with the configuration.
      #     * `:template_name` - (String) The name of the configuration
      #       template.
      #   * `:environment_id` - (String) The ID of the environment used with
      #     this configuration template.
      #   * `:description` - (String) Describes this configuration.
      #   * `:option_settings` - (Array<Hash>) If specified, AWS Elastic
      #     Beanstalk sets the specified configuration option to the requested
      #     value. The new value overrides the value obtained from the solution
      #     stack or the source configuration template.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      #     * `:value` - (String) The current value for the configuration
      #       option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:solution_stack_name` - (String)
      #   * `:application_name` - (String)
      #   * `:template_name` - (String)
      #   * `:description` - (String)
      #   * `:environment_name` - (String)
      #   * `:deployment_status` - (String)
      #   * `:date_created` - (Time)
      #   * `:date_updated` - (Time)
      #   * `:option_settings` - (Array<Hash>)
      #     * `:namespace` - (String)
      #     * `:option_name` - (String)
      #     * `:value` - (String)

      # @!method create_environment(options = {})
      # Calls the CreateEnvironment API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application that contains the version to be deployed. If no
      #     application is found with this name, CreateEnvironment returns an
      #     InvalidParameterValue error.
      #   * `:version_label` - (String) The name of the application version to
      #     deploy. If the specified application has no associated application
      #     versions, AWS Elastic Beanstalk UpdateEnvironment returns an
      #     InvalidParameterValue error. Default: If not specified, AWS Elastic
      #     Beanstalk attempts to launch the most recently created application
      #     version.
      #   * `:environment_name` - *required* - (String) A unique name for the
      #     deployment environment. Used in the application URL. Constraint:
      #     Must be from 4 to 23 characters in length. The name can contain
      #     only letters, numbers, and hyphens. It cannot start or end with a
      #     hyphen. This name must be unique in your account. If the specified
      #     name already exists, AWS Elastic Beanstalk returns an
      #     InvalidParameterValue error. Default: If the CNAME parameter is not
      #     specified, the environment name becomes part of the CNAME, and
      #     therefore part of the visible URL for your application.
      #   * `:template_name` - (String) The name of the configuration template
      #     to use in deployment. If no configuration template is found with
      #     this name, AWS Elastic Beanstalk returns an InvalidParameterValue
      #     error. Condition: You must specify either this parameter or a
      #     SolutionStackName, but not both. If you specify both, AWS Elastic
      #     Beanstalk returns an InvalidParameterCombination error. If you do
      #     not specify either, AWS Elastic Beanstalk returns a
      #     MissingRequiredParameter error.
      #   * `:solution_stack_name` - (String) This is an alternative to
      #     specifying a configuration name. If specified, AWS Elastic
      #     Beanstalk sets the configuration values to the default values
      #     associated with the specified solution stack. Condition: You must
      #     specify either this or a TemplateName, but not both. If you specify
      #     both, AWS Elastic Beanstalk returns an InvalidParameterCombination
      #     error. If you do not specify either, AWS Elastic Beanstalk returns
      #     a MissingRequiredParameter error.
      #   * `:cname_prefix` - (String) If specified, the environment attempts
      #     to use this value as the prefix for the CNAME. If not specified,
      #     the environment uses the environment name.
      #   * `:description` - (String) Describes this environment.
      #   * `:option_settings` - (Array<Hash>) If specified, AWS Elastic
      #     Beanstalk sets the specified configuration options to the requested
      #     value in the configuration set for the new environment. These
      #     override the values obtained from the solution stack or the
      #     configuration template.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      #     * `:value` - (String) The current value for the configuration
      #       option.
      #   * `:options_to_remove` - (Array<Hash>) A list of custom user-defined
      #     configuration options to remove from the configuration set for this
      #     new environment.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environment_name` - (String)
      #   * `:environment_id` - (String)
      #   * `:application_name` - (String)
      #   * `:version_label` - (String)
      #   * `:solution_stack_name` - (String)
      #   * `:template_name` - (String)
      #   * `:description` - (String)
      #   * `:endpoint_url` - (String)
      #   * `:cname` - (String)
      #   * `:date_created` - (Time)
      #   * `:date_updated` - (Time)
      #   * `:status` - (String)
      #   * `:health` - (String)
      #   * `:resources` - (Hash)
      #     * `:load_balancer` - (Hash)
      #       * `:load_balancer_name` - (String)
      #       * `:domain` - (String)
      #       * `:listeners` - (Array<Hash>)
      #         * `:protocol` - (String)
      #         * `:port` - (Integer)

      # @!method create_storage_location(options = {})
      # Calls the CreateStorageLocation API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:s3_bucket` - (String)

      # @!method delete_application(options = {})
      # Calls the DeleteApplication API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application to delete.
      # @return [Core::Response]

      # @!method delete_application_version(options = {})
      # Calls the DeleteApplicationVersion API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application to delete releases from.
      #   * `:version_label` - *required* - (String) The label of the version
      #     to delete.
      #   * `:delete_source_bundle` - (Boolean) Indicates whether to delete the
      #     associated source bundle from Amazon S3: `true` : An attempt is
      #     made to delete the associated Amazon S3 source bundle specified at
      #     time of creation. `false` : No action is taken on the Amazon S3
      #     source bundle specified at time of creation. Valid Values: `true` |
      #     `false`
      # @return [Core::Response]

      # @!method delete_configuration_template(options = {})
      # Calls the DeleteConfigurationTemplate API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application to delete the configuration template from.
      #   * `:template_name` - *required* - (String) The name of the
      #     configuration template to delete.
      # @return [Core::Response]

      # @!method delete_environment_configuration(options = {})
      # Calls the DeleteEnvironmentConfiguration API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application the environment is associated with.
      #   * `:environment_name` - *required* - (String) The name of the
      #     environment to delete the draft configuration from.
      # @return [Core::Response]

      # @!method describe_application_versions(options = {})
      # Calls the DescribeApplicationVersions API operation.
      # @param [Hash] options
      #   * `:application_name` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to only include ones that are
      #     associated with the specified application.
      #   * `:version_labels` - (Array<String>) If specified, restricts the
      #     returned descriptions to only include ones that have the specified
      #     version labels.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:application_versions` - (Array<Hash>)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:version_label` - (String)
      #     * `:source_bundle` - (Hash)
      #       * `:s3_bucket` - (String)
      #       * `:s3_key` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)

      # @!method describe_applications(options = {})
      # Calls the DescribeApplications API operation.
      # @param [Hash] options
      #   * `:application_names` - (Array<String>) If specified, AWS Elastic
      #     Beanstalk restricts the returned descriptions to only include those
      #     with the specified names.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:applications` - (Array<Hash>)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)
      #     * `:versions` - (Array<String>)
      #     * `:configuration_templates` - (Array<String>)

      # @!method describe_configuration_options(options = {})
      # Calls the DescribeConfigurationOptions API operation.
      # @param [Hash] options
      #   * `:application_name` - (String) The name of the application
      #     associated with the configuration template or environment. Only
      #     needed if you want to describe the configuration options associated
      #     with either the configuration template or environment.
      #   * `:template_name` - (String) The name of the configuration template
      #     whose configuration options you want to describe.
      #   * `:environment_name` - (String) The name of the environment whose
      #     configuration options you want to describe.
      #   * `:solution_stack_name` - (String) The name of the solution stack
      #     whose configuration options you want to describe.
      #   * `:options` - (Array<Hash>) If specified, restricts the descriptions
      #     to only the specified options.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:solution_stack_name` - (String)
      #   * `:options` - (Array<Hash>)
      #     * `:namespace` - (String)
      #     * `:name` - (String)
      #     * `:default_value` - (String)
      #     * `:change_severity` - (String)
      #     * `:user_defined` - (Boolean)
      #     * `:value_type` - (String)
      #     * `:value_options` - (Array<String>)
      #     * `:min_value` - (Integer)
      #     * `:max_value` - (Integer)
      #     * `:max_length` - (Integer)
      #     * `:regex` - (Hash)
      #       * `:pattern` - (String)
      #       * `:label` - (String)

      # @!method describe_configuration_settings(options = {})
      # Calls the DescribeConfigurationSettings API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The application for the
      #     environment or configuration template.
      #   * `:template_name` - (String) The name of the configuration template
      #     to describe. Conditional: You must specify either this parameter or
      #     an EnvironmentName, but not both. If you specify both, AWS Elastic
      #     Beanstalk returns an InvalidParameterCombination error. If you do
      #     not specify either, AWS Elastic Beanstalk returns a
      #     MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment to
      #     describe. Condition: You must specify either this or a
      #     TemplateName, but not both. If you specify both, AWS Elastic
      #     Beanstalk returns an InvalidParameterCombination error. If you do
      #     not specify either, AWS Elastic Beanstalk returns
      #     MissingRequiredParameter error.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:configuration_settings` - (Array<Hash>)
      #     * `:solution_stack_name` - (String)
      #     * `:application_name` - (String)
      #     * `:template_name` - (String)
      #     * `:description` - (String)
      #     * `:environment_name` - (String)
      #     * `:deployment_status` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)
      #     * `:option_settings` - (Array<Hash>)
      #       * `:namespace` - (String)
      #       * `:option_name` - (String)
      #       * `:value` - (String)

      # @!method describe_environment_resources(options = {})
      # Calls the DescribeEnvironmentResources API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment to retrieve
      #     AWS resource usage data. Condition: You must specify either this or
      #     an EnvironmentName, or both. If you do not specify either, AWS
      #     Elastic Beanstalk returns MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment to
      #     retrieve AWS resource usage data. Condition: You must specify
      #     either this or an EnvironmentId, or both. If you do not specify
      #     either, AWS Elastic Beanstalk returns MissingRequiredParameter
      #     error.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environment_resources` - (Hash)
      #     * `:environment_name` - (String)
      #     * `:auto_scaling_groups` - (Array<Hash>)
      #       * `:name` - (String)
      #     * `:instances` - (Array<Hash>)
      #       * `:id` - (String)
      #     * `:launch_configurations` - (Array<Hash>)
      #       * `:name` - (String)
      #     * `:load_balancers` - (Array<Hash>)
      #       * `:name` - (String)
      #     * `:triggers` - (Array<Hash>)
      #       * `:name` - (String)

      # @!method describe_environments(options = {})
      # Calls the DescribeEnvironments API operation.
      # @param [Hash] options
      #   * `:application_name` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to include only those that are
      #     associated with this application.
      #   * `:version_label` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to include only those that are
      #     associated with this application version.
      #   * `:environment_ids` - (Array<String>) If specified, AWS Elastic
      #     Beanstalk restricts the returned descriptions to include only those
      #     that have the specified IDs.
      #   * `:environment_names` - (Array<String>) If specified, AWS Elastic
      #     Beanstalk restricts the returned descriptions to include only those
      #     that have the specified names.
      #   * `:include_deleted` - (Boolean) Indicates whether to include deleted
      #     environments: `true` : Environments that have been deleted after
      #     IncludedDeletedBackTo are displayed. `false` : Do not include
      #     deleted environments.
      #   * `:included_deleted_back_to` - (String<ISO8601 datetime>) If
      #     specified when IncludeDeleted is set to `true` , then environments
      #     deleted after this date are displayed.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environments` - (Array<Hash>)
      #     * `:environment_name` - (String)
      #     * `:environment_id` - (String)
      #     * `:application_name` - (String)
      #     * `:version_label` - (String)
      #     * `:solution_stack_name` - (String)
      #     * `:template_name` - (String)
      #     * `:description` - (String)
      #     * `:endpoint_url` - (String)
      #     * `:cname` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)
      #     * `:status` - (String)
      #     * `:health` - (String)
      #     * `:resources` - (Hash)
      #       * `:load_balancer` - (Hash)
      #         * `:load_balancer_name` - (String)
      #         * `:domain` - (String)
      #         * `:listeners` - (Array<Hash>)
      #           * `:protocol` - (String)
      #           * `:port` - (Integer)

      # @!method describe_events(options = {})
      # Calls the DescribeEvents API operation.
      # @param [Hash] options
      #   * `:application_name` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to include only those
      #     associated with this application.
      #   * `:version_label` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to those associated with this
      #     application version.
      #   * `:template_name` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to those that are associated
      #     with this environment configuration.
      #   * `:environment_id` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to those associated with this
      #     environment.
      #   * `:environment_name` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the returned descriptions to those associated with this
      #     environment.
      #   * `:request_id` - (String) If specified, AWS Elastic Beanstalk
      #     restricts the described events to include only those associated
      #     with this request ID.
      #   * `:severity` - (String) If specified, limits the events returned
      #     from this call to include only those with the specified severity or
      #     higher. Valid values include:
      #     * `TRACE`
      #     * `DEBUG`
      #     * `INFO`
      #     * `WARN`
      #     * `ERROR`
      #     * `FATAL`
      #   * `:start_time` - (String<ISO8601 datetime>) If specified, AWS
      #     Elastic Beanstalk restricts the returned descriptions to those that
      #     occur on or after this time.
      #   * `:end_time` - (String<ISO8601 datetime>) If specified, AWS Elastic
      #     Beanstalk restricts the returned descriptions to those that occur
      #     up to, but not including, the EndTime.
      #   * `:max_records` - (Integer) Specifies the maximum number of events
      #     that can be returned, beginning with the most recent event.
      #   * `:next_token` - (String) Pagination token. If specified, the events
      #     return the next batch of results.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:events` - (Array<Hash>)
      #     * `:event_date` - (Time)
      #     * `:message` - (String)
      #     * `:application_name` - (String)
      #     * `:version_label` - (String)
      #     * `:template_name` - (String)
      #     * `:environment_name` - (String)
      #     * `:request_id` - (String)
      #     * `:severity` - (String)
      #   * `:next_token` - (String)

      # @!method list_available_solution_stacks(options = {})
      # Calls the ListAvailableSolutionStacks API operation.
      # @param [Hash] options
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:solution_stacks` - (Array<String>)
      #   * `:solution_stack_details` - (Array<Hash>)
      #     * `:solution_stack_name` - (String)
      #     * `:permitted_file_types` - (Array<String>)

      # @!method rebuild_environment(options = {})
      # Calls the RebuildEnvironment API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment to rebuild.
      #     Condition: You must specify either this or an EnvironmentName, or
      #     both. If you do not specify either, AWS Elastic Beanstalk returns
      #     MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment to
      #     rebuild. Condition: You must specify either this or an
      #     EnvironmentId, or both. If you do not specify either, AWS Elastic
      #     Beanstalk returns MissingRequiredParameter error.
      # @return [Core::Response]

      # @!method request_environment_info(options = {})
      # Calls the RequestEnvironmentInfo API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment of the
      #     requested data. If no such environment is found,
      #     RequestEnvironmentInfo returns an InvalidParameterValue error.
      #     Condition: You must specify either this or an EnvironmentName, or
      #     both. If you do not specify either, AWS Elastic Beanstalk returns
      #     MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment of the
      #     requested data. If no such environment is found,
      #     RequestEnvironmentInfo returns an InvalidParameterValue error.
      #     Condition: You must specify either this or an EnvironmentId, or
      #     both. If you do not specify either, AWS Elastic Beanstalk returns
      #     MissingRequiredParameter error.
      #   * `:info_type` - *required* - (String) The type of information to
      #     request. Valid values include:
      #     * `tail`
      # @return [Core::Response]

      # @!method restart_app_server(options = {})
      # Calls the RestartAppServer API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment to restart
      #     the server for. Condition: You must specify either this or an
      #     EnvironmentName, or both. If you do not specify either, AWS Elastic
      #     Beanstalk returns MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment to
      #     restart the server for. Condition: You must specify either this or
      #     an EnvironmentId, or both. If you do not specify either, AWS
      #     Elastic Beanstalk returns MissingRequiredParameter error.
      # @return [Core::Response]

      # @!method retrieve_environment_info(options = {})
      # Calls the RetrieveEnvironmentInfo API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the data's environment. If
      #     no such environment is found, returns an InvalidParameterValue
      #     error. Condition: You must specify either this or an
      #     EnvironmentName, or both. If you do not specify either, AWS Elastic
      #     Beanstalk returns MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the data's environment.
      #     If no such environment is found, returns an InvalidParameterValue
      #     error. Condition: You must specify either this or an EnvironmentId,
      #     or both. If you do not specify either, AWS Elastic Beanstalk
      #     returns MissingRequiredParameter error.
      #   * `:info_type` - *required* - (String) The type of information to
      #     retrieve. Valid values include:
      #     * `tail`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environment_info` - (Array<Hash>)
      #     * `:info_type` - (String)
      #     * `:ec2_instance_id` - (String)
      #     * `:sample_timestamp` - (Time)
      #     * `:message` - (String)

      # @!method swap_environment_cnam_es(options = {})
      # Calls the SwapEnvironmentCNAMEs API operation.
      # @param [Hash] options
      #   * `:source_environment_id` - (String) The ID of the source
      #     environment. Condition: You must specify at least the
      #     SourceEnvironmentID or the SourceEnvironmentName. You may also
      #     specify both. If you specify the SourceEnvironmentId, you must
      #     specify the DestinationEnvironmentId.
      #   * `:source_environment_name` - (String) The name of the source
      #     environment. Condition: You must specify at least the
      #     SourceEnvironmentID or the SourceEnvironmentName. You may also
      #     specify both. If you specify the SourceEnvironmentName, you must
      #     specify the DestinationEnvironmentName.
      #   * `:destination_environment_id` - (String) The ID of the destination
      #     environment. Condition: You must specify at least the
      #     DestinationEnvironmentID or the DestinationEnvironmentName. You may
      #     also specify both. You must specify the SourceEnvironmentId with
      #     the DestinationEnvironmentId.
      #   * `:destination_environment_name` - (String) The name of the
      #     destination environment. Condition: You must specify at least the
      #     DestinationEnvironmentID or the DestinationEnvironmentName. You may
      #     also specify both. You must specify the SourceEnvironmentName with
      #     the DestinationEnvironmentName.
      # @return [Core::Response]

      # @!method terminate_environment(options = {})
      # Calls the TerminateEnvironment API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment to
      #     terminate. Condition: You must specify either this or an
      #     EnvironmentName, or both. If you do not specify either, AWS Elastic
      #     Beanstalk returns MissingRequiredParameter error.
      #   * `:environment_name` - (String) The name of the environment to
      #     terminate. Condition: You must specify either this or an
      #     EnvironmentId, or both. If you do not specify either, AWS Elastic
      #     Beanstalk returns MissingRequiredParameter error.
      #   * `:terminate_resources` - (Boolean) Indicates whether the associated
      #     AWS resources should shut down when the environment is terminated:
      #     `true` : (default) The user AWS resources (for example, the Auto
      #     Scaling group, LoadBalancer, etc.) are terminated along with the
      #     environment. `false` : The environment is removed from the AWS
      #     Elastic Beanstalk but the AWS resources continue to operate. `true`
      #     : The specified environment as well as the associated AWS
      #     resources, such as Auto Scaling group and LoadBalancer, are
      #     terminated. `false` : AWS Elastic Beanstalk resource management is
      #     removed from the environment, but the AWS resources continue to
      #     operate. For more information, see the AWS Elastic Beanstalk User
      #     Guide. Default: `true` Valid Values: `true` | `false`
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environment_name` - (String)
      #   * `:environment_id` - (String)
      #   * `:application_name` - (String)
      #   * `:version_label` - (String)
      #   * `:solution_stack_name` - (String)
      #   * `:template_name` - (String)
      #   * `:description` - (String)
      #   * `:endpoint_url` - (String)
      #   * `:cname` - (String)
      #   * `:date_created` - (Time)
      #   * `:date_updated` - (Time)
      #   * `:status` - (String)
      #   * `:health` - (String)
      #   * `:resources` - (Hash)
      #     * `:load_balancer` - (Hash)
      #       * `:load_balancer_name` - (String)
      #       * `:domain` - (String)
      #       * `:listeners` - (Array<Hash>)
      #         * `:protocol` - (String)
      #         * `:port` - (Integer)

      # @!method update_application(options = {})
      # Calls the UpdateApplication API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application to update. If no such application is found,
      #     UpdateApplication returns an InvalidParameterValue error.
      #   * `:description` - (String) A new description for the application.
      #     Default: If not specified, AWS Elastic Beanstalk does not update
      #     the description.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:application` - (Hash)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)
      #     * `:versions` - (Array<String>)
      #     * `:configuration_templates` - (Array<String>)

      # @!method update_application_version(options = {})
      # Calls the UpdateApplicationVersion API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application associated with this version. If no application is
      #     found with this name, UpdateApplication returns an
      #     InvalidParameterValue error.
      #   * `:version_label` - *required* - (String) The name of the version to
      #     update. If no application version is found with this label,
      #     UpdateApplication returns an InvalidParameterValue error.
      #   * `:description` - (String) A new description for this release.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:application_version` - (Hash)
      #     * `:application_name` - (String)
      #     * `:description` - (String)
      #     * `:version_label` - (String)
      #     * `:source_bundle` - (Hash)
      #       * `:s3_bucket` - (String)
      #       * `:s3_key` - (String)
      #     * `:date_created` - (Time)
      #     * `:date_updated` - (Time)

      # @!method update_configuration_template(options = {})
      # Calls the UpdateConfigurationTemplate API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application associated with the configuration template to update.
      #     If no application is found with this name,
      #     UpdateConfigurationTemplate returns an InvalidParameterValue error.
      #   * `:template_name` - *required* - (String) The name of the
      #     configuration template to update. If no configuration template is
      #     found with this name, UpdateConfigurationTemplate returns an
      #     InvalidParameterValue error.
      #   * `:description` - (String) A new description for the configuration.
      #   * `:option_settings` - (Array<Hash>) A list of configuration option
      #     settings to update with the new specified option value.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      #     * `:value` - (String) The current value for the configuration
      #       option.
      #   * `:options_to_remove` - (Array<Hash>) A list of configuration
      #     options to remove from the configuration set. Constraint: You can
      #     remove only UserDefined configuration options.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:solution_stack_name` - (String)
      #   * `:application_name` - (String)
      #   * `:template_name` - (String)
      #   * `:description` - (String)
      #   * `:environment_name` - (String)
      #   * `:deployment_status` - (String)
      #   * `:date_created` - (Time)
      #   * `:date_updated` - (Time)
      #   * `:option_settings` - (Array<Hash>)
      #     * `:namespace` - (String)
      #     * `:option_name` - (String)
      #     * `:value` - (String)

      # @!method update_environment(options = {})
      # Calls the UpdateEnvironment API operation.
      # @param [Hash] options
      #   * `:environment_id` - (String) The ID of the environment to update.
      #     If no environment with this ID exists, AWS Elastic Beanstalk
      #     returns an InvalidParameterValue error. Condition: You must specify
      #     either this or an EnvironmentName, or both. If you do not specify
      #     either, AWS Elastic Beanstalk returns MissingRequiredParameter
      #     error.
      #   * `:environment_name` - (String) The name of the environment to
      #     update. If no environment with this name exists, AWS Elastic
      #     Beanstalk returns an InvalidParameterValue error. Condition: You
      #     must specify either this or an EnvironmentId, or both. If you do
      #     not specify either, AWS Elastic Beanstalk returns
      #     MissingRequiredParameter error.
      #   * `:version_label` - (String) If this parameter is specified, AWS
      #     Elastic Beanstalk deploys the named application version to the
      #     environment. If no such application version is found, returns an
      #     InvalidParameterValue error.
      #   * `:template_name` - (String) If this parameter is specified, AWS
      #     Elastic Beanstalk deploys this configuration template to the
      #     environment. If no such configuration template is found, AWS
      #     Elastic Beanstalk returns an InvalidParameterValue error.
      #   * `:description` - (String) If this parameter is specified, AWS
      #     Elastic Beanstalk updates the description of this environment.
      #   * `:option_settings` - (Array<Hash>) If specified, AWS Elastic
      #     Beanstalk updates the configuration set associated with the running
      #     environment and sets the specified configuration options to the
      #     requested value.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      #     * `:value` - (String) The current value for the configuration
      #       option.
      #   * `:options_to_remove` - (Array<Hash>) A list of custom user-defined
      #     configuration options to remove from the configuration set for this
      #     environment.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:environment_name` - (String)
      #   * `:environment_id` - (String)
      #   * `:application_name` - (String)
      #   * `:version_label` - (String)
      #   * `:solution_stack_name` - (String)
      #   * `:template_name` - (String)
      #   * `:description` - (String)
      #   * `:endpoint_url` - (String)
      #   * `:cname` - (String)
      #   * `:date_created` - (Time)
      #   * `:date_updated` - (Time)
      #   * `:status` - (String)
      #   * `:health` - (String)
      #   * `:resources` - (Hash)
      #     * `:load_balancer` - (Hash)
      #       * `:load_balancer_name` - (String)
      #       * `:domain` - (String)
      #       * `:listeners` - (Array<Hash>)
      #         * `:protocol` - (String)
      #         * `:port` - (Integer)

      # @!method validate_configuration_settings(options = {})
      # Calls the ValidateConfigurationSettings API operation.
      # @param [Hash] options
      #   * `:application_name` - *required* - (String) The name of the
      #     application that the configuration template or environment belongs
      #     to.
      #   * `:template_name` - (String) The name of the configuration template
      #     to validate the settings against. Condition: You cannot specify
      #     both this and an environment name.
      #   * `:environment_name` - (String) The name of the environment to
      #     validate the settings against. Condition: You cannot specify both
      #     this and a configuration template name.
      #   * `:option_settings` - *required* - (Array<Hash>) A list of the
      #     options and desired values to evaluate.
      #     * `:namespace` - (String) A unique namespace identifying the
      #       option's associated AWS resource.
      #     * `:option_name` - (String) The name of the configuration option.
      #     * `:value` - (String) The current value for the configuration
      #       option.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:messages` - (Array<Hash>)
      #     * `:message` - (String)
      #     * `:severity` - (String)
      #     * `:namespace` - (String)
      #     * `:option_name` - (String)

      # end client methods #

      define_client_methods('2010-12-01')

    end
  end
end
