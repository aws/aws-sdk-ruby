# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iot1clickprojects)

module Aws::IoT1ClickProjects
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iot1clickprojects

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates a physical device with a placement.
    #
    # @option params [required, String] :project_name
    #   The name of the project containing the placement in which to associate
    #   the device.
    #
    # @option params [required, String] :placement_name
    #   The name of the placement in which to associate the device.
    #
    # @option params [required, String] :device_id
    #   The ID of the physical device to be associated with the given
    #   placement in the project. Note that a mandatory 4 character prefix is
    #   required for all `deviceId` values.
    #
    # @option params [required, String] :device_template_name
    #   The device template name to associate with the device ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_device_with_placement({
    #     project_name: "ProjectName", # required
    #     placement_name: "PlacementName", # required
    #     device_id: "DeviceId", # required
    #     device_template_name: "DeviceTemplateName", # required
    #   })
    #
    # @overload associate_device_with_placement(params = {})
    # @param [Hash] params ({})
    def associate_device_with_placement(params = {}, options = {})
      req = build_request(:associate_device_with_placement, params)
      req.send_request(options)
    end

    # Creates an empty placement.
    #
    # @option params [required, String] :placement_name
    #   The name of the placement to be created.
    #
    # @option params [required, String] :project_name
    #   The name of the project in which to create the placement.
    #
    # @option params [Hash<String,String>] :attributes
    #   Optional user-defined key/value pairs providing contextual data (such
    #   as location or function) for the placement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_placement({
    #     placement_name: "PlacementName", # required
    #     project_name: "ProjectName", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @overload create_placement(params = {})
    # @param [Hash] params ({})
    def create_placement(params = {}, options = {})
      req = build_request(:create_placement, params)
      req.send_request(options)
    end

    # Creates an empty project with a placement template. A project contains
    # zero or more placements that adhere to the placement template defined
    # in the project.
    #
    # @option params [required, String] :project_name
    #   The name of the project to create.
    #
    # @option params [String] :description
    #   An optional description for the project.
    #
    # @option params [Types::PlacementTemplate] :placement_template
    #   The schema defining the placement to be created. A placement template
    #   defines placement default attributes and device templates. You cannot
    #   add or remove device templates after the project has been created.
    #   However, you can update `callbackOverrides` for the device templates
    #   using the `UpdateProject` API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     project_name: "ProjectName", # required
    #     description: "Description",
    #     placement_template: {
    #       default_attributes: {
    #         "AttributeName" => "AttributeDefaultValue",
    #       },
    #       device_templates: {
    #         "DeviceTemplateName" => {
    #           device_type: "DeviceType",
    #           callback_overrides: {
    #             "DeviceCallbackKey" => "DeviceCallbackValue",
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Deletes a placement. To delete a placement, it must not have any
    # devices associated with it.
    #
    # <note markdown="1"> When you delete a placement, all associated data becomes
    # irretrievable.
    #
    #  </note>
    #
    # @option params [required, String] :placement_name
    #   The name of the empty placement to delete.
    #
    # @option params [required, String] :project_name
    #   The project containing the empty placement to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_placement({
    #     placement_name: "PlacementName", # required
    #     project_name: "ProjectName", # required
    #   })
    #
    # @overload delete_placement(params = {})
    # @param [Hash] params ({})
    def delete_placement(params = {}, options = {})
      req = build_request(:delete_placement, params)
      req.send_request(options)
    end

    # Deletes a project. To delete a project, it must not have any
    # placements associated with it.
    #
    # <note markdown="1"> When you delete a project, all associated data becomes irretrievable.
    #
    #  </note>
    #
    # @option params [required, String] :project_name
    #   The name of the empty project to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Describes a placement in a project.
    #
    # @option params [required, String] :placement_name
    #   The name of the placement within a project.
    #
    # @option params [required, String] :project_name
    #   The project containing the placement to be described.
    #
    # @return [Types::DescribePlacementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlacementResponse#placement #placement} => Types::PlacementDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_placement({
    #     placement_name: "PlacementName", # required
    #     project_name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.placement.project_name #=> String
    #   resp.placement.placement_name #=> String
    #   resp.placement.attributes #=> Hash
    #   resp.placement.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.placement.created_date #=> Time
    #   resp.placement.updated_date #=> Time
    #
    # @overload describe_placement(params = {})
    # @param [Hash] params ({})
    def describe_placement(params = {}, options = {})
      req = build_request(:describe_placement, params)
      req.send_request(options)
    end

    # Returns an object describing a project.
    #
    # @option params [required, String] :project_name
    #   The name of the project to be described.
    #
    # @return [Types::DescribeProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResponse#project #project} => Types::ProjectDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project.project_name #=> String
    #   resp.project.description #=> String
    #   resp.project.created_date #=> Time
    #   resp.project.updated_date #=> Time
    #   resp.project.placement_template.default_attributes #=> Hash
    #   resp.project.placement_template.default_attributes["AttributeName"] #=> String
    #   resp.project.placement_template.device_templates #=> Hash
    #   resp.project.placement_template.device_templates["DeviceTemplateName"].device_type #=> String
    #   resp.project.placement_template.device_templates["DeviceTemplateName"].callback_overrides #=> Hash
    #   resp.project.placement_template.device_templates["DeviceTemplateName"].callback_overrides["DeviceCallbackKey"] #=> String
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Removes a physical device from a placement.
    #
    # @option params [required, String] :project_name
    #   The name of the project that contains the placement.
    #
    # @option params [required, String] :placement_name
    #   The name of the placement that the device should be removed from.
    #
    # @option params [required, String] :device_template_name
    #   The device ID that should be removed from the placement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_device_from_placement({
    #     project_name: "ProjectName", # required
    #     placement_name: "PlacementName", # required
    #     device_template_name: "DeviceTemplateName", # required
    #   })
    #
    # @overload disassociate_device_from_placement(params = {})
    # @param [Hash] params ({})
    def disassociate_device_from_placement(params = {}, options = {})
      req = build_request(:disassociate_device_from_placement, params)
      req.send_request(options)
    end

    # Returns an object enumerating the devices in a placement.
    #
    # @option params [required, String] :project_name
    #   The name of the project containing the placement.
    #
    # @option params [required, String] :placement_name
    #   The name of the placement to get the devices from.
    #
    # @return [Types::GetDevicesInPlacementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicesInPlacementResponse#devices #devices} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_devices_in_placement({
    #     project_name: "ProjectName", # required
    #     placement_name: "PlacementName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Hash
    #   resp.devices["DeviceTemplateName"] #=> String
    #
    # @overload get_devices_in_placement(params = {})
    # @param [Hash] params ({})
    def get_devices_in_placement(params = {}, options = {})
      req = build_request(:get_devices_in_placement, params)
      req.send_request(options)
    end

    # Lists the placement(s) of a project.
    #
    # @option params [required, String] :project_name
    #   The project containing the placements to be listed.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request. If not set, a
    #   default value of 100 is used.
    #
    # @return [Types::ListPlacementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPlacementsResponse#placements #placements} => Array&lt;Types::PlacementSummary&gt;
    #   * {Types::ListPlacementsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_placements({
    #     project_name: "ProjectName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.placements #=> Array
    #   resp.placements[0].project_name #=> String
    #   resp.placements[0].placement_name #=> String
    #   resp.placements[0].created_date #=> Time
    #   resp.placements[0].updated_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_placements(params = {})
    # @param [Hash] params ({})
    def list_placements(params = {}, options = {})
      req = build_request(:list_placements, params)
      req.send_request(options)
    end

    # Lists the AWS IoT 1-Click project(s) associated with your AWS account
    # and region.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request. If not set, a
    #   default value of 100 is used.
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#projects #projects} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].project_name #=> String
    #   resp.projects[0].created_date #=> Time
    #   resp.projects[0].updated_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Updates a placement with the given attributes. To clear an attribute,
    # pass an empty value (i.e., "").
    #
    # @option params [required, String] :placement_name
    #   The name of the placement to update.
    #
    # @option params [required, String] :project_name
    #   The name of the project containing the placement to be updated.
    #
    # @option params [Hash<String,String>] :attributes
    #   The user-defined object of attributes used to update the placement.
    #   The maximum number of key/value pairs is 50.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_placement({
    #     placement_name: "PlacementName", # required
    #     project_name: "ProjectName", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @overload update_placement(params = {})
    # @param [Hash] params ({})
    def update_placement(params = {}, options = {})
      req = build_request(:update_placement, params)
      req.send_request(options)
    end

    # Updates a project associated with your AWS account and region. With
    # the exception of device template names, you can pass just the values
    # that need to be updated because the update request will change only
    # the values that are provided. To clear a value, pass the empty string
    # (i.e., `""`).
    #
    # @option params [required, String] :project_name
    #   The name of the project to be updated.
    #
    # @option params [String] :description
    #   An optional user-defined description for the project.
    #
    # @option params [Types::PlacementTemplate] :placement_template
    #   An object defining the project update. Once a project has been
    #   created, you cannot add device template names to the project. However,
    #   for a given `placementTemplate`, you can update the associated
    #   `callbackOverrides` for the device definition using this API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     project_name: "ProjectName", # required
    #     description: "Description",
    #     placement_template: {
    #       default_attributes: {
    #         "AttributeName" => "AttributeDefaultValue",
    #       },
    #       device_templates: {
    #         "DeviceTemplateName" => {
    #           device_type: "DeviceType",
    #           callback_overrides: {
    #             "DeviceCallbackKey" => "DeviceCallbackValue",
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-iot1clickprojects'
      context[:gem_version] = '1.3.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
