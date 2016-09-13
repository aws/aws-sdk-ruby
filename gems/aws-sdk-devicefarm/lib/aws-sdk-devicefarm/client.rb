# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/request_signer.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws
  module DeviceFarm
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :devicefarm

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      def initialize(**args)
        super
      end

      # @!group API Operations

      # Creates a device pool.
      # @option params [required, String] :project_arn
      #   The ARN of the project for the device pool.
      # @option params [required, String] :name
      #   The device pool\'s name.
      # @option params [String] :description
      #   The device pool\'s description.
      # @option params [required, Array<Types::Rule>] :rules
      #   The device pool\'s rules.
      # @return [Types::CreateDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateDevicePoolResult#device_pool #devicePool} => Types::DevicePool
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_device_pool({
      #     project_arn: "AmazonResourceName", # required
      #     name: "Name", # required
      #     description: "Message",
      #     rules: [ # required
      #       {
      #         attribute: "ARN", # accepts ARN, PLATFORM, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED
      #         operator: "EQUALS", # accepts EQUALS, LESS_THAN, GREATER_THAN, IN, NOT_IN
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.device_pool.arn #=> String
      #   resp.device_pool.name #=> String
      #   resp.device_pool.description #=> String
      #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
      #   resp.device_pool.rules #=> Array
      #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN"
      #   resp.device_pool.rules[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_device_pool(params = {}, options = {})
        req = build_request(:create_device_pool, params)
        req.send_request(options)
      end

      # Creates a new project.
      # @option params [required, String] :name
      #   The project\'s name.
      # @return [Types::CreateProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateProjectResult#project #project} => Types::Project
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_project({
      #     name: "Name", # required
      #   })
      #
      # @example Response structure
      #   resp.project.arn #=> String
      #   resp.project.name #=> String
      #   resp.project.created #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_project(params = {}, options = {})
        req = build_request(:create_project, params)
        req.send_request(options)
      end

      # Specifies and starts a remote access session.
      # @option params [required, String] :project_arn
      #   The Amazon Resource Name (ARN) of the project for which you want to
      #   create a remote access session.
      # @option params [required, String] :device_arn
      #   The Amazon Resource Name (ARN) of the device for which you want to
      #   create a remote access session.
      # @option params [String] :name
      #   The name of the remote access session that you wish to create.
      # @option params [Types::CreateRemoteAccessSessionConfiguration] :configuration
      #   The configuration information for the remote access session request.
      # @return [Types::CreateRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateRemoteAccessSessionResult#remote_access_session #remoteAccessSession} => Types::RemoteAccessSession
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_remote_access_session({
      #     project_arn: "AmazonResourceName", # required
      #     device_arn: "AmazonResourceName", # required
      #     name: "Name",
      #     configuration: {
      #       billing_method: "METERED", # accepts METERED, UNMETERED
      #     },
      #   })
      #
      # @example Response structure
      #   resp.remote_access_session.arn #=> String
      #   resp.remote_access_session.name #=> String
      #   resp.remote_access_session.created #=> Time
      #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.remote_access_session.message #=> String
      #   resp.remote_access_session.started #=> Time
      #   resp.remote_access_session.stopped #=> Time
      #   resp.remote_access_session.device.arn #=> String
      #   resp.remote_access_session.device.name #=> String
      #   resp.remote_access_session.device.manufacturer #=> String
      #   resp.remote_access_session.device.model #=> String
      #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.remote_access_session.device.os #=> String
      #   resp.remote_access_session.device.cpu.frequency #=> String
      #   resp.remote_access_session.device.cpu.architecture #=> String
      #   resp.remote_access_session.device.cpu.clock #=> Float
      #   resp.remote_access_session.device.resolution.width #=> Integer
      #   resp.remote_access_session.device.resolution.height #=> Integer
      #   resp.remote_access_session.device.heap_size #=> Integer
      #   resp.remote_access_session.device.memory #=> Integer
      #   resp.remote_access_session.device.image #=> String
      #   resp.remote_access_session.device.carrier #=> String
      #   resp.remote_access_session.device.radio #=> String
      #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
      #   resp.remote_access_session.device.fleet_type #=> String
      #   resp.remote_access_session.device.fleet_name #=> String
      #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.remote_access_session.device_minutes.total #=> Float
      #   resp.remote_access_session.device_minutes.metered #=> Float
      #   resp.remote_access_session.device_minutes.unmetered #=> Float
      #   resp.remote_access_session.endpoint #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_remote_access_session(params = {}, options = {})
        req = build_request(:create_remote_access_session, params)
        req.send_request(options)
      end

      # Uploads an app or test scripts.
      # @option params [required, String] :project_arn
      #   The ARN of the project for the upload.
      # @option params [required, String] :name
      #   The upload\'s file name. The name should not contain the \'/\'
      #   character.
      # @option params [required, String] :type
      #   The upload\'s upload type.
      #
      #   Must be one of the following values:
      #
      #   * ANDROID\_APP: An Android upload.
      #
      #   * IOS\_APP: An iOS upload.
      #
      #   * WEB\_APP: A web appliction upload.
      #
      #   * EXTERNAL\_DATA: An external data upload.
      #
      #   * APPIUM\_JAVA\_JUNIT\_TEST\_PACKAGE: An Appium Java JUnit test
      #     package upload.
      #
      #   * APPIUM\_JAVA\_TESTNG\_TEST\_PACKAGE: An Appium Java TestNG test
      #     package upload.
      #
      #   * APPIUM\_PYTHON\_TEST\_PACKAGE: An Appium Python test package upload.
      #
      #   * APPIUM\_WEB\_JAVA\_JUNIT\_TEST\_PACKAGE: An Appium Java JUnit test
      #     package upload.
      #
      #   * APPIUM\_WEB\_JAVA\_TESTNG\_TEST\_PACKAGE: An Appium Java TestNG test
      #     package upload.
      #
      #   * APPIUM\_WEB\_PYTHON\_TEST\_PACKAGE: An Appium Python test package
      #     upload.
      #
      #   * CALABASH\_TEST\_PACKAGE: A Calabash test package upload.
      #
      #   * INSTRUMENTATION\_TEST\_PACKAGE: An instrumentation upload.
      #
      #   * UIAUTOMATION\_TEST\_PACKAGE: A uiautomation test package upload.
      #
      #   * UIAUTOMATOR\_TEST\_PACKAGE: A uiautomator test package upload.
      #
      #   * XCTEST\_TEST\_PACKAGE: An XCode test package upload.
      #
      #   * XCTEST\_UI\_TEST\_PACKAGE: An XCode UI test package upload.
      #
      #   **Note** If you call `CreateUpload` with `WEB_APP` specified, AWS
      #   Device Farm throws an `ArgumentException` error.
      # @option params [String] :content_type
      #   The upload\'s content type (for example,
      #   \"application/octet-stream\").
      # @return [Types::CreateUploadResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateUploadResult#upload #upload} => Types::Upload
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_upload({
      #     project_arn: "AmazonResourceName", # required
      #     name: "Name", # required
      #     type: "ANDROID_APP", # required, accepts ANDROID_APP, IOS_APP, WEB_APP, EXTERNAL_DATA, APPIUM_JAVA_JUNIT_TEST_PACKAGE, APPIUM_JAVA_TESTNG_TEST_PACKAGE, APPIUM_PYTHON_TEST_PACKAGE, APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE, APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE, APPIUM_WEB_PYTHON_TEST_PACKAGE, CALABASH_TEST_PACKAGE, INSTRUMENTATION_TEST_PACKAGE, UIAUTOMATION_TEST_PACKAGE, UIAUTOMATOR_TEST_PACKAGE, XCTEST_TEST_PACKAGE, XCTEST_UI_TEST_PACKAGE
      #     content_type: "ContentType",
      #   })
      #
      # @example Response structure
      #   resp.upload.arn #=> String
      #   resp.upload.name #=> String
      #   resp.upload.created #=> Time
      #   resp.upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE"
      #   resp.upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
      #   resp.upload.url #=> String
      #   resp.upload.metadata #=> String
      #   resp.upload.content_type #=> String
      #   resp.upload.message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_upload(params = {}, options = {})
        req = build_request(:create_upload, params)
        req.send_request(options)
      end

      # Deletes a device pool given the pool ARN. Does not allow deletion of
      # curated pools owned by the system.
      # @option params [required, String] :arn
      #   Represents the Amazon Resource Name (ARN) of the Device Farm device
      #   pool you wish to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_device_pool({
      #     arn: "AmazonResourceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_device_pool(params = {}, options = {})
        req = build_request(:delete_device_pool, params)
        req.send_request(options)
      end

      # Deletes an AWS Device Farm project, given the project ARN.
      #
      # **Note** Deleting this resource does not stop an in-progress run.
      # @option params [required, String] :arn
      #   Represents the Amazon Resource Name (ARN) of the Device Farm project
      #   you wish to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_project({
      #     arn: "AmazonResourceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_project(params = {}, options = {})
        req = build_request(:delete_project, params)
        req.send_request(options)
      end

      # Deletes a completed remote access session and its results.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) of the sesssion for which you want to
      #   delete remote access.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_remote_access_session({
      #     arn: "AmazonResourceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_remote_access_session(params = {}, options = {})
        req = build_request(:delete_remote_access_session, params)
        req.send_request(options)
      end

      # Deletes the run, given the run ARN.
      #
      # **Note** Deleting this resource does not stop an in-progress run.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) for the run you wish to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_run({
      #     arn: "AmazonResourceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_run(params = {}, options = {})
        req = build_request(:delete_run, params)
        req.send_request(options)
      end

      # Deletes an upload given the upload ARN.
      # @option params [required, String] :arn
      #   Represents the Amazon Resource Name (ARN) of the Device Farm upload
      #   you wish to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_upload({
      #     arn: "AmazonResourceName", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_upload(params = {}, options = {})
        req = build_request(:delete_upload, params)
        req.send_request(options)
      end

      # Returns the number of unmetered iOS and/or unmetered Android devices
      # that have been purchased by the account.
      # @return [Types::GetAccountSettingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetAccountSettingsResult#account_settings #accountSettings} => Types::AccountSettings
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_account_settings()
      #
      # @example Response structure
      #   resp.account_settings.aws_account_number #=> String
      #   resp.account_settings.unmetered_devices #=> Hash
      #   resp.account_settings.unmetered_devices["DevicePlatform"] #=> Integer
      #   resp.account_settings.unmetered_remote_access_devices #=> Hash
      #   resp.account_settings.unmetered_remote_access_devices["DevicePlatform"] #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_account_settings(params = {}, options = {})
        req = build_request(:get_account_settings, params)
        req.send_request(options)
      end

      # Gets information about a unique device type.
      # @option params [required, String] :arn
      #   The device type\'s ARN.
      # @return [Types::GetDeviceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDeviceResult#device #device} => Types::Device
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_device({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.device.arn #=> String
      #   resp.device.name #=> String
      #   resp.device.manufacturer #=> String
      #   resp.device.model #=> String
      #   resp.device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.device.os #=> String
      #   resp.device.cpu.frequency #=> String
      #   resp.device.cpu.architecture #=> String
      #   resp.device.cpu.clock #=> Float
      #   resp.device.resolution.width #=> Integer
      #   resp.device.resolution.height #=> Integer
      #   resp.device.heap_size #=> Integer
      #   resp.device.memory #=> Integer
      #   resp.device.image #=> String
      #   resp.device.carrier #=> String
      #   resp.device.radio #=> String
      #   resp.device.remote_access_enabled #=> Boolean
      #   resp.device.fleet_type #=> String
      #   resp.device.fleet_name #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_device(params = {}, options = {})
        req = build_request(:get_device, params)
        req.send_request(options)
      end

      # Gets information about a device pool.
      # @option params [required, String] :arn
      #   The device pool\'s ARN.
      # @return [Types::GetDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDevicePoolResult#device_pool #devicePool} => Types::DevicePool
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_device_pool({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.device_pool.arn #=> String
      #   resp.device_pool.name #=> String
      #   resp.device_pool.description #=> String
      #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
      #   resp.device_pool.rules #=> Array
      #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN"
      #   resp.device_pool.rules[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_device_pool(params = {}, options = {})
        req = build_request(:get_device_pool, params)
        req.send_request(options)
      end

      # Gets information about compatibility with a device pool.
      # @option params [required, String] :device_pool_arn
      #   The device pool\'s ARN.
      # @option params [String] :app_arn
      #   The ARN of the app that is associated with the specified device pool.
      # @option params [String] :test_type
      #   The test type for the specified device pool.
      #
      #   Allowed values include the following:
      #
      #   * BUILTIN\_FUZZ: The built-in fuzz type.
      #
      #   * BUILTIN\_EXPLORER: For Android, an app explorer that will traverse
      #     an Android app, interacting with it and capturing screenshots at the
      #     same time.
      #
      #   * APPIUM\_JAVA\_JUNIT: The Appium Java JUnit type.
      #
      #   * APPIUM\_JAVA\_TESTNG: The Appium Java TestNG type.
      #
      #   * APPIUM\_PYTHON: The Appium Python type.
      #
      #   * APPIUM\_WEB\_JAVA\_JUNIT: The Appium Java JUnit type for Web apps.
      #
      #   * APPIUM\_WEB\_JAVA\_TESTNG: The Appium Java TestNG type for Web apps.
      #
      #   * APPIUM\_WEB\_PYTHON: The Appium Python type for Web apps.
      #
      #   * CALABASH: The Calabash type.
      #
      #   * INSTRUMENTATION: The Instrumentation type.
      #
      #   * UIAUTOMATION: The uiautomation type.
      #
      #   * UIAUTOMATOR: The uiautomator type.
      #
      #   * XCTEST: The XCode test type.
      #
      #   * XCTEST\_UI: The XCode UI test type.
      # @return [Types::GetDevicePoolCompatibilityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetDevicePoolCompatibilityResult#compatible_devices #compatibleDevices} => Array&lt;Types::DevicePoolCompatibilityResult&gt;
      #   * {Types::GetDevicePoolCompatibilityResult#incompatible_devices #incompatibleDevices} => Array&lt;Types::DevicePoolCompatibilityResult&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_device_pool_compatibility({
      #     device_pool_arn: "AmazonResourceName", # required
      #     app_arn: "AmazonResourceName",
      #     test_type: "BUILTIN_FUZZ", # accepts BUILTIN_FUZZ, BUILTIN_EXPLORER, APPIUM_JAVA_JUNIT, APPIUM_JAVA_TESTNG, APPIUM_PYTHON, APPIUM_WEB_JAVA_JUNIT, APPIUM_WEB_JAVA_TESTNG, APPIUM_WEB_PYTHON, CALABASH, INSTRUMENTATION, UIAUTOMATION, UIAUTOMATOR, XCTEST, XCTEST_UI
      #   })
      #
      # @example Response structure
      #   resp.compatible_devices #=> Array
      #   resp.compatible_devices[0].device.arn #=> String
      #   resp.compatible_devices[0].device.name #=> String
      #   resp.compatible_devices[0].device.manufacturer #=> String
      #   resp.compatible_devices[0].device.model #=> String
      #   resp.compatible_devices[0].device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.compatible_devices[0].device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.compatible_devices[0].device.os #=> String
      #   resp.compatible_devices[0].device.cpu.frequency #=> String
      #   resp.compatible_devices[0].device.cpu.architecture #=> String
      #   resp.compatible_devices[0].device.cpu.clock #=> Float
      #   resp.compatible_devices[0].device.resolution.width #=> Integer
      #   resp.compatible_devices[0].device.resolution.height #=> Integer
      #   resp.compatible_devices[0].device.heap_size #=> Integer
      #   resp.compatible_devices[0].device.memory #=> Integer
      #   resp.compatible_devices[0].device.image #=> String
      #   resp.compatible_devices[0].device.carrier #=> String
      #   resp.compatible_devices[0].device.radio #=> String
      #   resp.compatible_devices[0].device.remote_access_enabled #=> Boolean
      #   resp.compatible_devices[0].device.fleet_type #=> String
      #   resp.compatible_devices[0].device.fleet_name #=> String
      #   resp.compatible_devices[0].compatible #=> Boolean
      #   resp.compatible_devices[0].incompatibility_messages #=> Array
      #   resp.compatible_devices[0].incompatibility_messages[0].message #=> String
      #   resp.compatible_devices[0].incompatibility_messages[0].type #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      #   resp.incompatible_devices #=> Array
      #   resp.incompatible_devices[0].device.arn #=> String
      #   resp.incompatible_devices[0].device.name #=> String
      #   resp.incompatible_devices[0].device.manufacturer #=> String
      #   resp.incompatible_devices[0].device.model #=> String
      #   resp.incompatible_devices[0].device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.incompatible_devices[0].device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.incompatible_devices[0].device.os #=> String
      #   resp.incompatible_devices[0].device.cpu.frequency #=> String
      #   resp.incompatible_devices[0].device.cpu.architecture #=> String
      #   resp.incompatible_devices[0].device.cpu.clock #=> Float
      #   resp.incompatible_devices[0].device.resolution.width #=> Integer
      #   resp.incompatible_devices[0].device.resolution.height #=> Integer
      #   resp.incompatible_devices[0].device.heap_size #=> Integer
      #   resp.incompatible_devices[0].device.memory #=> Integer
      #   resp.incompatible_devices[0].device.image #=> String
      #   resp.incompatible_devices[0].device.carrier #=> String
      #   resp.incompatible_devices[0].device.radio #=> String
      #   resp.incompatible_devices[0].device.remote_access_enabled #=> Boolean
      #   resp.incompatible_devices[0].device.fleet_type #=> String
      #   resp.incompatible_devices[0].device.fleet_name #=> String
      #   resp.incompatible_devices[0].compatible #=> Boolean
      #   resp.incompatible_devices[0].incompatibility_messages #=> Array
      #   resp.incompatible_devices[0].incompatibility_messages[0].message #=> String
      #   resp.incompatible_devices[0].incompatibility_messages[0].type #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_device_pool_compatibility(params = {}, options = {})
        req = build_request(:get_device_pool_compatibility, params)
        req.send_request(options)
      end

      # Gets information about a job.
      # @option params [required, String] :arn
      #   The job\'s ARN.
      # @return [Types::GetJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobResult#job #job} => Types::Job
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.job.arn #=> String
      #   resp.job.name #=> String
      #   resp.job.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.job.created #=> Time
      #   resp.job.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.job.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.job.started #=> Time
      #   resp.job.stopped #=> Time
      #   resp.job.counters.total #=> Integer
      #   resp.job.counters.passed #=> Integer
      #   resp.job.counters.failed #=> Integer
      #   resp.job.counters.warned #=> Integer
      #   resp.job.counters.errored #=> Integer
      #   resp.job.counters.stopped #=> Integer
      #   resp.job.counters.skipped #=> Integer
      #   resp.job.message #=> String
      #   resp.job.device.arn #=> String
      #   resp.job.device.name #=> String
      #   resp.job.device.manufacturer #=> String
      #   resp.job.device.model #=> String
      #   resp.job.device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.job.device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.job.device.os #=> String
      #   resp.job.device.cpu.frequency #=> String
      #   resp.job.device.cpu.architecture #=> String
      #   resp.job.device.cpu.clock #=> Float
      #   resp.job.device.resolution.width #=> Integer
      #   resp.job.device.resolution.height #=> Integer
      #   resp.job.device.heap_size #=> Integer
      #   resp.job.device.memory #=> Integer
      #   resp.job.device.image #=> String
      #   resp.job.device.carrier #=> String
      #   resp.job.device.radio #=> String
      #   resp.job.device.remote_access_enabled #=> Boolean
      #   resp.job.device.fleet_type #=> String
      #   resp.job.device.fleet_name #=> String
      #   resp.job.device_minutes.total #=> Float
      #   resp.job.device_minutes.metered #=> Float
      #   resp.job.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_job(params = {}, options = {})
        req = build_request(:get_job, params)
        req.send_request(options)
      end

      # Gets the current status and future status of all offerings purchased
      # by an AWS account. The response indicates how many offerings are
      # currently available and the offerings that will be available in the
      # next period. The API returns a `NotEligible` error if the user is not
      # permitted to invoke the operation. Please contact
      # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
      # if you believe that you should be able to invoke this operation.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::GetOfferingStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetOfferingStatusResult#current #current} => Hash&lt;String,Types::OfferingStatus&gt;
      #   * {Types::GetOfferingStatusResult#next_period #nextPeriod} => Hash&lt;String,Types::OfferingStatus&gt;
      #   * {Types::GetOfferingStatusResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_offering_status({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.current #=> Hash
      #   resp.current["OfferingIdentifier"].type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
      #   resp.current["OfferingIdentifier"].offering.id #=> String
      #   resp.current["OfferingIdentifier"].offering.description #=> String
      #   resp.current["OfferingIdentifier"].offering.type #=> String, one of "RECURRING"
      #   resp.current["OfferingIdentifier"].offering.platform #=> String, one of "ANDROID", "IOS"
      #   resp.current["OfferingIdentifier"].offering.recurring_charges #=> Array
      #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].cost.amount #=> Float
      #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.current["OfferingIdentifier"].quantity #=> Integer
      #   resp.current["OfferingIdentifier"].effective_on #=> Time
      #   resp.next_period #=> Hash
      #   resp.next_period["OfferingIdentifier"].type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
      #   resp.next_period["OfferingIdentifier"].offering.id #=> String
      #   resp.next_period["OfferingIdentifier"].offering.description #=> String
      #   resp.next_period["OfferingIdentifier"].offering.type #=> String, one of "RECURRING"
      #   resp.next_period["OfferingIdentifier"].offering.platform #=> String, one of "ANDROID", "IOS"
      #   resp.next_period["OfferingIdentifier"].offering.recurring_charges #=> Array
      #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].cost.amount #=> Float
      #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.next_period["OfferingIdentifier"].quantity #=> Integer
      #   resp.next_period["OfferingIdentifier"].effective_on #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_offering_status(params = {}, options = {})
        req = build_request(:get_offering_status, params)
        req.send_request(options)
      end

      # Gets information about a project.
      # @option params [required, String] :arn
      #   The project\'s ARN.
      # @return [Types::GetProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetProjectResult#project #project} => Types::Project
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_project({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.project.arn #=> String
      #   resp.project.name #=> String
      #   resp.project.created #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_project(params = {}, options = {})
        req = build_request(:get_project, params)
        req.send_request(options)
      end

      # Returns a link to a currently running remote access session.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) of the remote access session about
      #   which you want to get session information.
      # @return [Types::GetRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetRemoteAccessSessionResult#remote_access_session #remoteAccessSession} => Types::RemoteAccessSession
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_remote_access_session({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.remote_access_session.arn #=> String
      #   resp.remote_access_session.name #=> String
      #   resp.remote_access_session.created #=> Time
      #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.remote_access_session.message #=> String
      #   resp.remote_access_session.started #=> Time
      #   resp.remote_access_session.stopped #=> Time
      #   resp.remote_access_session.device.arn #=> String
      #   resp.remote_access_session.device.name #=> String
      #   resp.remote_access_session.device.manufacturer #=> String
      #   resp.remote_access_session.device.model #=> String
      #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.remote_access_session.device.os #=> String
      #   resp.remote_access_session.device.cpu.frequency #=> String
      #   resp.remote_access_session.device.cpu.architecture #=> String
      #   resp.remote_access_session.device.cpu.clock #=> Float
      #   resp.remote_access_session.device.resolution.width #=> Integer
      #   resp.remote_access_session.device.resolution.height #=> Integer
      #   resp.remote_access_session.device.heap_size #=> Integer
      #   resp.remote_access_session.device.memory #=> Integer
      #   resp.remote_access_session.device.image #=> String
      #   resp.remote_access_session.device.carrier #=> String
      #   resp.remote_access_session.device.radio #=> String
      #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
      #   resp.remote_access_session.device.fleet_type #=> String
      #   resp.remote_access_session.device.fleet_name #=> String
      #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.remote_access_session.device_minutes.total #=> Float
      #   resp.remote_access_session.device_minutes.metered #=> Float
      #   resp.remote_access_session.device_minutes.unmetered #=> Float
      #   resp.remote_access_session.endpoint #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_remote_access_session(params = {}, options = {})
        req = build_request(:get_remote_access_session, params)
        req.send_request(options)
      end

      # Gets information about a run.
      # @option params [required, String] :arn
      #   The run\'s ARN.
      # @return [Types::GetRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetRunResult#run #run} => Types::Run
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_run({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.run.arn #=> String
      #   resp.run.name #=> String
      #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.run.platform #=> String, one of "ANDROID", "IOS"
      #   resp.run.created #=> Time
      #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.run.started #=> Time
      #   resp.run.stopped #=> Time
      #   resp.run.counters.total #=> Integer
      #   resp.run.counters.passed #=> Integer
      #   resp.run.counters.failed #=> Integer
      #   resp.run.counters.warned #=> Integer
      #   resp.run.counters.errored #=> Integer
      #   resp.run.counters.stopped #=> Integer
      #   resp.run.counters.skipped #=> Integer
      #   resp.run.message #=> String
      #   resp.run.total_jobs #=> Integer
      #   resp.run.completed_jobs #=> Integer
      #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.run.device_minutes.total #=> Float
      #   resp.run.device_minutes.metered #=> Float
      #   resp.run.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_run(params = {}, options = {})
        req = build_request(:get_run, params)
        req.send_request(options)
      end

      # Gets information about a suite.
      # @option params [required, String] :arn
      #   The suite\'s ARN.
      # @return [Types::GetSuiteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetSuiteResult#suite #suite} => Types::Suite
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_suite({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.suite.arn #=> String
      #   resp.suite.name #=> String
      #   resp.suite.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.suite.created #=> Time
      #   resp.suite.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.suite.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.suite.started #=> Time
      #   resp.suite.stopped #=> Time
      #   resp.suite.counters.total #=> Integer
      #   resp.suite.counters.passed #=> Integer
      #   resp.suite.counters.failed #=> Integer
      #   resp.suite.counters.warned #=> Integer
      #   resp.suite.counters.errored #=> Integer
      #   resp.suite.counters.stopped #=> Integer
      #   resp.suite.counters.skipped #=> Integer
      #   resp.suite.message #=> String
      #   resp.suite.device_minutes.total #=> Float
      #   resp.suite.device_minutes.metered #=> Float
      #   resp.suite.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_suite(params = {}, options = {})
        req = build_request(:get_suite, params)
        req.send_request(options)
      end

      # Gets information about a test.
      # @option params [required, String] :arn
      #   The test\'s ARN.
      # @return [Types::GetTestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetTestResult#test #test} => Types::Test
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_test({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.test.arn #=> String
      #   resp.test.name #=> String
      #   resp.test.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.test.created #=> Time
      #   resp.test.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.test.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.test.started #=> Time
      #   resp.test.stopped #=> Time
      #   resp.test.counters.total #=> Integer
      #   resp.test.counters.passed #=> Integer
      #   resp.test.counters.failed #=> Integer
      #   resp.test.counters.warned #=> Integer
      #   resp.test.counters.errored #=> Integer
      #   resp.test.counters.stopped #=> Integer
      #   resp.test.counters.skipped #=> Integer
      #   resp.test.message #=> String
      #   resp.test.device_minutes.total #=> Float
      #   resp.test.device_minutes.metered #=> Float
      #   resp.test.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_test(params = {}, options = {})
        req = build_request(:get_test, params)
        req.send_request(options)
      end

      # Gets information about an upload.
      # @option params [required, String] :arn
      #   The upload\'s ARN.
      # @return [Types::GetUploadResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetUploadResult#upload #upload} => Types::Upload
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_upload({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.upload.arn #=> String
      #   resp.upload.name #=> String
      #   resp.upload.created #=> Time
      #   resp.upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE"
      #   resp.upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
      #   resp.upload.url #=> String
      #   resp.upload.metadata #=> String
      #   resp.upload.content_type #=> String
      #   resp.upload.message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_upload(params = {}, options = {})
        req = build_request(:get_upload, params)
        req.send_request(options)
      end

      # Installs an application to the device in a remote access session. For
      # Android applications, the file must be in .apk format. For iOS
      # applications, the file must be in .ipa format.
      # @option params [required, String] :remote_access_session_arn
      #   The Amazon Resource Name (ARN) of the remote access session about
      #   which you are requesting information.
      # @option params [required, String] :app_arn
      #   The Amazon Resource Name (ARN) of the app about which you are
      #   requesting information.
      # @return [Types::InstallToRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::InstallToRemoteAccessSessionResult#app_upload #appUpload} => Types::Upload
      #
      # @example Request syntax with placeholder values
      #   resp = client.install_to_remote_access_session({
      #     remote_access_session_arn: "AmazonResourceName", # required
      #     app_arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.app_upload.arn #=> String
      #   resp.app_upload.name #=> String
      #   resp.app_upload.created #=> Time
      #   resp.app_upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE"
      #   resp.app_upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
      #   resp.app_upload.url #=> String
      #   resp.app_upload.metadata #=> String
      #   resp.app_upload.content_type #=> String
      #   resp.app_upload.message #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def install_to_remote_access_session(params = {}, options = {})
        req = build_request(:install_to_remote_access_session, params)
        req.send_request(options)
      end

      # Gets information about artifacts.
      # @option params [required, String] :arn
      #   The Run, Job, Suite, or Test ARN.
      # @option params [required, String] :type
      #   The artifacts\' type.
      #
      #   Allowed values include:
      #
      #   * FILE: The artifacts are files.
      #   * LOG: The artifacts are logs.
      #   * SCREENSHOT: The artifacts are screenshots.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListArtifactsResult#artifacts #artifacts} => Array&lt;Types::Artifact&gt;
      #   * {Types::ListArtifactsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_artifacts({
      #     arn: "AmazonResourceName", # required
      #     type: "SCREENSHOT", # required, accepts SCREENSHOT, FILE, LOG
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.artifacts #=> Array
      #   resp.artifacts[0].arn #=> String
      #   resp.artifacts[0].name #=> String
      #   resp.artifacts[0].type #=> String, one of "UNKNOWN", "SCREENSHOT", "DEVICE_LOG", "MESSAGE_LOG", "VIDEO_LOG", "RESULT_LOG", "SERVICE_LOG", "WEBKIT_LOG", "INSTRUMENTATION_OUTPUT", "EXERCISER_MONKEY_OUTPUT", "CALABASH_JSON_OUTPUT", "CALABASH_PRETTY_OUTPUT", "CALABASH_STANDARD_OUTPUT", "CALABASH_JAVA_XML_OUTPUT", "AUTOMATION_OUTPUT", "APPIUM_SERVER_OUTPUT", "APPIUM_JAVA_OUTPUT", "APPIUM_JAVA_XML_OUTPUT", "APPIUM_PYTHON_OUTPUT", "APPIUM_PYTHON_XML_OUTPUT", "EXPLORER_EVENT_LOG", "EXPLORER_SUMMARY_LOG", "APPLICATION_CRASH_REPORT", "XCTEST_LOG", "VIDEO"
      #   resp.artifacts[0].extension #=> String
      #   resp.artifacts[0].url #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_artifacts(params = {}, options = {})
        req = build_request(:list_artifacts, params)
        req.send_request(options)
      end

      # Gets information about device pools.
      # @option params [required, String] :arn
      #   The project ARN.
      # @option params [String] :type
      #   The device pools\' type.
      #
      #   Allowed values include:
      #
      #   * CURATED: A device pool that is created and managed by AWS Device
      #     Farm.
      #
      #   * PRIVATE: A device pool that is created and managed by the device
      #     pool developer.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListDevicePoolsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDevicePoolsResult#device_pools #devicePools} => Array&lt;Types::DevicePool&gt;
      #   * {Types::ListDevicePoolsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_device_pools({
      #     arn: "AmazonResourceName", # required
      #     type: "CURATED", # accepts CURATED, PRIVATE
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.device_pools #=> Array
      #   resp.device_pools[0].arn #=> String
      #   resp.device_pools[0].name #=> String
      #   resp.device_pools[0].description #=> String
      #   resp.device_pools[0].type #=> String, one of "CURATED", "PRIVATE"
      #   resp.device_pools[0].rules #=> Array
      #   resp.device_pools[0].rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      #   resp.device_pools[0].rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN"
      #   resp.device_pools[0].rules[0].value #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_device_pools(params = {}, options = {})
        req = build_request(:list_device_pools, params)
        req.send_request(options)
      end

      # Gets information about unique device types.
      # @option params [String] :arn
      #   The device types\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListDevicesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListDevicesResult#devices #devices} => Array&lt;Types::Device&gt;
      #   * {Types::ListDevicesResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_devices({
      #     arn: "AmazonResourceName",
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.devices #=> Array
      #   resp.devices[0].arn #=> String
      #   resp.devices[0].name #=> String
      #   resp.devices[0].manufacturer #=> String
      #   resp.devices[0].model #=> String
      #   resp.devices[0].form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.devices[0].platform #=> String, one of "ANDROID", "IOS"
      #   resp.devices[0].os #=> String
      #   resp.devices[0].cpu.frequency #=> String
      #   resp.devices[0].cpu.architecture #=> String
      #   resp.devices[0].cpu.clock #=> Float
      #   resp.devices[0].resolution.width #=> Integer
      #   resp.devices[0].resolution.height #=> Integer
      #   resp.devices[0].heap_size #=> Integer
      #   resp.devices[0].memory #=> Integer
      #   resp.devices[0].image #=> String
      #   resp.devices[0].carrier #=> String
      #   resp.devices[0].radio #=> String
      #   resp.devices[0].remote_access_enabled #=> Boolean
      #   resp.devices[0].fleet_type #=> String
      #   resp.devices[0].fleet_name #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_devices(params = {}, options = {})
        req = build_request(:list_devices, params)
        req.send_request(options)
      end

      # Gets information about jobs.
      # @option params [required, String] :arn
      #   The jobs\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListJobsResult#jobs #jobs} => Array&lt;Types::Job&gt;
      #   * {Types::ListJobsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_jobs({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.jobs #=> Array
      #   resp.jobs[0].arn #=> String
      #   resp.jobs[0].name #=> String
      #   resp.jobs[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.jobs[0].created #=> Time
      #   resp.jobs[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.jobs[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.jobs[0].started #=> Time
      #   resp.jobs[0].stopped #=> Time
      #   resp.jobs[0].counters.total #=> Integer
      #   resp.jobs[0].counters.passed #=> Integer
      #   resp.jobs[0].counters.failed #=> Integer
      #   resp.jobs[0].counters.warned #=> Integer
      #   resp.jobs[0].counters.errored #=> Integer
      #   resp.jobs[0].counters.stopped #=> Integer
      #   resp.jobs[0].counters.skipped #=> Integer
      #   resp.jobs[0].message #=> String
      #   resp.jobs[0].device.arn #=> String
      #   resp.jobs[0].device.name #=> String
      #   resp.jobs[0].device.manufacturer #=> String
      #   resp.jobs[0].device.model #=> String
      #   resp.jobs[0].device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.jobs[0].device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.jobs[0].device.os #=> String
      #   resp.jobs[0].device.cpu.frequency #=> String
      #   resp.jobs[0].device.cpu.architecture #=> String
      #   resp.jobs[0].device.cpu.clock #=> Float
      #   resp.jobs[0].device.resolution.width #=> Integer
      #   resp.jobs[0].device.resolution.height #=> Integer
      #   resp.jobs[0].device.heap_size #=> Integer
      #   resp.jobs[0].device.memory #=> Integer
      #   resp.jobs[0].device.image #=> String
      #   resp.jobs[0].device.carrier #=> String
      #   resp.jobs[0].device.radio #=> String
      #   resp.jobs[0].device.remote_access_enabled #=> Boolean
      #   resp.jobs[0].device.fleet_type #=> String
      #   resp.jobs[0].device.fleet_name #=> String
      #   resp.jobs[0].device_minutes.total #=> Float
      #   resp.jobs[0].device_minutes.metered #=> Float
      #   resp.jobs[0].device_minutes.unmetered #=> Float
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_jobs(params = {}, options = {})
        req = build_request(:list_jobs, params)
        req.send_request(options)
      end

      # Returns a list of all historical purchases, renewals, and system
      # renewal transactions for an AWS account. The list is paginated and
      # ordered by a descending timestamp (most recent transactions are
      # first). The API returns a `NotEligible` error if the user is not
      # permitted to invoke the operation. Please contact
      # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
      # if you believe that you should be able to invoke this operation.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListOfferingTransactionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListOfferingTransactionsResult#offering_transactions #offeringTransactions} => Array&lt;Types::OfferingTransaction&gt;
      #   * {Types::ListOfferingTransactionsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_offering_transactions({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.offering_transactions #=> Array
      #   resp.offering_transactions[0].offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
      #   resp.offering_transactions[0].offering_status.offering.id #=> String
      #   resp.offering_transactions[0].offering_status.offering.description #=> String
      #   resp.offering_transactions[0].offering_status.offering.type #=> String, one of "RECURRING"
      #   resp.offering_transactions[0].offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
      #   resp.offering_transactions[0].offering_status.offering.recurring_charges #=> Array
      #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.amount #=> Float
      #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.offering_transactions[0].offering_status.quantity #=> Integer
      #   resp.offering_transactions[0].offering_status.effective_on #=> Time
      #   resp.offering_transactions[0].transaction_id #=> String
      #   resp.offering_transactions[0].created_on #=> Time
      #   resp.offering_transactions[0].cost.amount #=> Float
      #   resp.offering_transactions[0].cost.currency_code #=> String, one of "USD"
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_offering_transactions(params = {}, options = {})
        req = build_request(:list_offering_transactions, params)
        req.send_request(options)
      end

      # Returns a list of products or offerings that the user can manage
      # through the API. Each offering record indicates the recurring price
      # per unit and the frequency for that offering. The API returns a
      # `NotEligible` error if the user is not permitted to invoke the
      # operation. Please contact
      # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
      # if you believe that you should be able to invoke this operation.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListOfferingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListOfferingsResult#offerings #offerings} => Array&lt;Types::Offering&gt;
      #   * {Types::ListOfferingsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_offerings({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.offerings #=> Array
      #   resp.offerings[0].id #=> String
      #   resp.offerings[0].description #=> String
      #   resp.offerings[0].type #=> String, one of "RECURRING"
      #   resp.offerings[0].platform #=> String, one of "ANDROID", "IOS"
      #   resp.offerings[0].recurring_charges #=> Array
      #   resp.offerings[0].recurring_charges[0].cost.amount #=> Float
      #   resp.offerings[0].recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.offerings[0].recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_offerings(params = {}, options = {})
        req = build_request(:list_offerings, params)
        req.send_request(options)
      end

      # Gets information about projects.
      # @option params [String] :arn
      #   The projects\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListProjectsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListProjectsResult#projects #projects} => Array&lt;Types::Project&gt;
      #   * {Types::ListProjectsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_projects({
      #     arn: "AmazonResourceName",
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.projects #=> Array
      #   resp.projects[0].arn #=> String
      #   resp.projects[0].name #=> String
      #   resp.projects[0].created #=> Time
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_projects(params = {}, options = {})
        req = build_request(:list_projects, params)
        req.send_request(options)
      end

      # Returns a list of all currently running remote access sessions.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) of the remote access session about
      #   which you are requesting information.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListRemoteAccessSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRemoteAccessSessionsResult#remote_access_sessions #remoteAccessSessions} => Array&lt;Types::RemoteAccessSession&gt;
      #   * {Types::ListRemoteAccessSessionsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_remote_access_sessions({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.remote_access_sessions #=> Array
      #   resp.remote_access_sessions[0].arn #=> String
      #   resp.remote_access_sessions[0].name #=> String
      #   resp.remote_access_sessions[0].created #=> Time
      #   resp.remote_access_sessions[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.remote_access_sessions[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.remote_access_sessions[0].message #=> String
      #   resp.remote_access_sessions[0].started #=> Time
      #   resp.remote_access_sessions[0].stopped #=> Time
      #   resp.remote_access_sessions[0].device.arn #=> String
      #   resp.remote_access_sessions[0].device.name #=> String
      #   resp.remote_access_sessions[0].device.manufacturer #=> String
      #   resp.remote_access_sessions[0].device.model #=> String
      #   resp.remote_access_sessions[0].device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.remote_access_sessions[0].device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.remote_access_sessions[0].device.os #=> String
      #   resp.remote_access_sessions[0].device.cpu.frequency #=> String
      #   resp.remote_access_sessions[0].device.cpu.architecture #=> String
      #   resp.remote_access_sessions[0].device.cpu.clock #=> Float
      #   resp.remote_access_sessions[0].device.resolution.width #=> Integer
      #   resp.remote_access_sessions[0].device.resolution.height #=> Integer
      #   resp.remote_access_sessions[0].device.heap_size #=> Integer
      #   resp.remote_access_sessions[0].device.memory #=> Integer
      #   resp.remote_access_sessions[0].device.image #=> String
      #   resp.remote_access_sessions[0].device.carrier #=> String
      #   resp.remote_access_sessions[0].device.radio #=> String
      #   resp.remote_access_sessions[0].device.remote_access_enabled #=> Boolean
      #   resp.remote_access_sessions[0].device.fleet_type #=> String
      #   resp.remote_access_sessions[0].device.fleet_name #=> String
      #   resp.remote_access_sessions[0].billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.remote_access_sessions[0].device_minutes.total #=> Float
      #   resp.remote_access_sessions[0].device_minutes.metered #=> Float
      #   resp.remote_access_sessions[0].device_minutes.unmetered #=> Float
      #   resp.remote_access_sessions[0].endpoint #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_remote_access_sessions(params = {}, options = {})
        req = build_request(:list_remote_access_sessions, params)
        req.send_request(options)
      end

      # Gets information about runs.
      # @option params [required, String] :arn
      #   The runs\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListRunsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRunsResult#runs #runs} => Array&lt;Types::Run&gt;
      #   * {Types::ListRunsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_runs({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.runs #=> Array
      #   resp.runs[0].arn #=> String
      #   resp.runs[0].name #=> String
      #   resp.runs[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.runs[0].platform #=> String, one of "ANDROID", "IOS"
      #   resp.runs[0].created #=> Time
      #   resp.runs[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.runs[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.runs[0].started #=> Time
      #   resp.runs[0].stopped #=> Time
      #   resp.runs[0].counters.total #=> Integer
      #   resp.runs[0].counters.passed #=> Integer
      #   resp.runs[0].counters.failed #=> Integer
      #   resp.runs[0].counters.warned #=> Integer
      #   resp.runs[0].counters.errored #=> Integer
      #   resp.runs[0].counters.stopped #=> Integer
      #   resp.runs[0].counters.skipped #=> Integer
      #   resp.runs[0].message #=> String
      #   resp.runs[0].total_jobs #=> Integer
      #   resp.runs[0].completed_jobs #=> Integer
      #   resp.runs[0].billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.runs[0].device_minutes.total #=> Float
      #   resp.runs[0].device_minutes.metered #=> Float
      #   resp.runs[0].device_minutes.unmetered #=> Float
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_runs(params = {}, options = {})
        req = build_request(:list_runs, params)
        req.send_request(options)
      end

      # Gets information about samples.
      # @option params [required, String] :arn
      #   The samples\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListSamplesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListSamplesResult#samples #samples} => Array&lt;Types::Sample&gt;
      #   * {Types::ListSamplesResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_samples({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.samples #=> Array
      #   resp.samples[0].arn #=> String
      #   resp.samples[0].type #=> String, one of "CPU", "MEMORY", "THREADS", "RX_RATE", "TX_RATE", "RX", "TX", "NATIVE_FRAMES", "NATIVE_FPS", "NATIVE_MIN_DRAWTIME", "NATIVE_AVG_DRAWTIME", "NATIVE_MAX_DRAWTIME", "OPENGL_FRAMES", "OPENGL_FPS", "OPENGL_MIN_DRAWTIME", "OPENGL_AVG_DRAWTIME", "OPENGL_MAX_DRAWTIME"
      #   resp.samples[0].url #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_samples(params = {}, options = {})
        req = build_request(:list_samples, params)
        req.send_request(options)
      end

      # Gets information about suites.
      # @option params [required, String] :arn
      #   The suites\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListSuitesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListSuitesResult#suites #suites} => Array&lt;Types::Suite&gt;
      #   * {Types::ListSuitesResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_suites({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.suites #=> Array
      #   resp.suites[0].arn #=> String
      #   resp.suites[0].name #=> String
      #   resp.suites[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.suites[0].created #=> Time
      #   resp.suites[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.suites[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.suites[0].started #=> Time
      #   resp.suites[0].stopped #=> Time
      #   resp.suites[0].counters.total #=> Integer
      #   resp.suites[0].counters.passed #=> Integer
      #   resp.suites[0].counters.failed #=> Integer
      #   resp.suites[0].counters.warned #=> Integer
      #   resp.suites[0].counters.errored #=> Integer
      #   resp.suites[0].counters.stopped #=> Integer
      #   resp.suites[0].counters.skipped #=> Integer
      #   resp.suites[0].message #=> String
      #   resp.suites[0].device_minutes.total #=> Float
      #   resp.suites[0].device_minutes.metered #=> Float
      #   resp.suites[0].device_minutes.unmetered #=> Float
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_suites(params = {}, options = {})
        req = build_request(:list_suites, params)
        req.send_request(options)
      end

      # Gets information about tests.
      # @option params [required, String] :arn
      #   The tests\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListTestsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTestsResult#tests #tests} => Array&lt;Types::Test&gt;
      #   * {Types::ListTestsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tests({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.tests #=> Array
      #   resp.tests[0].arn #=> String
      #   resp.tests[0].name #=> String
      #   resp.tests[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.tests[0].created #=> Time
      #   resp.tests[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.tests[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.tests[0].started #=> Time
      #   resp.tests[0].stopped #=> Time
      #   resp.tests[0].counters.total #=> Integer
      #   resp.tests[0].counters.passed #=> Integer
      #   resp.tests[0].counters.failed #=> Integer
      #   resp.tests[0].counters.warned #=> Integer
      #   resp.tests[0].counters.errored #=> Integer
      #   resp.tests[0].counters.stopped #=> Integer
      #   resp.tests[0].counters.skipped #=> Integer
      #   resp.tests[0].message #=> String
      #   resp.tests[0].device_minutes.total #=> Float
      #   resp.tests[0].device_minutes.metered #=> Float
      #   resp.tests[0].device_minutes.unmetered #=> Float
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_tests(params = {}, options = {})
        req = build_request(:list_tests, params)
        req.send_request(options)
      end

      # Gets information about unique problems.
      # @option params [required, String] :arn
      #   The unique problems\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListUniqueProblemsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUniqueProblemsResult#unique_problems #uniqueProblems} => Hash&lt;String,Array&lt;Types::UniqueProblem&gt;&gt;
      #   * {Types::ListUniqueProblemsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_unique_problems({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.unique_problems #=> Hash
      #   resp.unique_problems["ExecutionResult"] #=> Array
      #   resp.unique_problems["ExecutionResult"][0].message #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems #=> Array
      #   resp.unique_problems["ExecutionResult"][0].problems[0].run.arn #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].run.name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].job.arn #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].job.name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].suite.arn #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].suite.name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].test.arn #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].test.name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.arn #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.manufacturer #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.model #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.os #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.frequency #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.architecture #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.clock #=> Float
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.resolution.width #=> Integer
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.resolution.height #=> Integer
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.heap_size #=> Integer
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.memory #=> Integer
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.image #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.carrier #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.radio #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.remote_access_enabled #=> Boolean
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.fleet_type #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].device.fleet_name #=> String
      #   resp.unique_problems["ExecutionResult"][0].problems[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.unique_problems["ExecutionResult"][0].problems[0].message #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_unique_problems(params = {}, options = {})
        req = build_request(:list_unique_problems, params)
        req.send_request(options)
      end

      # Gets information about uploads.
      # @option params [required, String] :arn
      #   The uploads\' ARNs.
      # @option params [String] :next_token
      #   An identifier that was returned from the previous call to this
      #   operation, which can be used to return the next set of items in the
      #   list.
      # @return [Types::ListUploadsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListUploadsResult#uploads #uploads} => Array&lt;Types::Upload&gt;
      #   * {Types::ListUploadsResult#next_token #nextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_uploads({
      #     arn: "AmazonResourceName", # required
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.uploads #=> Array
      #   resp.uploads[0].arn #=> String
      #   resp.uploads[0].name #=> String
      #   resp.uploads[0].created #=> Time
      #   resp.uploads[0].type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE"
      #   resp.uploads[0].status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
      #   resp.uploads[0].url #=> String
      #   resp.uploads[0].metadata #=> String
      #   resp.uploads[0].content_type #=> String
      #   resp.uploads[0].message #=> String
      #   resp.next_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_uploads(params = {}, options = {})
        req = build_request(:list_uploads, params)
        req.send_request(options)
      end

      # Immediately purchases offerings for an AWS account. Offerings renew
      # with the latest total purchased quantity for an offering, unless the
      # renewal was overridden. The API returns a `NotEligible` error if the
      # user is not permitted to invoke the operation. Please contact
      # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
      # if you believe that you should be able to invoke this operation.
      # @option params [String] :offering_id
      #   The ID of the offering.
      # @option params [Integer] :quantity
      #   The number of device slots you wish to purchase in an offering
      #   request.
      # @return [Types::PurchaseOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::PurchaseOfferingResult#offering_transaction #offeringTransaction} => Types::OfferingTransaction
      #
      # @example Request syntax with placeholder values
      #   resp = client.purchase_offering({
      #     offering_id: "OfferingIdentifier",
      #     quantity: 1,
      #   })
      #
      # @example Response structure
      #   resp.offering_transaction.offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
      #   resp.offering_transaction.offering_status.offering.id #=> String
      #   resp.offering_transaction.offering_status.offering.description #=> String
      #   resp.offering_transaction.offering_status.offering.type #=> String, one of "RECURRING"
      #   resp.offering_transaction.offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
      #   resp.offering_transaction.offering_status.offering.recurring_charges #=> Array
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.offering_transaction.offering_status.quantity #=> Integer
      #   resp.offering_transaction.offering_status.effective_on #=> Time
      #   resp.offering_transaction.transaction_id #=> String
      #   resp.offering_transaction.created_on #=> Time
      #   resp.offering_transaction.cost.amount #=> Float
      #   resp.offering_transaction.cost.currency_code #=> String, one of "USD"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def purchase_offering(params = {}, options = {})
        req = build_request(:purchase_offering, params)
        req.send_request(options)
      end

      # Explicitly sets the quantity of devices to renew for an offering,
      # starting from the `effectiveDate` of the next period. The API returns
      # a `NotEligible` error if the user is not permitted to invoke the
      # operation. Please contact
      # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
      # if you believe that you should be able to invoke this operation.
      # @option params [String] :offering_id
      #   The ID of a request to renew an offering.
      # @option params [Integer] :quantity
      #   The quantity requested in an offering renewal.
      # @return [Types::RenewOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RenewOfferingResult#offering_transaction #offeringTransaction} => Types::OfferingTransaction
      #
      # @example Request syntax with placeholder values
      #   resp = client.renew_offering({
      #     offering_id: "OfferingIdentifier",
      #     quantity: 1,
      #   })
      #
      # @example Response structure
      #   resp.offering_transaction.offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
      #   resp.offering_transaction.offering_status.offering.id #=> String
      #   resp.offering_transaction.offering_status.offering.description #=> String
      #   resp.offering_transaction.offering_status.offering.type #=> String, one of "RECURRING"
      #   resp.offering_transaction.offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
      #   resp.offering_transaction.offering_status.offering.recurring_charges #=> Array
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
      #   resp.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
      #   resp.offering_transaction.offering_status.quantity #=> Integer
      #   resp.offering_transaction.offering_status.effective_on #=> Time
      #   resp.offering_transaction.transaction_id #=> String
      #   resp.offering_transaction.created_on #=> Time
      #   resp.offering_transaction.cost.amount #=> Float
      #   resp.offering_transaction.cost.currency_code #=> String, one of "USD"
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def renew_offering(params = {}, options = {})
        req = build_request(:renew_offering, params)
        req.send_request(options)
      end

      # Schedules a run.
      # @option params [required, String] :project_arn
      #   The ARN of the project for the run to be scheduled.
      # @option params [String] :app_arn
      #   The ARN of the app to schedule a run.
      # @option params [required, String] :device_pool_arn
      #   The ARN of the device pool for the run to be scheduled.
      # @option params [String] :name
      #   The name for the run to be scheduled.
      # @option params [required, Types::ScheduleRunTest] :test
      #   Information about the test for the run to be scheduled.
      # @option params [Types::ScheduleRunConfiguration] :configuration
      #   Information about the settings for the run to be scheduled.
      # @return [Types::ScheduleRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ScheduleRunResult#run #run} => Types::Run
      #
      # @example Request syntax with placeholder values
      #   resp = client.schedule_run({
      #     project_arn: "AmazonResourceName", # required
      #     app_arn: "AmazonResourceName",
      #     device_pool_arn: "AmazonResourceName", # required
      #     name: "Name",
      #     test: { # required
      #       type: "BUILTIN_FUZZ", # required, accepts BUILTIN_FUZZ, BUILTIN_EXPLORER, APPIUM_JAVA_JUNIT, APPIUM_JAVA_TESTNG, APPIUM_PYTHON, APPIUM_WEB_JAVA_JUNIT, APPIUM_WEB_JAVA_TESTNG, APPIUM_WEB_PYTHON, CALABASH, INSTRUMENTATION, UIAUTOMATION, UIAUTOMATOR, XCTEST, XCTEST_UI
      #       test_package_arn: "AmazonResourceName",
      #       filter: "Filter",
      #       parameters: {
      #         "String" => "String",
      #       },
      #     },
      #     configuration: {
      #       extra_data_package_arn: "AmazonResourceName",
      #       network_profile_arn: "AmazonResourceName",
      #       locale: "String",
      #       location: {
      #         latitude: 1.0, # required
      #         longitude: 1.0, # required
      #       },
      #       radios: {
      #         wifi: false,
      #         bluetooth: false,
      #         nfc: false,
      #         gps: false,
      #       },
      #       auxiliary_apps: ["AmazonResourceName"],
      #       billing_method: "METERED", # accepts METERED, UNMETERED
      #     },
      #   })
      #
      # @example Response structure
      #   resp.run.arn #=> String
      #   resp.run.name #=> String
      #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.run.platform #=> String, one of "ANDROID", "IOS"
      #   resp.run.created #=> Time
      #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.run.started #=> Time
      #   resp.run.stopped #=> Time
      #   resp.run.counters.total #=> Integer
      #   resp.run.counters.passed #=> Integer
      #   resp.run.counters.failed #=> Integer
      #   resp.run.counters.warned #=> Integer
      #   resp.run.counters.errored #=> Integer
      #   resp.run.counters.stopped #=> Integer
      #   resp.run.counters.skipped #=> Integer
      #   resp.run.message #=> String
      #   resp.run.total_jobs #=> Integer
      #   resp.run.completed_jobs #=> Integer
      #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.run.device_minutes.total #=> Float
      #   resp.run.device_minutes.metered #=> Float
      #   resp.run.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def schedule_run(params = {}, options = {})
        req = build_request(:schedule_run, params)
        req.send_request(options)
      end

      # Ends a specified remote access session.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) of the remote access session you wish
      #   to stop.
      # @return [Types::StopRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopRemoteAccessSessionResult#remote_access_session #remoteAccessSession} => Types::RemoteAccessSession
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_remote_access_session({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.remote_access_session.arn #=> String
      #   resp.remote_access_session.name #=> String
      #   resp.remote_access_session.created #=> Time
      #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.remote_access_session.message #=> String
      #   resp.remote_access_session.started #=> Time
      #   resp.remote_access_session.stopped #=> Time
      #   resp.remote_access_session.device.arn #=> String
      #   resp.remote_access_session.device.name #=> String
      #   resp.remote_access_session.device.manufacturer #=> String
      #   resp.remote_access_session.device.model #=> String
      #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
      #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
      #   resp.remote_access_session.device.os #=> String
      #   resp.remote_access_session.device.cpu.frequency #=> String
      #   resp.remote_access_session.device.cpu.architecture #=> String
      #   resp.remote_access_session.device.cpu.clock #=> Float
      #   resp.remote_access_session.device.resolution.width #=> Integer
      #   resp.remote_access_session.device.resolution.height #=> Integer
      #   resp.remote_access_session.device.heap_size #=> Integer
      #   resp.remote_access_session.device.memory #=> Integer
      #   resp.remote_access_session.device.image #=> String
      #   resp.remote_access_session.device.carrier #=> String
      #   resp.remote_access_session.device.radio #=> String
      #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
      #   resp.remote_access_session.device.fleet_type #=> String
      #   resp.remote_access_session.device.fleet_name #=> String
      #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.remote_access_session.device_minutes.total #=> Float
      #   resp.remote_access_session.device_minutes.metered #=> Float
      #   resp.remote_access_session.device_minutes.unmetered #=> Float
      #   resp.remote_access_session.endpoint #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_remote_access_session(params = {}, options = {})
        req = build_request(:stop_remote_access_session, params)
        req.send_request(options)
      end

      # Initiates a stop request for the current test run. AWS Device Farm
      # will immediately stop the run on devices where tests have not started
      # executing, and you will not be billed for these devices. On devices
      # where tests have started executing, Setup Suite and Teardown Suite
      # tests will run to completion before stopping execution on those
      # devices. You will be billed for Setup, Teardown, and any tests that
      # were in progress or already completed.
      # @option params [required, String] :arn
      #   Represents the Amazon Resource Name (ARN) of the Device Farm run you
      #   wish to stop.
      # @return [Types::StopRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::StopRunResult#run #run} => Types::Run
      #
      # @example Request syntax with placeholder values
      #   resp = client.stop_run({
      #     arn: "AmazonResourceName", # required
      #   })
      #
      # @example Response structure
      #   resp.run.arn #=> String
      #   resp.run.name #=> String
      #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI"
      #   resp.run.platform #=> String, one of "ANDROID", "IOS"
      #   resp.run.created #=> Time
      #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
      #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
      #   resp.run.started #=> Time
      #   resp.run.stopped #=> Time
      #   resp.run.counters.total #=> Integer
      #   resp.run.counters.passed #=> Integer
      #   resp.run.counters.failed #=> Integer
      #   resp.run.counters.warned #=> Integer
      #   resp.run.counters.errored #=> Integer
      #   resp.run.counters.stopped #=> Integer
      #   resp.run.counters.skipped #=> Integer
      #   resp.run.message #=> String
      #   resp.run.total_jobs #=> Integer
      #   resp.run.completed_jobs #=> Integer
      #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
      #   resp.run.device_minutes.total #=> Float
      #   resp.run.device_minutes.metered #=> Float
      #   resp.run.device_minutes.unmetered #=> Float
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def stop_run(params = {}, options = {})
        req = build_request(:stop_run, params)
        req.send_request(options)
      end

      # Modifies the name, description, and rules in a device pool given the
      # attributes and the pool ARN. Rule updates are all-or-nothing, meaning
      # they can only be updated as a whole (or not at all).
      # @option params [required, String] :arn
      #   The Amazon Resourc Name (ARN) of the Device Farm device pool you wish
      #   to update.
      # @option params [String] :name
      #   A string representing the name of the device pool you wish to update.
      # @option params [String] :description
      #   A description of the device pool you wish to update.
      # @option params [Array<Types::Rule>] :rules
      #   Represents the rules you wish to modify for the device pool. Updating
      #   rules is optional; however, if you choose to update rules for your
      #   request, the update will replace the existing rules.
      # @return [Types::UpdateDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateDevicePoolResult#device_pool #devicePool} => Types::DevicePool
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_device_pool({
      #     arn: "AmazonResourceName", # required
      #     name: "Name",
      #     description: "Message",
      #     rules: [
      #       {
      #         attribute: "ARN", # accepts ARN, PLATFORM, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED
      #         operator: "EQUALS", # accepts EQUALS, LESS_THAN, GREATER_THAN, IN, NOT_IN
      #         value: "String",
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.device_pool.arn #=> String
      #   resp.device_pool.name #=> String
      #   resp.device_pool.description #=> String
      #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
      #   resp.device_pool.rules #=> Array
      #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED"
      #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "GREATER_THAN", "IN", "NOT_IN"
      #   resp.device_pool.rules[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_device_pool(params = {}, options = {})
        req = build_request(:update_device_pool, params)
        req.send_request(options)
      end

      # Modifies the specified project name, given the project ARN and a new
      # name.
      # @option params [required, String] :arn
      #   The Amazon Resource Name (ARN) of the project whose name you wish to
      #   update.
      # @option params [String] :name
      #   A string representing the new name of the project that you are
      #   updating.
      # @return [Types::UpdateProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateProjectResult#project #project} => Types::Project
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_project({
      #     arn: "AmazonResourceName", # required
      #     name: "Name",
      #   })
      #
      # @example Response structure
      #   resp.project.arn #=> String
      #   resp.project.name #=> String
      #   resp.project.created #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_project(params = {}, options = {})
        req = build_request(:update_project, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
