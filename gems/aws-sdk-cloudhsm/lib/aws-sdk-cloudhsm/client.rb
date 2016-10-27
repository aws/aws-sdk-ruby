# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cloudhsm

module Aws
  module CloudHSM
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :cloudhsm

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
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Adds or overwrites one or more tags for the specified AWS CloudHSM
      # resource.
      #
      # Each tag consists of a key and a value. Tag keys must be unique to
      # each resource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.
      # @option params [required, Array<Types::Tag>] :tag_list
      #   One or more tags.
      # @return [Types::AddTagsToResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddTagsToResourceResponse#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_tags_to_resource({
      #     resource_arn: "String", # required
      #     tag_list: [ # required
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       },
      #     ],
      #   })
      #
      # @example Response structure
      #   resp.status #=> String
      # @overload add_tags_to_resource(params = {})
      # @param [Hash] params ({})
      def add_tags_to_resource(params = {}, options = {})
        req = build_request(:add_tags_to_resource, params)
        req.send_request(options)
      end

      # Creates a high-availability partition group. A high-availability
      # partition group is a group of partitions that spans multiple physical
      # HSMs.
      # @option params [required, String] :label
      #   The label of the new high-availability partition group.
      # @return [Types::CreateHapgResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateHapgResponse#hapg_arn #HapgArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_hapg({
      #     label: "Label", # required
      #   })
      #
      # @example Response structure
      #   resp.hapg_arn #=> String
      # @overload create_hapg(params = {})
      # @param [Hash] params ({})
      def create_hapg(params = {}, options = {})
        req = build_request(:create_hapg, params)
        req.send_request(options)
      end

      # Creates an uninitialized HSM instance.
      #
      # There is an upfront fee charged for each HSM instance that you create
      # with the CreateHsm operation. If you accidentally provision an HSM and
      # want to request a refund, delete the instance using the DeleteHsm
      # operation, go to the [AWS Support Center][1], create a new case, and
      # select **Account and Billing Support**.
      #
      # It can take up to 20 minutes to create and provision an HSM. You can
      # monitor the status of the HSM with the DescribeHsm operation. The HSM
      # is ready to be initialized when the status changes to `RUNNING`.
      #
      #
      #
      # [1]: https://console.aws.amazon.com/support/home#/
      # @option params [required, String] :subnet_id
      #   The identifier of the subnet in your VPC in which to place the HSM.
      # @option params [required, String] :ssh_key
      #   The SSH public key to install on the HSM.
      # @option params [String] :eni_ip
      #   The IP address to assign to the HSM's ENI.
      #
      #   If an IP address is not specified, an IP address will be randomly
      #   chosen from the CIDR range of the subnet.
      # @option params [required, String] :iam_role_arn
      #   The ARN of an IAM role to enable the AWS CloudHSM service to allocate
      #   an ENI on your behalf.
      # @option params [String] :external_id
      #   The external ID from **IamRoleArn**, if present.
      # @option params [required, String] :subscription_type
      #   Specifies the type of subscription for the HSM.
      #
      #   * **PRODUCTION** - The HSM is being used in a production environment.
      #   * **TRIAL** - The HSM is being used in a product trial.
      # @option params [String] :client_token
      #   A user-defined token to ensure idempotence. Subsequent calls to this
      #   operation with the same token will be ignored.
      # @option params [String] :syslog_ip
      #   The IP address for the syslog monitoring server. The AWS CloudHSM
      #   service only supports one syslog monitoring server.
      # @return [Types::CreateHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateHsmResponse#hsm_arn #HsmArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_hsm({
      #     subnet_id: "SubnetId", # required
      #     ssh_key: "SshKey", # required
      #     eni_ip: "IpAddress",
      #     iam_role_arn: "IamRoleArn", # required
      #     external_id: "ExternalId",
      #     subscription_type: "PRODUCTION", # required, accepts PRODUCTION
      #     client_token: "ClientToken",
      #     syslog_ip: "IpAddress",
      #   })
      #
      # @example Response structure
      #   resp.hsm_arn #=> String
      # @overload create_hsm(params = {})
      # @param [Hash] params ({})
      def create_hsm(params = {}, options = {})
        req = build_request(:create_hsm, params)
        req.send_request(options)
      end

      # Creates an HSM client.
      # @option params [String] :label
      #   The label for the client.
      # @option params [required, String] :certificate
      #   The contents of a Base64-Encoded X.509 v3 certificate to be installed
      #   on the HSMs used by this client.
      # @return [Types::CreateLunaClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateLunaClientResponse#client_arn #ClientArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_luna_client({
      #     label: "ClientLabel",
      #     certificate: "Certificate", # required
      #   })
      #
      # @example Response structure
      #   resp.client_arn #=> String
      # @overload create_luna_client(params = {})
      # @param [Hash] params ({})
      def create_luna_client(params = {}, options = {})
        req = build_request(:create_luna_client, params)
        req.send_request(options)
      end

      # Deletes a high-availability partition group.
      # @option params [required, String] :hapg_arn
      #   The ARN of the high-availability partition group to delete.
      # @return [Types::DeleteHapgResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteHapgResponse#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_hapg({
      #     hapg_arn: "HapgArn", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String
      # @overload delete_hapg(params = {})
      # @param [Hash] params ({})
      def delete_hapg(params = {}, options = {})
        req = build_request(:delete_hapg, params)
        req.send_request(options)
      end

      # Deletes an HSM. After completion, this operation cannot be undone and
      # your key material cannot be recovered.
      # @option params [required, String] :hsm_arn
      #   The ARN of the HSM to delete.
      # @return [Types::DeleteHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteHsmResponse#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_hsm({
      #     hsm_arn: "HsmArn", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String
      # @overload delete_hsm(params = {})
      # @param [Hash] params ({})
      def delete_hsm(params = {}, options = {})
        req = build_request(:delete_hsm, params)
        req.send_request(options)
      end

      # Deletes a client.
      # @option params [required, String] :client_arn
      #   The ARN of the client to delete.
      # @return [Types::DeleteLunaClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteLunaClientResponse#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_luna_client({
      #     client_arn: "ClientArn", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String
      # @overload delete_luna_client(params = {})
      # @param [Hash] params ({})
      def delete_luna_client(params = {}, options = {})
        req = build_request(:delete_luna_client, params)
        req.send_request(options)
      end

      # Retrieves information about a high-availability partition group.
      # @option params [required, String] :hapg_arn
      #   The ARN of the high-availability partition group to describe.
      # @return [Types::DescribeHapgResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeHapgResponse#hapg_arn #HapgArn} => String
      #   * {Types::DescribeHapgResponse#hapg_serial #HapgSerial} => String
      #   * {Types::DescribeHapgResponse#hsms_last_action_failed #HsmsLastActionFailed} => Array&lt;String&gt;
      #   * {Types::DescribeHapgResponse#hsms_pending_deletion #HsmsPendingDeletion} => Array&lt;String&gt;
      #   * {Types::DescribeHapgResponse#hsms_pending_registration #HsmsPendingRegistration} => Array&lt;String&gt;
      #   * {Types::DescribeHapgResponse#label #Label} => String
      #   * {Types::DescribeHapgResponse#last_modified_timestamp #LastModifiedTimestamp} => String
      #   * {Types::DescribeHapgResponse#partition_serial_list #PartitionSerialList} => Array&lt;String&gt;
      #   * {Types::DescribeHapgResponse#state #State} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_hapg({
      #     hapg_arn: "HapgArn", # required
      #   })
      #
      # @example Response structure
      #   resp.hapg_arn #=> String
      #   resp.hapg_serial #=> String
      #   resp.hsms_last_action_failed #=> Array
      #   resp.hsms_last_action_failed[0] #=> String
      #   resp.hsms_pending_deletion #=> Array
      #   resp.hsms_pending_deletion[0] #=> String
      #   resp.hsms_pending_registration #=> Array
      #   resp.hsms_pending_registration[0] #=> String
      #   resp.label #=> String
      #   resp.last_modified_timestamp #=> String
      #   resp.partition_serial_list #=> Array
      #   resp.partition_serial_list[0] #=> String
      #   resp.state #=> String, one of "READY", "UPDATING", "DEGRADED"
      # @overload describe_hapg(params = {})
      # @param [Hash] params ({})
      def describe_hapg(params = {}, options = {})
        req = build_request(:describe_hapg, params)
        req.send_request(options)
      end

      # Retrieves information about an HSM. You can identify the HSM by its
      # ARN or its serial number.
      # @option params [String] :hsm_arn
      #   The ARN of the HSM. Either the *HsmArn* or the *SerialNumber*
      #   parameter must be specified.
      # @option params [String] :hsm_serial_number
      #   The serial number of the HSM. Either the *HsmArn* or the
      #   *HsmSerialNumber* parameter must be specified.
      # @return [Types::DescribeHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeHsmResponse#hsm_arn #HsmArn} => String
      #   * {Types::DescribeHsmResponse#status #Status} => String
      #   * {Types::DescribeHsmResponse#status_details #StatusDetails} => String
      #   * {Types::DescribeHsmResponse#availability_zone #AvailabilityZone} => String
      #   * {Types::DescribeHsmResponse#eni_id #EniId} => String
      #   * {Types::DescribeHsmResponse#eni_ip #EniIp} => String
      #   * {Types::DescribeHsmResponse#subscription_type #SubscriptionType} => String
      #   * {Types::DescribeHsmResponse#subscription_start_date #SubscriptionStartDate} => String
      #   * {Types::DescribeHsmResponse#subscription_end_date #SubscriptionEndDate} => String
      #   * {Types::DescribeHsmResponse#vpc_id #VpcId} => String
      #   * {Types::DescribeHsmResponse#subnet_id #SubnetId} => String
      #   * {Types::DescribeHsmResponse#iam_role_arn #IamRoleArn} => String
      #   * {Types::DescribeHsmResponse#serial_number #SerialNumber} => String
      #   * {Types::DescribeHsmResponse#vendor_name #VendorName} => String
      #   * {Types::DescribeHsmResponse#hsm_type #HsmType} => String
      #   * {Types::DescribeHsmResponse#software_version #SoftwareVersion} => String
      #   * {Types::DescribeHsmResponse#ssh_public_key #SshPublicKey} => String
      #   * {Types::DescribeHsmResponse#ssh_key_last_updated #SshKeyLastUpdated} => String
      #   * {Types::DescribeHsmResponse#server_cert_uri #ServerCertUri} => String
      #   * {Types::DescribeHsmResponse#server_cert_last_updated #ServerCertLastUpdated} => String
      #   * {Types::DescribeHsmResponse#partitions #Partitions} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_hsm({
      #     hsm_arn: "HsmArn",
      #     hsm_serial_number: "HsmSerialNumber",
      #   })
      #
      # @example Response structure
      #   resp.hsm_arn #=> String
      #   resp.status #=> String, one of "PENDING", "RUNNING", "UPDATING", "SUSPENDED", "TERMINATING", "TERMINATED", "DEGRADED"
      #   resp.status_details #=> String
      #   resp.availability_zone #=> String
      #   resp.eni_id #=> String
      #   resp.eni_ip #=> String
      #   resp.subscription_type #=> String, one of "PRODUCTION"
      #   resp.subscription_start_date #=> String
      #   resp.subscription_end_date #=> String
      #   resp.vpc_id #=> String
      #   resp.subnet_id #=> String
      #   resp.iam_role_arn #=> String
      #   resp.serial_number #=> String
      #   resp.vendor_name #=> String
      #   resp.hsm_type #=> String
      #   resp.software_version #=> String
      #   resp.ssh_public_key #=> String
      #   resp.ssh_key_last_updated #=> String
      #   resp.server_cert_uri #=> String
      #   resp.server_cert_last_updated #=> String
      #   resp.partitions #=> Array
      #   resp.partitions[0] #=> String
      # @overload describe_hsm(params = {})
      # @param [Hash] params ({})
      def describe_hsm(params = {}, options = {})
        req = build_request(:describe_hsm, params)
        req.send_request(options)
      end

      # Retrieves information about an HSM client.
      # @option params [String] :client_arn
      #   The ARN of the client.
      # @option params [String] :certificate_fingerprint
      #   The certificate fingerprint.
      # @return [Types::DescribeLunaClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeLunaClientResponse#client_arn #ClientArn} => String
      #   * {Types::DescribeLunaClientResponse#certificate #Certificate} => String
      #   * {Types::DescribeLunaClientResponse#certificate_fingerprint #CertificateFingerprint} => String
      #   * {Types::DescribeLunaClientResponse#last_modified_timestamp #LastModifiedTimestamp} => String
      #   * {Types::DescribeLunaClientResponse#label #Label} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_luna_client({
      #     client_arn: "ClientArn",
      #     certificate_fingerprint: "CertificateFingerprint",
      #   })
      #
      # @example Response structure
      #   resp.client_arn #=> String
      #   resp.certificate #=> String
      #   resp.certificate_fingerprint #=> String
      #   resp.last_modified_timestamp #=> String
      #   resp.label #=> String
      # @overload describe_luna_client(params = {})
      # @param [Hash] params ({})
      def describe_luna_client(params = {}, options = {})
        req = build_request(:describe_luna_client, params)
        req.send_request(options)
      end

      # Gets the configuration files necessary to connect to all high
      # availability partition groups the client is associated with.
      # @option params [required, String] :client_arn
      #   The ARN of the client.
      # @option params [required, String] :client_version
      #   The client version.
      # @option params [required, Array<String>] :hapg_list
      #   A list of ARNs that identify the high-availability partition groups
      #   that are associated with the client.
      # @return [Types::GetConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetConfigResponse#config_type #ConfigType} => String
      #   * {Types::GetConfigResponse#config_file #ConfigFile} => String
      #   * {Types::GetConfigResponse#config_cred #ConfigCred} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_config({
      #     client_arn: "ClientArn", # required
      #     client_version: "5.1", # required, accepts 5.1, 5.3
      #     hapg_list: ["HapgArn"], # required
      #   })
      #
      # @example Response structure
      #   resp.config_type #=> String
      #   resp.config_file #=> String
      #   resp.config_cred #=> String
      # @overload get_config(params = {})
      # @param [Hash] params ({})
      def get_config(params = {}, options = {})
        req = build_request(:get_config, params)
        req.send_request(options)
      end

      # Lists the Availability Zones that have available AWS CloudHSM
      # capacity.
      # @return [Types::ListAvailableZonesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAvailableZonesResponse#az_list #AZList} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_available_zones()
      #
      # @example Response structure
      #   resp.az_list #=> Array
      #   resp.az_list[0] #=> String
      # @overload list_available_zones(params = {})
      # @param [Hash] params ({})
      def list_available_zones(params = {}, options = {})
        req = build_request(:list_available_zones, params)
        req.send_request(options)
      end

      # Lists the high-availability partition groups for the account.
      #
      # This operation supports pagination with the use of the *NextToken*
      # member. If more results are available, the *NextToken* member of the
      # response contains a token that you pass in the next call to ListHapgs
      # to retrieve the next set of items.
      # @option params [String] :next_token
      #   The *NextToken* value from a previous call to ListHapgs. Pass null if
      #   this is the first call.
      # @return [Types::ListHapgsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListHapgsResponse#hapg_list #HapgList} => Array&lt;String&gt;
      #   * {Types::ListHapgsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_hapgs({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.hapg_list #=> Array
      #   resp.hapg_list[0] #=> String
      #   resp.next_token #=> String
      # @overload list_hapgs(params = {})
      # @param [Hash] params ({})
      def list_hapgs(params = {}, options = {})
        req = build_request(:list_hapgs, params)
        req.send_request(options)
      end

      # Retrieves the identifiers of all of the HSMs provisioned for the
      # current customer.
      #
      # This operation supports pagination with the use of the *NextToken*
      # member. If more results are available, the *NextToken* member of the
      # response contains a token that you pass in the next call to ListHsms
      # to retrieve the next set of items.
      # @option params [String] :next_token
      #   The *NextToken* value from a previous call to ListHsms. Pass null if
      #   this is the first call.
      # @return [Types::ListHsmsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListHsmsResponse#hsm_list #HsmList} => Array&lt;String&gt;
      #   * {Types::ListHsmsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_hsms({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.hsm_list #=> Array
      #   resp.hsm_list[0] #=> String
      #   resp.next_token #=> String
      # @overload list_hsms(params = {})
      # @param [Hash] params ({})
      def list_hsms(params = {}, options = {})
        req = build_request(:list_hsms, params)
        req.send_request(options)
      end

      # Lists all of the clients.
      #
      # This operation supports pagination with the use of the *NextToken*
      # member. If more results are available, the *NextToken* member of the
      # response contains a token that you pass in the next call to
      # ListLunaClients to retrieve the next set of items.
      # @option params [String] :next_token
      #   The *NextToken* value from a previous call to ListLunaClients. Pass
      #   null if this is the first call.
      # @return [Types::ListLunaClientsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListLunaClientsResponse#client_list #ClientList} => Array&lt;String&gt;
      #   * {Types::ListLunaClientsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_luna_clients({
      #     next_token: "PaginationToken",
      #   })
      #
      # @example Response structure
      #   resp.client_list #=> Array
      #   resp.client_list[0] #=> String
      #   resp.next_token #=> String
      # @overload list_luna_clients(params = {})
      # @param [Hash] params ({})
      def list_luna_clients(params = {}, options = {})
        req = build_request(:list_luna_clients, params)
        req.send_request(options)
      end

      # Returns a list of all tags for the specified AWS CloudHSM resource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
      # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListTagsForResourceResponse#tag_list #TagList} => Array&lt;Types::Tag&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_tags_for_resource({
      #     resource_arn: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.tag_list #=> Array
      #   resp.tag_list[0].key #=> String
      #   resp.tag_list[0].value #=> String
      # @overload list_tags_for_resource(params = {})
      # @param [Hash] params ({})
      def list_tags_for_resource(params = {}, options = {})
        req = build_request(:list_tags_for_resource, params)
        req.send_request(options)
      end

      # Modifies an existing high-availability partition group.
      # @option params [required, String] :hapg_arn
      #   The ARN of the high-availability partition group to modify.
      # @option params [String] :label
      #   The new label for the high-availability partition group.
      # @option params [Array<String>] :partition_serial_list
      #   The list of partition serial numbers to make members of the
      #   high-availability partition group.
      # @return [Types::ModifyHapgResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyHapgResponse#hapg_arn #HapgArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_hapg({
      #     hapg_arn: "HapgArn", # required
      #     label: "Label",
      #     partition_serial_list: ["PartitionSerial"],
      #   })
      #
      # @example Response structure
      #   resp.hapg_arn #=> String
      # @overload modify_hapg(params = {})
      # @param [Hash] params ({})
      def modify_hapg(params = {}, options = {})
        req = build_request(:modify_hapg, params)
        req.send_request(options)
      end

      # Modifies an HSM.
      #
      # This operation can result in the HSM being offline for up to 15
      # minutes while the AWS CloudHSM service is reconfigured. If you are
      # modifying a production HSM, you should ensure that your AWS CloudHSM
      # service is configured for high availability, and consider executing
      # this operation during a maintenance window.
      # @option params [required, String] :hsm_arn
      #   The ARN of the HSM to modify.
      # @option params [String] :subnet_id
      #   The new identifier of the subnet that the HSM is in. The new subnet
      #   must be in the same Availability Zone as the current subnet.
      # @option params [String] :eni_ip
      #   The new IP address for the elastic network interface (ENI) attached to
      #   the HSM.
      #
      #   If the HSM is moved to a different subnet, and an IP address is not
      #   specified, an IP address will be randomly chosen from the CIDR range
      #   of the new subnet.
      # @option params [String] :iam_role_arn
      #   The new IAM role ARN.
      # @option params [String] :external_id
      #   The new external ID.
      # @option params [String] :syslog_ip
      #   The new IP address for the syslog monitoring server. The AWS CloudHSM
      #   service only supports one syslog monitoring server.
      # @return [Types::ModifyHsmResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyHsmResponse#hsm_arn #HsmArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_hsm({
      #     hsm_arn: "HsmArn", # required
      #     subnet_id: "SubnetId",
      #     eni_ip: "IpAddress",
      #     iam_role_arn: "IamRoleArn",
      #     external_id: "ExternalId",
      #     syslog_ip: "IpAddress",
      #   })
      #
      # @example Response structure
      #   resp.hsm_arn #=> String
      # @overload modify_hsm(params = {})
      # @param [Hash] params ({})
      def modify_hsm(params = {}, options = {})
        req = build_request(:modify_hsm, params)
        req.send_request(options)
      end

      # Modifies the certificate used by the client.
      #
      # This action can potentially start a workflow to install the new
      # certificate on the client's HSMs.
      # @option params [required, String] :client_arn
      #   The ARN of the client.
      # @option params [required, String] :certificate
      #   The new certificate for the client.
      # @return [Types::ModifyLunaClientResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ModifyLunaClientResponse#client_arn #ClientArn} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.modify_luna_client({
      #     client_arn: "ClientArn", # required
      #     certificate: "Certificate", # required
      #   })
      #
      # @example Response structure
      #   resp.client_arn #=> String
      # @overload modify_luna_client(params = {})
      # @param [Hash] params ({})
      def modify_luna_client(params = {}, options = {})
        req = build_request(:modify_luna_client, params)
        req.send_request(options)
      end

      # Removes one or more tags from the specified AWS CloudHSM resource.
      #
      # To remove a tag, specify only the tag key to remove (not the value).
      # To overwrite the value for an existing tag, use AddTagsToResource.
      # @option params [required, String] :resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
      # @option params [required, Array<String>] :tag_key_list
      #   The tag key or keys to remove.
      #
      #   Specify only the tag key to remove (not the value). To overwrite the
      #   value for an existing tag, use AddTagsToResource.
      # @return [Types::RemoveTagsFromResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::RemoveTagsFromResourceResponse#status #Status} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_tags_from_resource({
      #     resource_arn: "String", # required
      #     tag_key_list: ["TagKey"], # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> String
      # @overload remove_tags_from_resource(params = {})
      # @param [Hash] params ({})
      def remove_tags_from_resource(params = {}, options = {})
        req = build_request(:remove_tags_from_resource, params)
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
