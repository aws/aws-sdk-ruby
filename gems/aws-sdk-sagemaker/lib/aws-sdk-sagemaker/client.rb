# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemaker)

module Aws::SageMaker
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :sagemaker

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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Adds or overwrites one or more tags for the specified Amazon SageMaker
    # resource. You can add tags to notebook instances, training jobs,
    # models, endpoint configurations, and endpoints.
    #
    # Each tag consists of a key and an optional value. Tag keys must be
    # unique per resource. For more information about tags, see [Using Cost
    # Allocation Tags][1] in the *AWS Billing and Cost Management User
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of `Tag` objects. Each tag is a key-value pair. Only the
    #   `key` parameter is required. If you don't specify a value, Amazon
    #   SageMaker sets the value to an empty string.
    #
    # @return [Types::AddTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddTagsOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/AddTags AWS API Documentation
    #
    # @overload add_tags(params = {})
    # @param [Hash] params ({})
    def add_tags(params = {}, options = {})
      req = build_request(:add_tags, params)
      req.send_request(options)
    end

    # Creates an endpoint using the endpoint configuration specified in the
    # request. Amazon SageMaker uses the endpoint to provision resources and
    # deploy models. You create the endpoint configuration with the
    # [CreateEndpointConfig][1] API.
    #
    # <note markdown="1"> Use this API only for hosting models using Amazon SageMaker hosting
    # services.
    #
    #  </note>
    #
    # The endpoint name must be unique within an AWS Region in your AWS
    # account.
    #
    # When it receives the request, Amazon SageMaker creates the endpoint,
    # launches the resources (ML compute instances), and deploys the
    # model(s) on them.
    #
    # When Amazon SageMaker receives the request, it sets the endpoint
    # status to `Creating`. After it creates the endpoint, it sets the
    # status to `InService`. Amazon SageMaker can then process incoming
    # requests for inferences. To check the status of an endpoint, use the
    # [DescribeEndpoint][2] API.
    #
    # For an example, see [Exercise 1: Using the K-Means Algorithm Provided
    # by Amazon SageMaker][3].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
    # [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    # [3]: http://docs.aws.amazon.com/sagemaker/latest/dg/ex1.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint. The name must be unique within an AWS Region
    #   in your AWS account.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of an endpoint configuration. For more information, see
    #   [CreateEndpointConfig][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpointConfig.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1]in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     endpoint_config_name: "EndpointConfigName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Creates an endpoint configuration that Amazon SageMaker hosting
    # services uses to deploy models. In the configuration, you identify one
    # or more models, created using the `CreateModel` API, to deploy and the
    # resources that you want Amazon SageMaker to provision. Then you call
    # the [CreateEndpoint][1] API.
    #
    # <note markdown="1"> Use this API only if you want to use Amazon SageMaker hosting services
    # to deploy models into production.
    #
    #  </note>
    #
    # In the request, you define one or more `ProductionVariant`s, each of
    # which identifies a model. Each `ProductionVariant` parameter also
    # describes the resources that you want Amazon SageMaker to provision.
    # This includes the number and type of ML compute instances to deploy.
    #
    # If you are hosting multiple models, you also assign a `VariantWeight`
    # to specify how much traffic you want to allocate to each model. For
    # example, suppose that you want to host two models, A and B, and you
    # assign traffic weight 2 for model A and 1 for model B. Amazon
    # SageMaker distributes two-thirds of the traffic to Model A, and
    # one-third to model B.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration. You specify this name in a
    #   [CreateEndpoint][1] request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html
    #
    # @option params [required, Array<Types::ProductionVariant>] :production_variants
    #   An array of `ProductionVariant` objects, one for each model that you
    #   want to host at this endpoint.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @option params [String] :kms_key_id
    #   The Amazon Resource Name (ARN) of a AWS Key Management Service key
    #   that Amazon SageMaker uses to encrypt data on the storage volume
    #   attached to the ML compute instance that hosts the endpoint.
    #
    # @return [Types::CreateEndpointConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointConfigOutput#endpoint_config_arn #endpoint_config_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #     production_variants: [ # required
    #       {
    #         variant_name: "VariantName", # required
    #         model_name: "ModelName", # required
    #         initial_instance_count: 1, # required
    #         instance_type: "ml.c4.2xlarge", # required, accepts ml.c4.2xlarge, ml.c4.8xlarge, ml.c4.xlarge, ml.c5.2xlarge, ml.c5.9xlarge, ml.c5.xlarge, ml.m4.xlarge, ml.p2.xlarge, ml.p3.2xlarge, ml.t2.medium
    #         initial_variant_weight: 1.0,
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_config_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateEndpointConfig AWS API Documentation
    #
    # @overload create_endpoint_config(params = {})
    # @param [Hash] params ({})
    def create_endpoint_config(params = {}, options = {})
      req = build_request(:create_endpoint_config, params)
      req.send_request(options)
    end

    # Creates a model in Amazon SageMaker. In the request, you name the
    # model and describe one or more containers. For each container, you
    # specify the docker image containing inference code, artifacts (from
    # prior training), and custom environment map that the inference code
    # uses when you deploy the model into production.
    #
    # Use this API to create a model only if you want to use Amazon
    # SageMaker hosting services. To host your model, you create an endpoint
    # configuration with the `CreateEndpointConfig` API, and then create an
    # endpoint with the `CreateEndpoint` API.
    #
    # Amazon SageMaker then deploys all of the containers that you defined
    # for the model in the hosting environment.
    #
    # In the `CreateModel` request, you must define a container with the
    # `PrimaryContainer` parameter.
    #
    # In the request, you also provide an IAM role that Amazon SageMaker can
    # assume to access model artifacts and docker image for deployment on ML
    # compute hosting instances. In addition, you also use the IAM role to
    # manage permissions the inference code needs. For example, if the
    # inference code access any other AWS resources, you grant necessary
    # permissions via this role.
    #
    # @option params [required, String] :model_name
    #   The name of the new model.
    #
    # @option params [required, Types::ContainerDefinition] :primary_container
    #   The location of the primary docker image containing inference code,
    #   associated artifacts, and custom environment map that the inference
    #   code uses when the model is deployed into production.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
    #   can assume to access model artifacts and docker image for deployment
    #   on ML compute instances. Deploying on ML compute instances is part of
    #   model hosting. For more information, see [Amazon SageMaker Roles][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelOutput#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     model_name: "ModelName", # required
    #     primary_container: { # required
    #       container_hostname: "ContainerHostname",
    #       image: "Image", # required
    #       model_data_url: "Url",
    #       environment: {
    #         "EnvironmentKey" => "EnvironmentValue",
    #       },
    #     },
    #     execution_role_arn: "RoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateModel AWS API Documentation
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates an Amazon SageMaker notebook instance. A notebook instance is
    # a machine learning (ML) compute instance running on a Jupyter
    # notebook.
    #
    # In a `CreateNotebookInstance` request, specify the type of ML compute
    # instance that you want to run. Amazon SageMaker launches the instance,
    # installs common libraries that you can use to explore datasets for
    # model training, and attaches an ML storage volume to the notebook
    # instance.
    #
    # Amazon SageMaker also provides a set of example notebooks. Each
    # notebook demonstrates how to use Amazon SageMaker with a specific
    # algorithm or with a machine learning framework.
    #
    # After receiving the request, Amazon SageMaker does the following:
    #
    # 1.  Creates a network interface in the Amazon SageMaker VPC.
    #
    # 2.  (Option) If you specified `SubnetId`, Amazon SageMaker creates a
    #     network interface in your own VPC, which is inferred from the
    #     subnet ID that you provide in the input. When creating this
    #     network interface, Amazon SageMaker attaches the security group
    #     that you specified in the request to the network interface that it
    #     creates in your VPC.
    #
    # 3.  Launches an EC2 instance of the type specified in the request in
    #     the Amazon SageMaker VPC. If you specified `SubnetId` of your VPC,
    #     Amazon SageMaker specifies both network interfaces when launching
    #     this instance. This enables inbound traffic from your own VPC to
    #     the notebook instance, assuming that the security groups allow it.
    #
    # After creating the notebook instance, Amazon SageMaker returns its
    # Amazon Resource Name (ARN).
    #
    # After Amazon SageMaker creates the notebook instance, you can connect
    # to the Jupyter server and work in Jupyter notebooks. For example, you
    # can write code to explore a dataset that you can use for model
    # training, train a model, host models by creating Amazon SageMaker
    # endpoints, and validate hosted models.
    #
    # For more information, see [How It Works][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the new notebook instance.
    #
    # @option params [required, String] :instance_type
    #   The type of ML compute instance to launch for the notebook instance.
    #
    # @option params [String] :subnet_id
    #   The ID of the subnet in a VPC to which you would like to have a
    #   connectivity from your ML compute instance.
    #
    # @option params [Array<String>] :security_group_ids
    #   The VPC security group IDs, in the form sg-xxxxxxxx. The security
    #   groups must be for the same VPC as specified in the subnet.
    #
    # @option params [required, String] :role_arn
    #   When you send any requests to AWS resources from the notebook
    #   instance, Amazon SageMaker assumes this role to perform tasks on your
    #   behalf. You must grant this role necessary permissions so Amazon
    #   SageMaker can perform these tasks. The policy must allow the Amazon
    #   SageMaker service principal (sagemaker.amazonaws.com) permissions to
    #   assume this role. For more information, see [Amazon SageMaker
    #   Roles][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [String] :kms_key_id
    #   If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt
    #   data at rest on the ML storage volume that is attached to your
    #   notebook instance.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to associate with the notebook instance. You can add
    #   tags later by using the `CreateTags` API.
    #
    # @option params [String] :lifecycle_config_name
    #   The name of a lifecycle configuration to associate with the notebook
    #   instance. For information about lifestyle configurations, see
    #   notebook-lifecycle-config.
    #
    # @option params [String] :direct_internet_access
    #   Sets whether Amazon SageMaker provides internet access to the notebook
    #   instance. If you set this to `Disabled` this notebook instance will be
    #   able to access resources only in your VPC, and will not be able to
    #   connect to Amazon SageMaker training and endpoint services unless your
    #   configure a NAT Gateway in your VPC.
    #
    #   For more information, see appendix-notebook-and-internet-access. You
    #   can set the value of this parameter to `Disabled` only if you set a
    #   value for the `SubnetId` parameter.
    #
    # @return [Types::CreateNotebookInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotebookInstanceOutput#notebook_instance_arn #notebook_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     instance_type: "ml.t2.medium", # required, accepts ml.t2.medium, ml.m4.xlarge, ml.p2.xlarge, ml.p3.2xlarge
    #     subnet_id: "SubnetId",
    #     security_group_ids: ["SecurityGroupId"],
    #     role_arn: "RoleArn", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     lifecycle_config_name: "NotebookInstanceLifecycleConfigName",
    #     direct_internet_access: "Enabled", # accepts Enabled, Disabled
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstance AWS API Documentation
    #
    # @overload create_notebook_instance(params = {})
    # @param [Hash] params ({})
    def create_notebook_instance(params = {}, options = {})
      req = build_request(:create_notebook_instance, params)
      req.send_request(options)
    end

    # Creates a lifecycle configuration that you can associate with a
    # notebook instance. A *lifecycle configuration* is a collection of
    # shell scripts that run when you create or start a notebook instance.
    #
    # For information about notebook instance lifestyle configurations, see
    # notebook-lifecycle-config.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_create
    #   A shell script that runs only once, when you create a notebook
    #   instance.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_start
    #   A shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
    #
    # @return [Types::CreateNotebookInstanceLifecycleConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_arn #notebook_instance_lifecycle_config_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #     on_create: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #     on_start: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_lifecycle_config_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload create_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def create_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:create_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Returns a URL that you can use to connect to the Juypter server from a
    # notebook instance. In the Amazon SageMaker console, when you choose
    # `Open` next to a notebook instance, Amazon SageMaker opens a new tab
    # showing the Jupyter server home page from the notebook instance. The
    # console uses this API to get the URL and show the page.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance.
    #
    # @option params [Integer] :session_expiration_duration_in_seconds
    #   The duration of the session, in seconds. The default is 12 hours.
    #
    # @return [Types::CreatePresignedNotebookInstanceUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresignedNotebookInstanceUrlOutput#authorized_url #authorized_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_presigned_notebook_instance_url({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     session_expiration_duration_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorized_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreatePresignedNotebookInstanceUrl AWS API Documentation
    #
    # @overload create_presigned_notebook_instance_url(params = {})
    # @param [Hash] params ({})
    def create_presigned_notebook_instance_url(params = {}, options = {})
      req = build_request(:create_presigned_notebook_instance_url, params)
      req.send_request(options)
    end

    # Starts a model training job. After training completes, Amazon
    # SageMaker saves the resulting model artifacts to an Amazon S3 location
    # that you specify.
    #
    # If you choose to host your model using Amazon SageMaker hosting
    # services, you can use the resulting model artifacts as part of the
    # model. You can also use the artifacts in a deep learning service other
    # than Amazon SageMaker, provided that you know how to use them for
    # inferences.
    #
    # In the request body, you provide the following:
    #
    # * `AlgorithmSpecification` - Identifies the training algorithm to use.
    #
    # * `HyperParameters` - Specify these algorithm-specific parameters to
    #   influence the quality of the final model. For a list of
    #   hyperparameters for each training algorithm provided by Amazon
    #   SageMaker, see [Algorithms][1].
    #
    # * `InputDataConfig` - Describes the training dataset and the Amazon S3
    #   location where it is stored.
    #
    # * `OutputDataConfig` - Identifies the Amazon S3 location where you
    #   want Amazon SageMaker to save the results of model training.
    #
    #
    #
    # * `ResourceConfig` - Identifies the resources, ML compute instances,
    #   and ML storage volumes to deploy for model training. In distributed
    #   training, you specify more than one instance.
    #
    # * `RoleARN` - The Amazon Resource Number (ARN) that Amazon SageMaker
    #   assumes to perform tasks on your behalf during model training. You
    #   must grant this role the necessary permissions so that Amazon
    #   SageMaker can successfully complete model training.
    #
    # * `StoppingCondition` - Sets a duration for training. Use this
    #   parameter to cap model training costs.
    #
    # For more information about Amazon SageMaker, see [How It Works][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    # [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job. The name must be unique within an AWS
    #   Region in an AWS account. It appears in the Amazon SageMaker console.
    #
    # @option params [Hash<String,String>] :hyper_parameters
    #   Algorithm-specific parameters. You set hyperparameters before you
    #   start the learning process. Hyperparameters influence the quality of
    #   the model. For a list of hyperparameters for each training algorithm
    #   provided by Amazon SageMaker, see [Algorithms][1].
    #
    #   You can specify a maximum of 100 hyperparameters. Each hyperparameter
    #   is a key-value pair. Each key and value is limited to 256 characters,
    #   as specified by the `Length Constraint`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #
    # @option params [required, Types::AlgorithmSpecification] :algorithm_specification
    #   The registry path of the Docker image that contains the training
    #   algorithm and algorithm-specific metadata, including the input mode.
    #   For more information about algorithms provided by Amazon SageMaker,
    #   see [Algorithms][1]. For information about providing your own
    #   algorithms, see [Bring Your Own Algorithms ][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/algos.html
    #   [2]: http://docs.aws.amazon.com/sagemaker/latest/dg/adv-topics-own-algo.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker
    #   can assume to perform tasks on your behalf.
    #
    #   During model training, Amazon SageMaker needs your permission to read
    #   input data from an S3 bucket, download a Docker image that contains
    #   training code, write model artifacts to an S3 bucket, write logs to
    #   Amazon CloudWatch Logs, and publish metrics to Amazon CloudWatch. You
    #   grant permissions for all of these tasks to an IAM role. For more
    #   information, see [Amazon SageMaker Roles][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html
    #
    # @option params [required, Array<Types::Channel>] :input_data_config
    #   An array of `Channel` objects. Each channel is a named input source.
    #   `InputDataConfig` describes the input data and its location.
    #
    #   Algorithms can accept input data from one or more channels. For
    #   example, an algorithm might have two channels of input data,
    #   `training_data` and `validation_data`. The configuration for each
    #   channel provides the S3 location where the input data is stored. It
    #   also provides information about the stored data: the MIME type,
    #   compression method, and whether the data is wrapped in RecordIO
    #   format.
    #
    #   Depending on the input mode that the algorithm supports, Amazon
    #   SageMaker either copies input data files from an S3 bucket to a local
    #   directory in the Docker container, or makes it available as input
    #   streams.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies the path to the S3 bucket where you want to store model
    #   artifacts. Amazon SageMaker creates subfolders for the artifacts.
    #
    # @option params [required, Types::ResourceConfig] :resource_config
    #   The resources, including the ML compute instances and ML storage
    #   volumes, to use for model training.
    #
    #   ML storage volumes store model artifacts and incremental states.
    #   Training algorithms might also use ML storage volumes for scratch
    #   space. If you want Amazon SageMaker to use the ML storage volume to
    #   store the training data, choose `File` as the `TrainingInputMode` in
    #   the algorithm specification. For distributed training algorithms,
    #   specify an instance count greater than 1.
    #
    # @option params [required, Types::StoppingCondition] :stopping_condition
    #   Sets a duration for training. Use this parameter to cap model training
    #   costs. To stop a job, Amazon SageMaker sends the algorithm the
    #   `SIGTERM` signal, which delays job termination for 120 seconds.
    #   Algorithms might use this 120-second window to save the model
    #   artifacts.
    #
    #   When Amazon SageMaker terminates a job because the stopping condition
    #   has been met, training algorithms provided by Amazon SageMaker save
    #   the intermediate results of the job. This intermediate data is a valid
    #   model artifact. You can use it to create a model using the
    #   `CreateModel` API.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs. For more information, see [Using Cost
    #   Allocation Tags][1] in the *AWS Billing and Cost Management User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what
    #
    # @return [Types::CreateTrainingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrainingJobResponse#training_job_arn #training_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_training_job({
    #     training_job_name: "TrainingJobName", # required
    #     hyper_parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #     algorithm_specification: { # required
    #       training_image: "AlgorithmImage", # required
    #       training_input_mode: "Pipe", # required, accepts Pipe, File
    #     },
    #     role_arn: "RoleArn", # required
    #     input_data_config: [ # required
    #       {
    #         channel_name: "ChannelName", # required
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_data_type: "ManifestFile", # required, accepts ManifestFile, S3Prefix
    #             s3_uri: "S3Uri", # required
    #             s3_data_distribution_type: "FullyReplicated", # accepts FullyReplicated, ShardedByS3Key
    #           },
    #         },
    #         content_type: "ContentType",
    #         compression_type: "None", # accepts None, Gzip
    #         record_wrapper_type: "None", # accepts None, RecordIO
    #       },
    #     ],
    #     output_data_config: { # required
    #       kms_key_id: "KmsKeyId",
    #       s3_output_path: "S3Uri", # required
    #     },
    #     resource_config: { # required
    #       instance_type: "ml.m4.xlarge", # required, accepts ml.m4.xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge
    #       instance_count: 1, # required
    #       volume_size_in_gb: 1, # required
    #       volume_kms_key_id: "KmsKeyId",
    #     },
    #     stopping_condition: { # required
    #       max_runtime_in_seconds: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/CreateTrainingJob AWS API Documentation
    #
    # @overload create_training_job(params = {})
    # @param [Hash] params ({})
    def create_training_job(params = {}, options = {})
      req = build_request(:create_training_job, params)
      req.send_request(options)
    end

    # Deletes an endpoint. Amazon SageMaker frees up all of the resources
    # that were deployed when the endpoint was created.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Deletes an endpoint configuration. The `DeleteEndpoingConfig` API
    # deletes only the specified configuration. It does not delete endpoints
    # created using the configuration.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteEndpointConfig AWS API Documentation
    #
    # @overload delete_endpoint_config(params = {})
    # @param [Hash] params ({})
    def delete_endpoint_config(params = {}, options = {})
      req = build_request(:delete_endpoint_config, params)
      req.send_request(options)
    end

    # Deletes a model. The `DeleteModel` API deletes only the model entry
    # that was created in Amazon SageMaker when you called the
    # [CreateModel][1] API. It does not delete model artifacts, inference
    # code, or the IAM role that you specified when creating the model.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html
    #
    # @option params [required, String] :model_name
    #   The name of the model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteModel AWS API Documentation
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Deletes an Amazon SageMaker notebook instance. Before you can delete a
    # notebook instance, you must call the `StopNotebookInstance` API.
    #
    # When you delete a notebook instance, you lose all of your data. Amazon
    # SageMaker removes the ML compute instance, and deletes the ML storage
    # volume and the network interface associated with the notebook
    # instance.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the Amazon SageMaker notebook instance to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstance AWS API Documentation
    #
    # @overload delete_notebook_instance(params = {})
    # @param [Hash] params ({})
    def delete_notebook_instance(params = {}, options = {})
      req = build_request(:delete_notebook_instance, params)
      req.send_request(options)
    end

    # Deletes a notebook instance lifecycle configuration.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload delete_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def delete_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:delete_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Deletes the specified tags from an Amazon SageMaker resource.
    #
    # To list a resource's tags, use the `ListTags` API.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   delete.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array or one or more tag keys to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Returns the description of an endpoint.
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint.
    #
    # @return [Types::DescribeEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointOutput#endpoint_name #endpoint_name} => String
    #   * {Types::DescribeEndpointOutput#endpoint_arn #endpoint_arn} => String
    #   * {Types::DescribeEndpointOutput#endpoint_config_name #endpoint_config_name} => String
    #   * {Types::DescribeEndpointOutput#production_variants #production_variants} => Array&lt;Types::ProductionVariantSummary&gt;
    #   * {Types::DescribeEndpointOutput#endpoint_status #endpoint_status} => String
    #   * {Types::DescribeEndpointOutput#failure_reason #failure_reason} => String
    #   * {Types::DescribeEndpointOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeEndpointOutput#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint({
    #     endpoint_name: "EndpointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_name #=> String
    #   resp.endpoint_arn #=> String
    #   resp.endpoint_config_name #=> String
    #   resp.production_variants #=> Array
    #   resp.production_variants[0].variant_name #=> String
    #   resp.production_variants[0].current_weight #=> Float
    #   resp.production_variants[0].desired_weight #=> Float
    #   resp.production_variants[0].current_instance_count #=> Integer
    #   resp.production_variants[0].desired_instance_count #=> Integer
    #   resp.endpoint_status #=> String, one of "OutOfService", "Creating", "Updating", "RollingBack", "InService", "Deleting", "Failed"
    #   resp.failure_reason #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpoint AWS API Documentation
    #
    # @overload describe_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_endpoint(params = {}, options = {})
      req = build_request(:describe_endpoint, params)
      req.send_request(options)
    end

    # Returns the description of an endpoint configuration created using the
    # `CreateEndpointConfig` API.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the endpoint configuration.
    #
    # @return [Types::DescribeEndpointConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointConfigOutput#endpoint_config_name #endpoint_config_name} => String
    #   * {Types::DescribeEndpointConfigOutput#endpoint_config_arn #endpoint_config_arn} => String
    #   * {Types::DescribeEndpointConfigOutput#production_variants #production_variants} => Array&lt;Types::ProductionVariant&gt;
    #   * {Types::DescribeEndpointConfigOutput#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeEndpointConfigOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint_config({
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_config_name #=> String
    #   resp.endpoint_config_arn #=> String
    #   resp.production_variants #=> Array
    #   resp.production_variants[0].variant_name #=> String
    #   resp.production_variants[0].model_name #=> String
    #   resp.production_variants[0].initial_instance_count #=> Integer
    #   resp.production_variants[0].instance_type #=> String, one of "ml.c4.2xlarge", "ml.c4.8xlarge", "ml.c4.xlarge", "ml.c5.2xlarge", "ml.c5.9xlarge", "ml.c5.xlarge", "ml.m4.xlarge", "ml.p2.xlarge", "ml.p3.2xlarge", "ml.t2.medium"
    #   resp.production_variants[0].initial_variant_weight #=> Float
    #   resp.kms_key_id #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeEndpointConfig AWS API Documentation
    #
    # @overload describe_endpoint_config(params = {})
    # @param [Hash] params ({})
    def describe_endpoint_config(params = {}, options = {})
      req = build_request(:describe_endpoint_config, params)
      req.send_request(options)
    end

    # Describes a model that you created using the `CreateModel` API.
    #
    # @option params [required, String] :model_name
    #   The name of the model.
    #
    # @return [Types::DescribeModelOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelOutput#model_name #model_name} => String
    #   * {Types::DescribeModelOutput#primary_container #primary_container} => Types::ContainerDefinition
    #   * {Types::DescribeModelOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::DescribeModelOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeModelOutput#model_arn #model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model({
    #     model_name: "ModelName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_name #=> String
    #   resp.primary_container.container_hostname #=> String
    #   resp.primary_container.image #=> String
    #   resp.primary_container.model_data_url #=> String
    #   resp.primary_container.environment #=> Hash
    #   resp.primary_container.environment["EnvironmentKey"] #=> String
    #   resp.execution_role_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeModel AWS API Documentation
    #
    # @overload describe_model(params = {})
    # @param [Hash] params ({})
    def describe_model(params = {}, options = {})
      req = build_request(:describe_model, params)
      req.send_request(options)
    end

    # Returns information about a notebook instance.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance that you want information about.
    #
    # @return [Types::DescribeNotebookInstanceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_arn #notebook_instance_arn} => String
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_name #notebook_instance_name} => String
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_status #notebook_instance_status} => String
    #   * {Types::DescribeNotebookInstanceOutput#failure_reason #failure_reason} => String
    #   * {Types::DescribeNotebookInstanceOutput#url #url} => String
    #   * {Types::DescribeNotebookInstanceOutput#instance_type #instance_type} => String
    #   * {Types::DescribeNotebookInstanceOutput#subnet_id #subnet_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeNotebookInstanceOutput#role_arn #role_arn} => String
    #   * {Types::DescribeNotebookInstanceOutput#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#network_interface_id #network_interface_id} => String
    #   * {Types::DescribeNotebookInstanceOutput#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeNotebookInstanceOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeNotebookInstanceOutput#notebook_instance_lifecycle_config_name #notebook_instance_lifecycle_config_name} => String
    #   * {Types::DescribeNotebookInstanceOutput#direct_internet_access #direct_internet_access} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_arn #=> String
    #   resp.notebook_instance_name #=> String
    #   resp.notebook_instance_status #=> String, one of "Pending", "InService", "Stopping", "Stopped", "Failed", "Deleting"
    #   resp.failure_reason #=> String
    #   resp.url #=> String
    #   resp.instance_type #=> String, one of "ml.t2.medium", "ml.m4.xlarge", "ml.p2.xlarge", "ml.p3.2xlarge"
    #   resp.subnet_id #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.role_arn #=> String
    #   resp.kms_key_id #=> String
    #   resp.network_interface_id #=> String
    #   resp.last_modified_time #=> Time
    #   resp.creation_time #=> Time
    #   resp.notebook_instance_lifecycle_config_name #=> String
    #   resp.direct_internet_access #=> String, one of "Enabled", "Disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstance AWS API Documentation
    #
    # @overload describe_notebook_instance(params = {})
    # @param [Hash] params ({})
    def describe_notebook_instance(params = {}, options = {})
      req = build_request(:describe_notebook_instance, params)
      req.send_request(options)
    end

    # Returns a description of a notebook instance lifecycle configuration.
    #
    # For information about notebook instance lifestyle configurations, see
    # notebook-lifecycle-config.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration to describe.
    #
    # @return [Types::DescribeNotebookInstanceLifecycleConfigOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_arn #notebook_instance_lifecycle_config_arn} => String
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#notebook_instance_lifecycle_config_name #notebook_instance_lifecycle_config_name} => String
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#on_create #on_create} => Array&lt;Types::NotebookInstanceLifecycleHook&gt;
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#on_start #on_start} => Array&lt;Types::NotebookInstanceLifecycleHook&gt;
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#last_modified_time #last_modified_time} => Time
    #   * {Types::DescribeNotebookInstanceLifecycleConfigOutput#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.notebook_instance_lifecycle_config_arn #=> String
    #   resp.notebook_instance_lifecycle_config_name #=> String
    #   resp.on_create #=> Array
    #   resp.on_create[0].content #=> String
    #   resp.on_start #=> Array
    #   resp.on_start[0].content #=> String
    #   resp.last_modified_time #=> Time
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload describe_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def describe_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:describe_notebook_instance_lifecycle_config, params)
      req.send_request(options)
    end

    # Returns information about a training job.
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job.
    #
    # @return [Types::DescribeTrainingJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrainingJobResponse#training_job_name #training_job_name} => String
    #   * {Types::DescribeTrainingJobResponse#training_job_arn #training_job_arn} => String
    #   * {Types::DescribeTrainingJobResponse#model_artifacts #model_artifacts} => Types::ModelArtifacts
    #   * {Types::DescribeTrainingJobResponse#training_job_status #training_job_status} => String
    #   * {Types::DescribeTrainingJobResponse#secondary_status #secondary_status} => String
    #   * {Types::DescribeTrainingJobResponse#failure_reason #failure_reason} => String
    #   * {Types::DescribeTrainingJobResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribeTrainingJobResponse#algorithm_specification #algorithm_specification} => Types::AlgorithmSpecification
    #   * {Types::DescribeTrainingJobResponse#role_arn #role_arn} => String
    #   * {Types::DescribeTrainingJobResponse#input_data_config #input_data_config} => Array&lt;Types::Channel&gt;
    #   * {Types::DescribeTrainingJobResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::DescribeTrainingJobResponse#resource_config #resource_config} => Types::ResourceConfig
    #   * {Types::DescribeTrainingJobResponse#stopping_condition #stopping_condition} => Types::StoppingCondition
    #   * {Types::DescribeTrainingJobResponse#creation_time #creation_time} => Time
    #   * {Types::DescribeTrainingJobResponse#training_start_time #training_start_time} => Time
    #   * {Types::DescribeTrainingJobResponse#training_end_time #training_end_time} => Time
    #   * {Types::DescribeTrainingJobResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_training_job({
    #     training_job_name: "TrainingJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_name #=> String
    #   resp.training_job_arn #=> String
    #   resp.model_artifacts.s3_model_artifacts #=> String
    #   resp.training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.secondary_status #=> String, one of "Starting", "Downloading", "Training", "Uploading", "Stopping", "Stopped", "MaxRuntimeExceeded", "Completed", "Failed"
    #   resp.failure_reason #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["ParameterKey"] #=> String
    #   resp.algorithm_specification.training_image #=> String
    #   resp.algorithm_specification.training_input_mode #=> String, one of "Pipe", "File"
    #   resp.role_arn #=> String
    #   resp.input_data_config #=> Array
    #   resp.input_data_config[0].channel_name #=> String
    #   resp.input_data_config[0].data_source.s3_data_source.s3_data_type #=> String, one of "ManifestFile", "S3Prefix"
    #   resp.input_data_config[0].data_source.s3_data_source.s3_uri #=> String
    #   resp.input_data_config[0].data_source.s3_data_source.s3_data_distribution_type #=> String, one of "FullyReplicated", "ShardedByS3Key"
    #   resp.input_data_config[0].content_type #=> String
    #   resp.input_data_config[0].compression_type #=> String, one of "None", "Gzip"
    #   resp.input_data_config[0].record_wrapper_type #=> String, one of "None", "RecordIO"
    #   resp.output_data_config.kms_key_id #=> String
    #   resp.output_data_config.s3_output_path #=> String
    #   resp.resource_config.instance_type #=> String, one of "ml.m4.xlarge", "ml.m4.4xlarge", "ml.m4.10xlarge", "ml.c4.xlarge", "ml.c4.2xlarge", "ml.c4.8xlarge", "ml.p2.xlarge", "ml.p2.8xlarge", "ml.p2.16xlarge", "ml.p3.2xlarge", "ml.p3.8xlarge", "ml.p3.16xlarge", "ml.c5.xlarge", "ml.c5.2xlarge", "ml.c5.4xlarge", "ml.c5.9xlarge", "ml.c5.18xlarge"
    #   resp.resource_config.instance_count #=> Integer
    #   resp.resource_config.volume_size_in_gb #=> Integer
    #   resp.resource_config.volume_kms_key_id #=> String
    #   resp.stopping_condition.max_runtime_in_seconds #=> Integer
    #   resp.creation_time #=> Time
    #   resp.training_start_time #=> Time
    #   resp.training_end_time #=> Time
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/DescribeTrainingJob AWS API Documentation
    #
    # @overload describe_training_job(params = {})
    # @param [Hash] params ({})
    def describe_training_job(params = {}, options = {})
      req = build_request(:describe_training_job, params)
      req.send_request(options)
    end

    # Lists endpoint configurations.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListEndpointConfig` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of endpoint configurations, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of training jobs to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the endpoint configuration name. This filter returns only
    #   endpoint configurations whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only endpoint configurations created before the
    #   specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only endpoint configurations created after the
    #   specified time (timestamp).
    #
    # @return [Types::ListEndpointConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointConfigsOutput#endpoint_configs #endpoint_configs} => Array&lt;Types::EndpointConfigSummary&gt;
    #   * {Types::ListEndpointConfigsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoint_configs({
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "EndpointConfigNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_configs #=> Array
    #   resp.endpoint_configs[0].endpoint_config_name #=> String
    #   resp.endpoint_configs[0].endpoint_config_arn #=> String
    #   resp.endpoint_configs[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpointConfigs AWS API Documentation
    #
    # @overload list_endpoint_configs(params = {})
    # @param [Hash] params ({})
    def list_endpoint_configs(params = {}, options = {})
      req = build_request(:list_endpoint_configs, params)
      req.send_request(options)
    end

    # Lists endpoints.
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :next_token
    #   If the result of a `ListEndpoints` request was truncated, the response
    #   includes a `NextToken`. To retrieve the next set of endpoints, use the
    #   token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of endpoints to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in endpoint names. This filter returns only endpoints whose
    #   name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only endpoints that were created before the
    #   specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only endpoints that were created after the
    #   specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only endpoints that were modified before the
    #   specified timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only endpoints that were modified after the
    #   specified timestamp.
    #
    # @option params [String] :status_equals
    #   A filter that returns only endpoints with the specified status.
    #
    # @return [Types::ListEndpointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointsOutput#endpoints #endpoints} => Array&lt;Types::EndpointSummary&gt;
    #   * {Types::ListEndpointsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints({
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "EndpointNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     status_equals: "OutOfService", # accepts OutOfService, Creating, Updating, RollingBack, InService, Deleting, Failed
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_name #=> String
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].creation_time #=> Time
    #   resp.endpoints[0].last_modified_time #=> Time
    #   resp.endpoints[0].endpoint_status #=> String, one of "OutOfService", "Creating", "Updating", "RollingBack", "InService", "Deleting", "Failed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListEndpoints AWS API Documentation
    #
    # @overload list_endpoints(params = {})
    # @param [Hash] params ({})
    def list_endpoints(params = {}, options = {})
      req = build_request(:list_endpoints, params)
      req.send_request(options)
    end

    # Lists models created with the [CreateModel][1] API.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateModel.html
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @option params [String] :next_token
    #   If the response to a previous `ListModels` request was truncated, the
    #   response includes a `NextToken`. To retrieve the next set of models,
    #   use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of models to return in the response.
    #
    # @option params [String] :name_contains
    #   A string in the training job name. This filter returns only models in
    #   the training job whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only models created before the specified time
    #   (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only models created after the specified time
    #   (timestamp).
    #
    # @return [Types::ListModelsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelsOutput#models #models} => Array&lt;Types::ModelSummary&gt;
    #   * {Types::ListModelsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_models({
    #     sort_by: "Name", # accepts Name, CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     name_contains: "ModelNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.models #=> Array
    #   resp.models[0].model_name #=> String
    #   resp.models[0].model_arn #=> String
    #   resp.models[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListModels AWS API Documentation
    #
    # @overload list_models(params = {})
    # @param [Hash] params ({})
    def list_models(params = {}, options = {})
      req = build_request(:list_models, params)
      req.send_request(options)
    end

    # Lists notebook instance lifestyle configurations created with the API.
    #
    # @option params [String] :next_token
    #   If the result of a `ListNotebookInstanceLifecycleConfigs` request was
    #   truncated, the response includes a `NextToken`. To get the next set of
    #   lifecycle configurations, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of lifecycle configurations to return in the
    #   response.
    #
    # @option params [String] :sort_by
    #   Sorts the list of results. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results.
    #
    # @option params [String] :name_contains
    #   A string in the lifecycle configuration name. This filter returns only
    #   lifecycle configurations whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only lifecycle configurations that were created
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only lifecycle configurations that were created
    #   after the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only lifecycle configurations that were modified
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only lifecycle configurations that were modified
    #   after the specified time (timestamp).
    #
    # @return [Types::ListNotebookInstanceLifecycleConfigsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookInstanceLifecycleConfigsOutput#next_token #next_token} => String
    #   * {Types::ListNotebookInstanceLifecycleConfigsOutput#notebook_instance_lifecycle_configs #notebook_instance_lifecycle_configs} => Array&lt;Types::NotebookInstanceLifecycleConfigSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_instance_lifecycle_configs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "Name", # accepts Name, CreationTime, LastModifiedTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "NotebookInstanceLifecycleConfigNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notebook_instance_lifecycle_configs #=> Array
    #   resp.notebook_instance_lifecycle_configs[0].notebook_instance_lifecycle_config_name #=> String
    #   resp.notebook_instance_lifecycle_configs[0].notebook_instance_lifecycle_config_arn #=> String
    #   resp.notebook_instance_lifecycle_configs[0].creation_time #=> Time
    #   resp.notebook_instance_lifecycle_configs[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstanceLifecycleConfigs AWS API Documentation
    #
    # @overload list_notebook_instance_lifecycle_configs(params = {})
    # @param [Hash] params ({})
    def list_notebook_instance_lifecycle_configs(params = {}, options = {})
      req = build_request(:list_notebook_instance_lifecycle_configs, params)
      req.send_request(options)
    end

    # Returns a list of the Amazon SageMaker notebook instances in the
    # requester's account in an AWS Region.
    #
    # @option params [String] :next_token
    #   If the previous call to the `ListNotebookInstances` is truncated, the
    #   response includes a `NextToken`. You can use this token in your
    #   subsequent `ListNotebookInstances` request to fetch the next set of
    #   notebook instances.
    #
    #   <note markdown="1"> You might specify a filter or a sort order in your request. When
    #   response is truncated, you must use the same values for the filer and
    #   sort order in the next request.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of notebook instances to return.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `Name`.
    #
    # @option params [String] :sort_order
    #   The sort order for results.
    #
    # @option params [String] :name_contains
    #   A string in the notebook instances' name. This filter returns only
    #   notebook instances whose name contains the specified string.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only notebook instances that were created before
    #   the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns only notebook instances that were created after
    #   the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only notebook instances that were modified
    #   before the specified time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only notebook instances that were modified after
    #   the specified time (timestamp).
    #
    # @option params [String] :status_equals
    #   A filter that returns only notebook instances with the specified
    #   status.
    #
    # @option params [String] :notebook_instance_lifecycle_config_name_contains
    #   A string in the name of a notebook instances lifecycle configuration
    #   associated with this notebook instance. This filter returns only
    #   notebook instances associated with a lifecycle configuration with a
    #   name that contains the specified string.
    #
    # @return [Types::ListNotebookInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookInstancesOutput#next_token #next_token} => String
    #   * {Types::ListNotebookInstancesOutput#notebook_instances #notebook_instances} => Array&lt;Types::NotebookInstanceSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_instances({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     name_contains: "NotebookInstanceNameContains",
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     status_equals: "Pending", # accepts Pending, InService, Stopping, Stopped, Failed, Deleting
    #     notebook_instance_lifecycle_config_name_contains: "NotebookInstanceLifecycleConfigName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.notebook_instances #=> Array
    #   resp.notebook_instances[0].notebook_instance_name #=> String
    #   resp.notebook_instances[0].notebook_instance_arn #=> String
    #   resp.notebook_instances[0].notebook_instance_status #=> String, one of "Pending", "InService", "Stopping", "Stopped", "Failed", "Deleting"
    #   resp.notebook_instances[0].url #=> String
    #   resp.notebook_instances[0].instance_type #=> String, one of "ml.t2.medium", "ml.m4.xlarge", "ml.p2.xlarge", "ml.p3.2xlarge"
    #   resp.notebook_instances[0].creation_time #=> Time
    #   resp.notebook_instances[0].last_modified_time #=> Time
    #   resp.notebook_instances[0].notebook_instance_lifecycle_config_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListNotebookInstances AWS API Documentation
    #
    # @overload list_notebook_instances(params = {})
    # @param [Hash] params ({})
    def list_notebook_instances(params = {}, options = {})
      req = build_request(:list_notebook_instances, params)
      req.send_request(options)
    end

    # Returns the tags for the specified Amazon SageMaker resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   If the response to the previous `ListTags` request is truncated,
    #   Amazon SageMaker returns this token. To retrieve the next set of tags,
    #   use it in the subsequent request.
    #
    # @option params [Integer] :max_results
    #   Maximum number of tags to return.
    #
    # @return [Types::ListTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Lists training jobs.
    #
    # @option params [String] :next_token
    #   If the result of the previous `ListTrainingJobs` request was
    #   truncated, the response includes a `NextToken`. To retrieve the next
    #   set of training jobs, use the token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of training jobs to return in the response.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that only training jobs created after the specified time
    #   (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns only training jobs created before the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_after
    #   A filter that returns only training jobs modified after the specified
    #   time (timestamp).
    #
    # @option params [Time,DateTime,Date,Integer,String] :last_modified_time_before
    #   A filter that returns only training jobs modified before the specified
    #   time (timestamp).
    #
    # @option params [String] :name_contains
    #   A string in the training job name. This filter returns only models
    #   whose name contains the specified string.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only training jobs with a specific status.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. The default is `CreationTime`.
    #
    # @option params [String] :sort_order
    #   The sort order for results. The default is `Ascending`.
    #
    # @return [Types::ListTrainingJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrainingJobsResponse#training_job_summaries #training_job_summaries} => Array&lt;Types::TrainingJobSummary&gt;
    #   * {Types::ListTrainingJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_training_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     last_modified_time_after: Time.now,
    #     last_modified_time_before: Time.now,
    #     name_contains: "NameContains",
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     sort_by: "Name", # accepts Name, CreationTime, Status
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.training_job_summaries #=> Array
    #   resp.training_job_summaries[0].training_job_name #=> String
    #   resp.training_job_summaries[0].training_job_arn #=> String
    #   resp.training_job_summaries[0].creation_time #=> Time
    #   resp.training_job_summaries[0].training_end_time #=> Time
    #   resp.training_job_summaries[0].last_modified_time #=> Time
    #   resp.training_job_summaries[0].training_job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/ListTrainingJobs AWS API Documentation
    #
    # @overload list_training_jobs(params = {})
    # @param [Hash] params ({})
    def list_training_jobs(params = {}, options = {})
      req = build_request(:list_training_jobs, params)
      req.send_request(options)
    end

    # Launches an ML compute instance with the latest version of the
    # libraries and attaches your ML storage volume. After configuring the
    # notebook instance, Amazon SageMaker sets the notebook instance status
    # to `InService`. A notebook instance's status must be `InService`
    # before you can connect to your Jupyter notebook.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to start.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StartNotebookInstance AWS API Documentation
    #
    # @overload start_notebook_instance(params = {})
    # @param [Hash] params ({})
    def start_notebook_instance(params = {}, options = {})
      req = build_request(:start_notebook_instance, params)
      req.send_request(options)
    end

    # Terminates the ML compute instance. Before terminating the instance,
    # Amazon SageMaker disconnects the ML storage volume from it. Amazon
    # SageMaker preserves the ML storage volume.
    #
    # To access data on the ML storage volume for a notebook instance that
    # has been terminated, call the `StartNotebookInstance` API.
    # `StartNotebookInstance` launches another ML compute instance,
    # configures it, and attaches the preserved ML storage volume so you can
    # continue your work.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to terminate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopNotebookInstance AWS API Documentation
    #
    # @overload stop_notebook_instance(params = {})
    # @param [Hash] params ({})
    def stop_notebook_instance(params = {}, options = {})
      req = build_request(:stop_notebook_instance, params)
      req.send_request(options)
    end

    # Stops a training job. To stop a job, Amazon SageMaker sends the
    # algorithm the `SIGTERM` signal, which delays job termination for 120
    # seconds. Algorithms might use this 120-second window to save the model
    # artifacts, so the results of the training is not lost.
    #
    # Training algorithms provided by Amazon SageMaker save the intermediate
    # results of a model training job. This intermediate data is a valid
    # model artifact. You can use the model artifacts that are saved when
    # Amazon SageMaker stops a training job to create a model.
    #
    # When it receives a `StopTrainingJob` request, Amazon SageMaker changes
    # the status of the job to `Stopping`. After Amazon SageMaker stops the
    # job, it sets the status to `Stopped`.
    #
    # @option params [required, String] :training_job_name
    #   The name of the training job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_job({
    #     training_job_name: "TrainingJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/StopTrainingJob AWS API Documentation
    #
    # @overload stop_training_job(params = {})
    # @param [Hash] params ({})
    def stop_training_job(params = {}, options = {})
      req = build_request(:stop_training_job, params)
      req.send_request(options)
    end

    # Deploys the new `EndpointConfig` specified in the request, switches to
    # using newly created endpoint, and then deletes resources provisioned
    # for the endpoint using the previous `EndpointConfig` (there is no
    # availability loss).
    #
    # When Amazon SageMaker receives the request, it sets the endpoint
    # status to `Updating`. After updating the endpoint, it sets the status
    # to `InService`. To check the status of an endpoint, use the
    # [DescribeEndpoint][1] API.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint whose configuration you want to update.
    #
    # @option params [required, String] :endpoint_config_name
    #   The name of the new endpoint configuration.
    #
    # @return [Types::UpdateEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint({
    #     endpoint_name: "EndpointName", # required
    #     endpoint_config_name: "EndpointConfigName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpoint AWS API Documentation
    #
    # @overload update_endpoint(params = {})
    # @param [Hash] params ({})
    def update_endpoint(params = {}, options = {})
      req = build_request(:update_endpoint, params)
      req.send_request(options)
    end

    # Updates variant weight of one or more variants associated with an
    # existing endpoint, or capacity of one variant associated with an
    # existing endpoint. When it receives the request, Amazon SageMaker sets
    # the endpoint status to `Updating`. After updating the endpoint, it
    # sets the status to `InService`. To check the status of an endpoint,
    # use the [DescribeEndpoint][1] API.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sagemaker/latest/dg/API_DescribeEndpoint.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of an existing Amazon SageMaker endpoint.
    #
    # @option params [required, Array<Types::DesiredWeightAndCapacity>] :desired_weights_and_capacities
    #   An object that provides new capacity and weight values for a variant.
    #
    # @return [Types::UpdateEndpointWeightsAndCapacitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEndpointWeightsAndCapacitiesOutput#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint_weights_and_capacities({
    #     endpoint_name: "EndpointName", # required
    #     desired_weights_and_capacities: [ # required
    #       {
    #         variant_name: "VariantName", # required
    #         desired_weight: 1.0,
    #         desired_instance_count: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateEndpointWeightsAndCapacities AWS API Documentation
    #
    # @overload update_endpoint_weights_and_capacities(params = {})
    # @param [Hash] params ({})
    def update_endpoint_weights_and_capacities(params = {}, options = {})
      req = build_request(:update_endpoint_weights_and_capacities, params)
      req.send_request(options)
    end

    # Updates a notebook instance. NotebookInstance updates include
    # upgrading or downgrading the ML compute instance used for your
    # notebook instance to accommodate changes in your workload
    # requirements. You can also update the VPC security groups.
    #
    # @option params [required, String] :notebook_instance_name
    #   The name of the notebook instance to update.
    #
    # @option params [String] :instance_type
    #   The Amazon ML compute instance type.
    #
    # @option params [String] :role_arn
    #   Amazon Resource Name (ARN) of the IAM role to associate with the
    #   instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notebook_instance({
    #     notebook_instance_name: "NotebookInstanceName", # required
    #     instance_type: "ml.t2.medium", # accepts ml.t2.medium, ml.m4.xlarge, ml.p2.xlarge, ml.p3.2xlarge
    #     role_arn: "RoleArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstance AWS API Documentation
    #
    # @overload update_notebook_instance(params = {})
    # @param [Hash] params ({})
    def update_notebook_instance(params = {}, options = {})
      req = build_request(:update_notebook_instance, params)
      req.send_request(options)
    end

    # Updates a notebook instance lifecycle configuration created with the
    # API.
    #
    # @option params [required, String] :notebook_instance_lifecycle_config_name
    #   The name of the lifecycle configuration.
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_create
    #   The shell script that runs only once, when you create a notebook
    #   instance
    #
    # @option params [Array<Types::NotebookInstanceLifecycleHook>] :on_start
    #   The shell script that runs every time you start a notebook instance,
    #   including when you create the notebook instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_notebook_instance_lifecycle_config({
    #     notebook_instance_lifecycle_config_name: "NotebookInstanceLifecycleConfigName", # required
    #     on_create: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #     on_start: [
    #       {
    #         content: "NotebookInstanceLifecycleConfigContent",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-2017-07-24/UpdateNotebookInstanceLifecycleConfig AWS API Documentation
    #
    # @overload update_notebook_instance_lifecycle_config(params = {})
    # @param [Hash] params ({})
    def update_notebook_instance_lifecycle_config(params = {}, options = {})
      req = build_request(:update_notebook_instance_lifecycle_config, params)
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
      context[:gem_name] = 'aws-sdk-sagemaker'
      context[:gem_version] = '1.6.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                       | params                        | :delay   | :max_attempts |
    # | --------------------------------- | ----------------------------- | -------- | ------------- |
    # | endpoint_deleted                  | {#describe_endpoint}          | 30       | 60            |
    # | endpoint_in_service               | {#describe_endpoint}          | 30       | 120           |
    # | notebook_instance_deleted         | {#describe_notebook_instance} | 30       | 60            |
    # | notebook_instance_in_service      | {#describe_notebook_instance} | 30       | 60            |
    # | notebook_instance_stopped         | {#describe_notebook_instance} | 30       | 60            |
    # | training_job_completed_or_stopped | {#describe_training_job}      | 120      | 180           |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
      {
        endpoint_deleted: Waiters::EndpointDeleted,
        endpoint_in_service: Waiters::EndpointInService,
        notebook_instance_deleted: Waiters::NotebookInstanceDeleted,
        notebook_instance_in_service: Waiters::NotebookInstanceInService,
        notebook_instance_stopped: Waiters::NotebookInstanceStopped,
        training_job_completed_or_stopped: Waiters::TrainingJobCompletedOrStopped
      }
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
