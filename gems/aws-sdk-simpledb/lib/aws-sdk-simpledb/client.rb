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
require 'aws-sdk-core/plugins/signature_v2.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:simpledb)

module Aws::SimpleDB
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :simpledb

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
    add_plugin(Aws::Plugins::SignatureV2)
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Performs multiple DeleteAttributes operations in a single call, which
    # reduces round trips and latencies. This enables Amazon SimpleDB to
    # optimize requests, which generally yields better throughput.
    #
    # The following limitations are enforced for this operation: * 1 MB
    # request size
    # * 25 item limit per BatchDeleteAttributes operation
    #
    # @option params [required, String] :domain_name
    #   The name of the domain in which the attributes are being deleted.
    #
    # @option params [required, Array<Types::DeletableItem>] :items
    #   A list of items on which to perform the operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_attributes({
    #     domain_name: "String", # required
    #     items: [ # required
    #       {
    #         name: "String", # required
    #         attributes: [
    #           {
    #             name: "String", # required
    #             alternate_name_encoding: "String",
    #             value: "String", # required
    #             alternate_value_encoding: "String",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @overload batch_delete_attributes(params = {})
    # @param [Hash] params ({})
    def batch_delete_attributes(params = {}, options = {})
      req = build_request(:batch_delete_attributes, params)
      req.send_request(options)
    end

    # The `BatchPutAttributes` operation creates or replaces attributes
    # within one or more items. By using this operation, the client can
    # perform multiple PutAttribute operation with a single call. This helps
    # yield savings in round trips and latencies, enabling Amazon SimpleDB
    # to optimize requests and generally produce better throughput.
    #
    # The client may specify the item name with the `Item.X.ItemName`
    # parameter. The client may specify new attributes using a combination
    # of the `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value`
    # parameters. The client may specify the first attribute for the first
    # item using the parameters `Item.0.Attribute.0.Name` and
    # `Item.0.Attribute.0.Value`, and for the second attribute for the first
    # item by the parameters `Item.0.Attribute.1.Name` and
    # `Item.0.Attribute.1.Value`, and so on.
    #
    # Attributes are uniquely identified within an item by their name/value
    # combination. For example, a single item can have the attributes `\{
    # "first_name", "first_value" \}` and `\{ "first_name", "second_value"
    # \}`. However, it cannot have two attribute instances where both the
    # `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` are the same.
    #
    # Optionally, the requester can supply the `Replace` parameter for each
    # individual value. Setting this value to `true` will cause the new
    # attribute values to replace the existing attribute values. For
    # example, if an item `I` has the attributes `\{ 'a', '1' \}, \{ 'b',
    # '2'\}` and `\{ 'b', '3' \}` and the requester does a
    # BatchPutAttributes of `\{'I', 'b', '4' \}` with the Replace parameter
    # set to true, the final attributes of the item will be `\{ 'a', '1' \}`
    # and `\{ 'b', '4' \}`, replacing the previous values of the 'b'
    # attribute with the new value.
    #
    # This operation is vulnerable to exceeding the maximum URL size when
    # making a REST request using the HTTP GET method. This operation does
    # not support conditions using `Expected.X.Name`, `Expected.X.Value`, or
    # `Expected.X.Exists`.
    #
    # You can execute multiple `BatchPutAttributes` operations and other
    # operations in parallel. However, large numbers of concurrent
    # `BatchPutAttributes` calls can result in Service Unavailable (503)
    # responses.
    #
    # The following limitations are enforced for this operation: * 256
    # attribute name-value pairs per item
    # * 1 MB request size
    # * 1 billion attributes per domain
    # * 10 GB of total user data storage per domain
    # * 25 item limit per `BatchPutAttributes` operation
    #
    # @option params [required, String] :domain_name
    #   The name of the domain in which the attributes are being stored.
    #
    # @option params [required, Array<Types::ReplaceableItem>] :items
    #   A list of items on which to perform the operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_attributes({
    #     domain_name: "String", # required
    #     items: [ # required
    #       {
    #         name: "String", # required
    #         attributes: [ # required
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #             replace: false,
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @overload batch_put_attributes(params = {})
    # @param [Hash] params ({})
    def batch_put_attributes(params = {}, options = {})
      req = build_request(:batch_put_attributes, params)
      req.send_request(options)
    end

    # The `CreateDomain` operation creates a new domain. The domain name
    # should be unique among the domains associated with the Access Key ID
    # provided in the request. The `CreateDomain` operation may take 10 or
    # more seconds to complete.
    #
    # The client can create up to 100 domains per account.
    #
    # If the client requires additional domains, go to [
    # http://aws.amazon.com/contact-us/simpledb-limit-request/][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/simpledb-limit-request/
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to create. The name can range between 3 and 255
    #   characters and can contain the following characters: a-z, A-Z, 0-9,
    #   '\_', '-', and '.'.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "String", # required
    #   })
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Deletes one or more attributes associated with an item. If all
    # attributes of the item are deleted, the item is deleted.
    #
    # `DeleteAttributes` is an idempotent operation; running it multiple
    # times on the same item or attribute does not result in an error
    # response.
    #
    # Because Amazon SimpleDB makes multiple copies of item data and uses an
    # eventual consistency update model, performing a GetAttributes or
    # Select operation (read) immediately after a `DeleteAttributes` or
    # PutAttributes operation (write) might not return updated item data.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain in which to perform the operation.
    #
    # @option params [required, String] :item_name
    #   The name of the item. Similar to rows on a spreadsheet, items
    #   represent individual objects that contain one or more value-attribute
    #   pairs.
    #
    # @option params [Array<Types::Attribute>] :attributes
    #   A list of Attributes. Similar to columns on a spreadsheet, attributes
    #   represent categories of data that can be assigned to items.
    #
    # @option params [Types::UpdateCondition] :expected
    #   The update condition which, if specified, determines whether the
    #   specified attributes will be deleted or not. The update condition must
    #   be satisfied in order for this request to be processed and the
    #   attributes to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attributes({
    #     domain_name: "String", # required
    #     item_name: "String", # required
    #     attributes: [
    #       {
    #         name: "String", # required
    #         alternate_name_encoding: "String",
    #         value: "String", # required
    #         alternate_value_encoding: "String",
    #       },
    #     ],
    #     expected: {
    #       name: "String",
    #       value: "String",
    #       exists: false,
    #     },
    #   })
    #
    # @overload delete_attributes(params = {})
    # @param [Hash] params ({})
    def delete_attributes(params = {}, options = {})
      req = build_request(:delete_attributes, params)
      req.send_request(options)
    end

    # The `DeleteDomain` operation deletes a domain. Any items (and their
    # attributes) in the domain are deleted as well. The `DeleteDomain`
    # operation might take 10 or more seconds to complete.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "String", # required
    #   })
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Returns information about the domain, including when the domain was
    # created, the number of items and attributes in the domain, and the
    # size of the attribute names and values.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain for which to display the metadata of.
    #
    # @return [Types::DomainMetadataResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DomainMetadataResult#item_count #item_count} => Integer
    #   * {Types::DomainMetadataResult#item_names_size_bytes #item_names_size_bytes} => Integer
    #   * {Types::DomainMetadataResult#attribute_name_count #attribute_name_count} => Integer
    #   * {Types::DomainMetadataResult#attribute_names_size_bytes #attribute_names_size_bytes} => Integer
    #   * {Types::DomainMetadataResult#attribute_value_count #attribute_value_count} => Integer
    #   * {Types::DomainMetadataResult#attribute_values_size_bytes #attribute_values_size_bytes} => Integer
    #   * {Types::DomainMetadataResult#timestamp #timestamp} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.domain_metadata({
    #     domain_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.item_count #=> Integer
    #   resp.item_names_size_bytes #=> Integer
    #   resp.attribute_name_count #=> Integer
    #   resp.attribute_names_size_bytes #=> Integer
    #   resp.attribute_value_count #=> Integer
    #   resp.attribute_values_size_bytes #=> Integer
    #   resp.timestamp #=> Integer
    #
    # @overload domain_metadata(params = {})
    # @param [Hash] params ({})
    def domain_metadata(params = {}, options = {})
      req = build_request(:domain_metadata, params)
      req.send_request(options)
    end

    # Returns all of the attributes associated with the specified item.
    # Optionally, the attributes returned can be limited to one or more
    # attributes by specifying an attribute name parameter.
    #
    # If the item does not exist on the replica that was accessed for this
    # operation, an empty set is returned. The system does not return an
    # error as it cannot guarantee the item does not exist on other
    # replicas.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain in which to perform the operation.
    #
    # @option params [required, String] :item_name
    #   The name of the item.
    #
    # @option params [Array<String>] :attribute_names
    #   The names of the attributes.
    #
    # @option params [Boolean] :consistent_read
    #   Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
    #
    # @return [Types::GetAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttributesResult#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attributes({
    #     domain_name: "String", # required
    #     item_name: "String", # required
    #     attribute_names: ["String"],
    #     consistent_read: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].alternate_name_encoding #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].alternate_value_encoding #=> String
    #
    # @overload get_attributes(params = {})
    # @param [Hash] params ({})
    def get_attributes(params = {}, options = {})
      req = build_request(:get_attributes, params)
      req.send_request(options)
    end

    # The `ListDomains` operation lists all domains associated with the
    # Access Key ID. It returns domain names up to the limit set by
    # [MaxNumberOfDomains](#MaxNumberOfDomains). A [NextToken](#NextToken)
    # is returned if there are more than `MaxNumberOfDomains` domains.
    # Calling `ListDomains` successive times with the `NextToken` provided
    # by the operation returns up to `MaxNumberOfDomains` more domain names
    # with each successive operation call.
    #
    # @option params [Integer] :max_number_of_domains
    #   The maximum number of domain names you want returned. The range is 1
    #   to 100. The default setting is 100.
    #
    # @option params [String] :next_token
    #   A string informing Amazon SimpleDB where to start the next list of
    #   domain names.
    #
    # @return [Types::ListDomainsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResult#domain_names #domain_names} => Array&lt;String&gt;
    #   * {Types::ListDomainsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_number_of_domains: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_names #=> Array
    #   resp.domain_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # The PutAttributes operation creates or replaces attributes in an item.
    # The client may specify new attributes using a combination of the
    # `Attribute.X.Name` and `Attribute.X.Value` parameters. The client
    # specifies the first attribute by the parameters `Attribute.0.Name` and
    # `Attribute.0.Value`, the second attribute by the parameters
    # `Attribute.1.Name` and `Attribute.1.Value`, and so on.
    #
    # Attributes are uniquely identified in an item by their name/value
    # combination. For example, a single item can have the attributes `\{
    # "first_name", "first_value" \}` and `\{ "first_name", second_value"
    # \}`. However, it cannot have two attribute instances where both the
    # `Attribute.X.Name` and `Attribute.X.Value` are the same.
    #
    # Optionally, the requestor can supply the `Replace` parameter for each
    # individual attribute. Setting this value to `true` causes the new
    # attribute value to replace the existing attribute value(s). For
    # example, if an item has the attributes `\{ 'a', '1' \}`, `\{ 'b',
    # '2'\}` and `\{ 'b', '3' \}` and the requestor calls `PutAttributes`
    # using the attributes `\{ 'b', '4' \}` with the `Replace` parameter set
    # to true, the final attributes of the item are changed to `\{ 'a', '1'
    # \}` and `\{ 'b', '4' \}`, which replaces the previous values of the
    # 'b' attribute with the new value.
    #
    # You cannot specify an empty string as an attribute name.
    #
    # Because Amazon SimpleDB makes multiple copies of client data and uses
    # an eventual consistency update model, an immediate GetAttributes or
    # Select operation (read) immediately after a PutAttributes or
    # DeleteAttributes operation (write) might not return the updated data.
    #
    # The following limitations are enforced for this operation: * 256 total
    # attribute name-value pairs per item
    # * One billion attributes per domain
    # * 10 GB of total user data storage per domain
    #
    # @option params [required, String] :domain_name
    #   The name of the domain in which to perform the operation.
    #
    # @option params [required, String] :item_name
    #   The name of the item.
    #
    # @option params [required, Array<Types::ReplaceableAttribute>] :attributes
    #   The list of attributes.
    #
    # @option params [Types::UpdateCondition] :expected
    #   The update condition which, if specified, determines whether the
    #   specified attributes will be updated or not. The update condition must
    #   be satisfied in order for this request to be processed and the
    #   attributes to be updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_attributes({
    #     domain_name: "String", # required
    #     item_name: "String", # required
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #         replace: false,
    #       },
    #     ],
    #     expected: {
    #       name: "String",
    #       value: "String",
    #       exists: false,
    #     },
    #   })
    #
    # @overload put_attributes(params = {})
    # @param [Hash] params ({})
    def put_attributes(params = {}, options = {})
      req = build_request(:put_attributes, params)
      req.send_request(options)
    end

    # The `Select` operation returns a set of attributes for `ItemNames`
    # that match the select expression. `Select` is similar to the standard
    # SQL SELECT statement.
    #
    # The total size of the response cannot exceed 1 MB in total size.
    # Amazon SimpleDB automatically adjusts the number of items returned per
    # page to enforce this limit. For example, if the client asks to
    # retrieve 2500 items, but each individual item is 10 kB in size, the
    # system returns 100 items and an appropriate `NextToken` so the client
    # can access the next page of results.
    #
    # For information on how to construct select expressions, see Using
    # Select to Create Amazon SimpleDB Queries in the Developer Guide.
    #
    # @option params [required, String] :select_expression
    #   The expression used to query the domain.
    #
    # @option params [String] :next_token
    #   A string informing Amazon SimpleDB where to start the next list of `ItemNames`.
    #
    # @option params [Boolean] :consistent_read
    #   Determines whether or not strong consistency should be enforced when data is read from SimpleDB. If `true`, any data previously written to SimpleDB will be returned. Otherwise, results will be consistent eventually, and the client may not see data that was written immediately before your read.
    #
    # @return [Types::SelectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SelectResult#items #items} => Array&lt;Types::Item&gt;
    #   * {Types::SelectResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.select({
    #     select_expression: "String", # required
    #     next_token: "String",
    #     consistent_read: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].alternate_name_encoding #=> String
    #   resp.items[0].attributes #=> Array
    #   resp.items[0].attributes[0].name #=> String
    #   resp.items[0].attributes[0].alternate_name_encoding #=> String
    #   resp.items[0].attributes[0].value #=> String
    #   resp.items[0].attributes[0].alternate_value_encoding #=> String
    #   resp.next_token #=> String
    #
    # @overload select(params = {})
    # @param [Hash] params ({})
    def select(params = {}, options = {})
      req = build_request(:select, params)
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
      context[:gem_name] = 'aws-sdk-simpledb'
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
