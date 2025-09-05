# frozen_string_literal: true

# This is generated code!

module Aws::AppRunner
  # This module contains the types returned by client operations.
  module Types

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to associate a custom domain name with.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>A custom domain endpoint to associate. Specify a root domain (for example, <code>example.com</code>), a subdomain (for example,
    #           <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>
    #   @return [String]
    # @!attribute enable_www_subdomain
    #   <p>Set to <code>true</code> to associate the subdomain <code>www.<i>DomainName</i>
    #               </code> with the App Runner service in addition to the base
    #         domain.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    class AssociateCustomDomainRequest < Struct.new(
      :service_arn,
      :domain_name,
      :enable_www_subdomain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_target
    #   <p>The App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service with which a custom domain name is associated.</p>
    #   @return [String]
    # @!attribute custom_domain
    #   <p>A description of the domain name that's being associated.</p>
    #   @return [Types::CustomDomain]
    # @!attribute vpc_dns_targets
    #   <p>DNS Target records for the custom domains of this Amazon VPC.
    #       </p>
    #   @return [Array<Types::VpcDNSTarget>]
    class AssociateCustomDomainResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domain,
      :vpc_dns_targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes resources needed to authenticate access to some source repositories. The specific resource depends on the repository provider.</p>
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner connection that enables the App Runner service to connect to a source repository. It's required for GitHub code
    #         repositories.</p>
    #   @return [String]
    # @!attribute access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants the App Runner service access to a source repository. It's required for ECR image repositories
    #         (but not for ECR Public repositories).</p>
    #   @return [String]
    class AuthenticationConfiguration < Struct.new(
      :connection_arn,
      :access_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an App Runner automatic scaling configuration resource.</p>
    #          <p>A higher <code>MinSize</code> increases the spread of your App Runner service over more Availability Zones in the Amazon Web Services Region. The tradeoff is a higher
    #       minimal cost.</p>
    #          <p>A lower <code>MaxSize</code> controls your cost. The tradeoff is lower responsiveness during peak demand.</p>
    #          <p>Multiple revisions of a configuration might have the same <code>AutoScalingConfigurationName</code> and different
    #         <code>AutoScalingConfigurationRevision</code> values.</p>
    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>
    #   @return [String]
    # @!attribute auto_scaling_configuration_name
    #   <p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>
    #   @return [String]
    # @!attribute auto_scaling_configuration_revision
    #   <p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>"Status": "ACTIVE"</code>) that share the same
    #           <code>AutoScalingConfigurationName</code>.</p>
    #   @return [Integer]
    # @!attribute latest
    #   <p>It's set to <code>true</code> for the configuration with the highest <code>Revision</code> among all configurations that share the same
    #           <code>AutoScalingConfigurationName</code>. It's set to <code>false</code> otherwise.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current state of the auto scaling configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be
    #         used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>
    #   @return [String]
    # @!attribute max_concurrency
    #   <p>The maximum number of concurrent requests that an instance processes. If the number of concurrent requests exceeds this limit, App Runner scales the service
    #         up.</p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>The minimum number of instances that App Runner provisions for a service. The service always has at least <code>MinSize</code> provisioned instances. Some
    #         of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to be
    #         quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
    #            <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum number of instances that a service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The time when the auto scaling configuration was created. It's in Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The time when the auto scaling configuration was deleted. It's in Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute has_associated_service
    #   <p>Indicates if this auto scaling configuration has an App Runner service associated with it. A value of <code>true</code> indicates one or more services are
    #         associated. A value of <code>false</code> indicates no services are associated.</p>
    #   @return [Boolean]
    # @!attribute is_default
    #   <p>Indicates if this auto scaling configuration should be used as the default for a new App Runner service that does not have an
    #         auto scaling configuration ARN specified during creation. Each account can have only one
    #         default <code>AutoScalingConfiguration</code> per region. The default <code>AutoScalingConfiguration</code> can be any revision under 
    #         the same <code>AutoScalingConfigurationName</code>.</p>
    #   @return [Boolean]
    class AutoScalingConfiguration < Struct.new(
      :auto_scaling_configuration_arn,
      :auto_scaling_configuration_name,
      :auto_scaling_configuration_revision,
      :latest,
      :status,
      :max_concurrency,
      :min_size,
      :max_size,
      :created_at,
      :deleted_at,
      :has_associated_service,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an App Runner automatic scaling configuration resource.</p>
    #          <p>This type contains limited information about an auto scaling configuration. It includes only identification information, without configuration
    #       details. It's returned by the <a>ListAutoScalingConfigurations</a> action. Complete configuration information is returned by the <a>CreateAutoScalingConfiguration</a>, <a>DescribeAutoScalingConfiguration</a>, and <a>DeleteAutoScalingConfiguration</a>
    #       actions using the <a>AutoScalingConfiguration</a> type.</p>
    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of this auto scaling configuration.</p>
    #   @return [String]
    # @!attribute auto_scaling_configuration_name
    #   <p>The customer-provided auto scaling configuration name. It can be used in multiple revisions of a configuration.</p>
    #   @return [String]
    # @!attribute auto_scaling_configuration_revision
    #   <p>The revision of this auto scaling configuration. It's unique among all the active configurations (<code>"Status": "ACTIVE"</code>) with the same
    #           <code>AutoScalingConfigurationName</code>.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current state of the auto scaling configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be
    #         used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the auto scaling configuration was created. It's in Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute has_associated_service
    #   <p>Indicates if this auto scaling configuration has an App Runner service associated with it. A value of <code>true</code> indicates one or more services are
    #         associated. A value of <code>false</code> indicates no services are associated.</p>
    #   @return [Boolean]
    # @!attribute is_default
    #   <p>Indicates if this auto scaling configuration should be used as the default for a new App Runner service that does not have an
    #         auto scaling configuration ARN specified during creation. Each account can have only one
    #         default <code>AutoScalingConfiguration</code> per region. The default <code>AutoScalingConfiguration</code> can be any revision under 
    #         the same <code>AutoScalingConfigurationName</code>.</p>
    #   @return [Boolean]
    class AutoScalingConfigurationSummary < Struct.new(
      :auto_scaling_configuration_arn,
      :auto_scaling_configuration_name,
      :auto_scaling_configuration_revision,
      :status,
      :created_at,
      :has_associated_service,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_scaling_configuration_revision] = 0 unless options.key?(:auto_scaling_configuration_revision)
        super
      end
    end

    # <p>Describes a certificate CNAME record to add to your DNS. For more information, see <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_AssociateCustomDomain.html">AssociateCustomDomain</a>.</p>
    # @!attribute name
    #   <p>The certificate CNAME record name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The record type, always <code>CNAME</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The certificate CNAME record value.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the certificate CNAME record validation. It should change to <code>SUCCESS</code> after App Runner completes validation with your
    #         DNS.</p>
    #   @return [String]
    class CertificateValidationRecord < Struct.new(
      :name,
      :type,
      :value,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration that App Runner uses to build and run an App Runner service from a source code repository.</p>
    # @!attribute configuration_source
    #   <p>The source of the App Runner configuration. Values are interpreted as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPOSITORY</code> – App Runner reads configuration values from the <code>apprunner.yaml</code> file in the source code repository and
    #             ignores <code>CodeConfigurationValues</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>API</code> – App Runner uses configuration values provided in <code>CodeConfigurationValues</code> and ignores the
    #               <code>apprunner.yaml</code> file in the source code repository.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute code_configuration_values
    #   <p>The basic configuration for building and running the App Runner service. Use it to quickly launch an App Runner service without providing a
    #           <code>apprunner.yaml</code> file in the source code repository (or ignoring the file if it exists).</p>
    #   @return [Types::CodeConfigurationValues]
    class CodeConfiguration < Struct.new(
      :configuration_source,
      :code_configuration_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the basic configuration needed for building and running an App Runner service. This type doesn't support the full set of possible
    #       configuration options. Fur full configuration capabilities, use a <code>apprunner.yaml</code> file in the source code repository.</p>
    # @!attribute runtime
    #   <p>A runtime environment type for building and running an App Runner service.
    #          It represents a
    #         programming language runtime.</p>
    #   @return [String]
    # @!attribute build_command
    #   <p>The command App Runner runs to build your
    #         application.</p>
    #   @return [String]
    # @!attribute start_command
    #   <p>The command App Runner runs to start your
    #         application.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port that your application listens to in the container.</p>
    #            <p>Default: <code>8080</code>
    #            </p>
    #   @return [String]
    # @!attribute runtime_environment_variables
    #   <p>The environment variables that are available to your running App Runner service. An array of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute runtime_environment_secrets
    #   <p>An array of key-value pairs representing the secrets and parameters that get referenced to your service as an environment variable. The supported
    #         values are either the full Amazon Resource Name (ARN) of the Secrets Manager secret or the full ARN of the parameter in the Amazon Web Services Systems Manager
    #         Parameter Store.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p> If the Amazon Web Services Systems Manager Parameter Store parameter exists in the same Amazon Web Services Region as the service that you're launching, you can use
    #               either the full ARN or name of the secret. If the parameter exists in a different Region, then the full ARN must be specified. </p>
    #                  </li>
    #                  <li>
    #                     <p> Currently, cross account referencing of Amazon Web Services Systems Manager Parameter Store parameter is not supported. </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class CodeConfigurationValues < Struct.new(
      :runtime,
      :build_command,
      :start_command,
      :port,
      :runtime_environment_variables,
      :runtime_environment_secrets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a source code repository.</p>
    # @!attribute repository_url
    #   <p>The location of the repository that contains the source code.</p>
    #   @return [String]
    # @!attribute source_code_version
    #   <p>The version that should be used within the source code repository.</p>
    #   @return [Types::SourceCodeVersion]
    # @!attribute code_configuration
    #   <p>Configuration for building and running the service from a source code repository.</p>
    #            <note>
    #               <p>
    #                  <code>CodeConfiguration</code> is required only for <code>CreateService</code> request.</p>
    #            </note>
    #   @return [Types::CodeConfiguration]
    # @!attribute source_directory
    #   <p>The path of the directory that stores source code and configuration files. The build and start commands also execute from here. The path is absolute
    #         from root and, if not specified, defaults to the repository root.</p>
    #   @return [String]
    class CodeRepository < Struct.new(
      :repository_url,
      :source_code_version,
      :code_configuration,
      :source_directory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an App Runner connection resource.</p>
    # @!attribute connection_name
    #   <p>The customer-provided connection name.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of this connection.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The source repository provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The App Runner connection creation time, expressed as a Unix time stamp.</p>
    #   @return [Time]
    class Connection < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :status,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an App Runner connection resource.</p>
    # @!attribute connection_name
    #   <p>The customer-provided connection name.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of this connection.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The source repository provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the App Runner connection. When the state is <code>AVAILABLE</code>, you can use the connection to create an App Runner service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The App Runner connection creation time, expressed as a Unix time stamp.</p>
    #   @return [Time]
    class ConnectionSummary < Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :status,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_name
    #   <p>A name for the auto scaling configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number
    #           <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>Prior to the release of <a href="https://docs.aws.amazon.com/apprunner/latest/relnotes/release-2023-09-22-auto-scale-config.html">Auto scale
    #           configuration enhancements</a>, the name <code>DefaultConfiguration</code> was reserved. </p>
    #               <p>This restriction is no longer in place. You can now manage <code>DefaultConfiguration</code> the same way you manage your custom auto scaling
    #           configurations. This means you can do the following with the <code>DefaultConfiguration</code> that App Runner provides:</p>
    #               <ul>
    #                  <li>
    #                     <p>Create new revisions of the <code>DefaultConfiguration</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>Delete the revisions of the <code>DefaultConfiguration</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>Delete the auto scaling configuration for which the App Runner <code>DefaultConfiguration</code> was created.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you delete the auto scaling configuration you can create another custom auto scaling configuration with the same
    #                 <code>DefaultConfiguration</code> name. The original <code>DefaultConfiguration</code> resource provided by App Runner remains in your account unless
    #               you make changes to it.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute max_concurrency
    #   <p>The maximum number of concurrent requests that you want an instance to process. If the number of concurrent requests exceeds this limit, App Runner scales
    #         up your service.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute min_size
    #   <p>The minimum number of instances that App Runner provisions for your service. The service always has at least <code>MinSize</code> provisioned instances.
    #         Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to
    #         be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
    #            <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #   @return [Integer]
    # @!attribute max_size
    #   <p>The maximum number of instances that your service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>
    #            <p>Default: <code>25</code>
    #            </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_name,
      :max_concurrency,
      :min_size,
      :max_size,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration
    #   <p>A description of the App Runner auto scaling configuration that's created by this request.</p>
    #   @return [Types::AutoScalingConfiguration]
    class CreateAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>A name for the new connection. It must be unique across all App Runner connections for the Amazon Web Services account in the Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The source repository provider.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of metadata items that you can associate with your connection resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateConnectionRequest < Struct.new(
      :connection_name,
      :provider_type,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>A description of the App Runner connection that's created by this request.</p>
    #   @return [Types::Connection]
    class CreateConnectionResponse < Struct.new(
      :connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration_name
    #   <p>A name for the observability configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number
    #           <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>The name <code>DefaultConfiguration</code> is reserved. You can't use it to create a new observability configuration, and you can't create a
    #           revision of it.</p>
    #               <p>When you want to use your own observability configuration for your App Runner service, <i>create a configuration with a different name</i>,
    #           and then provide it when you create or update your service.</p>
    #            </note>
    #   @return [String]
    # @!attribute trace_configuration
    #   <p>The configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing.</p>
    #   @return [Types::TraceConfiguration]
    # @!attribute tags
    #   <p>A list of metadata items that you can associate with your observability configuration resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_name,
      :trace_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration
    #   <p>A description of the App Runner observability configuration that's created by this request.</p>
    #   @return [Types::ObservabilityConfiguration]
    class CreateObservabilityConfigurationResponse < Struct.new(
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>A name for the App Runner service. It must be unique across all the running App Runner services in your Amazon Web Services account in the Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>The source to deploy to the App Runner service. It can be a code or an image repository.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute instance_configuration
    #   <p>The runtime configuration of instances (scaling units) of your service.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the App Runner service resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute encryption_configuration
    #   <p>An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default,
    #         App Runner uses an Amazon Web Services managed key.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    #   @return [Types::HealthCheckConfiguration]
    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner
    #         associates the latest revision of a default auto scaling configuration.</p>
    #            <p>Specify an ARN with a name and a revision number to associate that revision. For example:
    #             <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3</code>
    #            </p>
    #            <p>Specify just the name to associate the latest revision. For example:
    #           <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability</code>
    #            </p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute observability_configuration
    #   <p>The observability configuration of your service.</p>
    #   @return [Types::ServiceObservabilityConfiguration]
    class CreateServiceRequest < Struct.new(
      :service_name,
      :source_configuration,
      :instance_configuration,
      :tags,
      :encryption_configuration,
      :health_check_configuration,
      :auto_scaling_configuration_arn,
      :network_configuration,
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A description of the App Runner service that's created by this request.</p>
    #   @return [Types::Service]
    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html">ListOperations</a> call to track the operation's progress.</p>
    #   @return [String]
    class CreateServiceResponse < Struct.new(
      :service,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector_name
    #   <p>A name for the VPC connector.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single
    #           Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.</p>
    #            <note>
    #               <p>
    #           App Runner currently only provides support for IPv4.
    #         </p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>A list of IDs of security groups that App Runner should use for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the
    #         default security group of the Amazon VPC. The default security group allows all outbound traffic.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateVpcConnectorRequest < Struct.new(
      :vpc_connector_name,
      :subnets,
      :security_groups,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector
    #   <p>A description of the App Runner VPC connector that's created by this request.</p>
    #   @return [Types::VpcConnector]
    class CreateVpcConnectorResponse < Struct.new(
      :vpc_connector,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.</p>
    #   @return [String]
    # @!attribute vpc_ingress_connection_name
    #   <p>A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your Amazon Web Services account in the Amazon Web Services Region.
    #       </p>
    #   @return [String]
    # @!attribute ingress_vpc_configuration
    #   <p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to create the VPC Ingress Connection
    #         resource.</p>
    #   @return [Types::IngressVpcConfiguration]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the VPC Ingress Connection resource. A tag is a key-value pair.</p>
    #   @return [Array<Types::Tag>]
    class CreateVpcIngressConnectionRequest < Struct.new(
      :service_arn,
      :vpc_ingress_connection_name,
      :ingress_vpc_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection
    #   <p>A description of the App Runner VPC Ingress Connection resource that's created by this request. </p>
    #   @return [Types::VpcIngressConnection]
    class CreateVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom domain that's associated with an App Runner service.</p>
    # @!attribute domain_name
    #   <p>An associated custom domain endpoint. It can be a root domain (for example, <code>example.com</code>), a subdomain (for example,
    #           <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>
    #   @return [String]
    # @!attribute enable_www_subdomain
    #   <p>When <code>true</code>, the subdomain <code>www.<i>DomainName</i>
    #               </code> is associated with the App Runner service in addition to the base
    #         domain.</p>
    #   @return [Boolean]
    # @!attribute certificate_validation_records
    #   <p>A list of certificate CNAME records that's used for this domain name.</p>
    #   @return [Array<Types::CertificateValidationRecord>]
    # @!attribute status
    #   <p>The current state of the domain name association.</p>
    #   @return [String]
    class CustomDomain < Struct.new(
      :domain_name,
      :enable_www_subdomain,
      :certificate_validation_records,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to delete.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    #   @return [String]
    # @!attribute delete_all_revisions
    #   <p>Set to <code>true</code> to delete all of the revisions associated with the <code>AutoScalingConfigurationArn</code> parameter value.</p>
    #            <p>When <code>DeleteAllRevisions</code> is set to <code>true</code>, the only valid value for the Amazon Resource Name (ARN) is a partial ARN ending
    #         with: <code>.../name</code>.</p>
    #   @return [Boolean]
    class DeleteAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn,
      :delete_all_revisions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration
    #   <p>A description of the App Runner auto scaling configuration that this request just deleted.</p>
    #   @return [Types::AutoScalingConfiguration]
    class DeleteAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner connection that you want to delete.</p>
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      :connection_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection
    #   <p>A description of the App Runner connection that this request just deleted.</p>
    #   @return [Types::Connection]
    class DeleteConnectionResponse < Struct.new(
      :connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want to delete.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    #   @return [String]
    class DeleteObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration
    #   <p>A description of the App Runner observability configuration that this request just deleted.</p>
    #   @return [Types::ObservabilityConfiguration]
    class DeleteObservabilityConfigurationResponse < Struct.new(
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to delete.</p>
    #   @return [String]
    class DeleteServiceRequest < Struct.new(
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A description of the App Runner service that this request just deleted.</p>
    #   @return [Types::Service]
    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
    #         the operation's progress.</p>
    #   @return [String]
    class DeleteServiceResponse < Struct.new(
      :service,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to delete.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    #   @return [String]
    class DeleteVpcConnectorRequest < Struct.new(
      :vpc_connector_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector
    #   <p>A description of the App Runner VPC connector that this request just deleted.</p>
    #   @return [Types::VpcConnector]
    class DeleteVpcConnectorResponse < Struct.new(
      :vpc_connector,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want to delete.</p>
    #   @return [String]
    class DeleteVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection
    #   <p>A description of the App Runner VPC Ingress Connection that this request just deleted.</p>
    #   @return [Types::VpcIngressConnection]
    class DeleteVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want a description for.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    #   @return [String]
    class DescribeAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration
    #   <p>A full description of the App Runner auto scaling configuration that you specified in this request.</p>
    #   @return [Types::AutoScalingConfiguration]
    class DescribeAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want associated custom domain names to be described for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that each response (result page) can include. It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    class DescribeCustomDomainsRequest < Struct.new(
      :service_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_target
    #   <p>The App Runner subdomain of the App Runner service. The associated custom domain names are mapped to this target name.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service whose associated custom domain names you want to describe.</p>
    #   @return [String]
    # @!attribute custom_domains
    #   <p>A list of descriptions of custom domain names that are associated with the service. In a paginated request, the request returns up to
    #           <code>MaxResults</code> records per call.</p>
    #   @return [Array<Types::CustomDomain>]
    # @!attribute vpc_dns_targets
    #   <p>DNS Target records for the custom domains of this Amazon VPC.
    #         </p>
    #   @return [Array<Types::VpcDNSTarget>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class DescribeCustomDomainsResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domains,
      :vpc_dns_targets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want a description for.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    #   @return [String]
    class DescribeObservabilityConfigurationRequest < Struct.new(
      :observability_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration
    #   <p>A full description of the App Runner observability configuration that you specified in this request.</p>
    #   @return [Types::ObservabilityConfiguration]
    class DescribeObservabilityConfigurationResponse < Struct.new(
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a description for.</p>
    #   @return [String]
    class DescribeServiceRequest < Struct.new(
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A full description of the App Runner service that you specified in this request.</p>
    #   @return [Types::Service]
    class DescribeServiceResponse < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want a description for.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    #   @return [String]
    class DescribeVpcConnectorRequest < Struct.new(
      :vpc_connector_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connector
    #   <p>A description of the App Runner VPC connector that you specified in this request.</p>
    #   @return [Types::VpcConnector]
    class DescribeVpcConnectorResponse < Struct.new(
      :vpc_connector,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC Ingress Connection that you want a description for.</p>
    #   @return [String]
    class DescribeVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection
    #   <p>A description of the App Runner VPC Ingress Connection that you specified in this request.</p>
    #   @return [Types::VpcIngressConnection]
    class DescribeVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to disassociate a custom domain name from.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name that you want to disassociate from the App Runner service.</p>
    #   @return [String]
    class DisassociateCustomDomainRequest < Struct.new(
      :service_arn,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_target
    #   <p>The App Runner subdomain of the App Runner service. The disassociated custom domain name was mapped to this target name.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that a custom domain name is disassociated from.</p>
    #   @return [String]
    # @!attribute custom_domain
    #   <p>A description of the domain name that's being disassociated.</p>
    #   @return [Types::CustomDomain]
    # @!attribute vpc_dns_targets
    #   <p>DNS Target records for the custom domains of this Amazon VPC.
    #         </p>
    #   @return [Array<Types::VpcDNSTarget>]
    class DisassociateCustomDomainResponse < Struct.new(
      :dns_target,
      :service_arn,
      :custom_domain,
      :vpc_dns_targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes configuration settings related to outbound network traffic of an App Runner service.</p>
    # @!attribute egress_type
    #   <p>The type of egress configuration.</p>
    #            <p>Set to <code>DEFAULT</code> for access to resources hosted on public networks.</p>
    #            <p>Set to <code>VPC</code> to associate your service to a custom VPC specified by <code>VpcConnectorArn</code>.</p>
    #   @return [String]
    # @!attribute vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when <code>EgressType =
    #           VPC</code>.</p>
    #   @return [String]
    class EgressConfiguration < Struct.new(
      :egress_type,
      :vpc_connector_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom encryption key that App Runner uses to encrypt copies of the source repository and service logs.</p>
    # @!attribute kms_key
    #   <p>The ARN of the KMS key that's used for encryption.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :kms_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for the health check that App Runner performs to monitor the health of a service.</p>
    # @!attribute protocol
    #   <p>The IP protocol that App Runner uses to perform health checks for your service.</p>
    #            <p>If you set <code>Protocol</code> to <code>HTTP</code>, App Runner sends health check requests to the HTTP path specified by <code>Path</code>.</p>
    #            <p>Default: <code>TCP</code>
    #            </p>
    #   @return [String]
    # @!attribute path
    #   <p>The URL that health check requests are sent to.</p>
    #            <p>
    #               <code>Path</code> is only applicable when you set <code>Protocol</code> to <code>HTTP</code>.</p>
    #            <p>Default: <code>"/"</code>
    #            </p>
    #   @return [String]
    # @!attribute interval
    #   <p>The time interval, in seconds, between health checks.</p>
    #            <p>Default: <code>5</code>
    #            </p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The time, in seconds, to wait for a health check response before deciding it failed.</p>
    #            <p>Default: <code>2</code>
    #            </p>
    #   @return [Integer]
    # @!attribute healthy_threshold
    #   <p>The number of consecutive checks that must succeed before App Runner decides that the service is healthy.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive checks that must fail before App Runner decides that the service is unhealthy.</p>
    #            <p>Default: <code>5</code>
    #            </p>
    #   @return [Integer]
    class HealthCheckConfiguration < Struct.new(
      :protocol,
      :path,
      :interval,
      :timeout,
      :healthy_threshold,
      :unhealthy_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration that App Runner uses to run an App Runner service using an image pulled from a source image repository.</p>
    # @!attribute runtime_environment_variables
    #   <p>Environment variables that are available to your running App Runner service. An array of key-value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute start_command
    #   <p>An optional command that App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start
    #         command.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port that your application listens to in the container.</p>
    #            <p>Default: <code>8080</code>
    #            </p>
    #   @return [String]
    # @!attribute runtime_environment_secrets
    #   <p>An array of key-value pairs representing the secrets and parameters that get referenced to your service as an environment variable. The supported
    #         values are either the full Amazon Resource Name (ARN) of the Secrets Manager secret or the full ARN of the parameter in the Amazon Web Services Systems Manager
    #         Parameter Store.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p> If the Amazon Web Services Systems Manager Parameter Store parameter exists in the same Amazon Web Services Region as the service that you're launching, you can use
    #               either the full ARN or name of the secret. If the parameter exists in a different Region, then the full ARN must be specified. </p>
    #                  </li>
    #                  <li>
    #                     <p> Currently, cross account referencing of Amazon Web Services Systems Manager Parameter Store parameter is not supported. </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Hash<String, String>]
    class ImageConfiguration < Struct.new(
      :runtime_environment_variables,
      :start_command,
      :port,
      :runtime_environment_secrets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a source image repository.</p>
    # @!attribute image_identifier
    #   <p>The identifier of an image.</p>
    #            <p>For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the image name format, see <a href="https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html">Pulling an image</a> in the <i>Amazon ECR User Guide</i>.</p>
    #   @return [String]
    # @!attribute image_configuration
    #   <p>Configuration for running the identified image.</p>
    #   @return [Types::ImageConfiguration]
    # @!attribute image_repository_type
    #   <p>The type of the image repository. This reflects the repository provider and whether the repository is private or public.</p>
    #   @return [String]
    class ImageRepository < Struct.new(
      :image_identifier,
      :image_configuration,
      :image_repository_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Network configuration settings for inbound network traffic.</p>
    # @!attribute is_publicly_accessible
    #   <p>Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to <code>True</code>. To make the service
    #         privately accessible, from only within an Amazon VPC set it to <code>False</code>. </p>
    #   @return [Boolean]
    class IngressConfiguration < Struct.new(
      :is_publicly_accessible,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_publicly_accessible] = false unless options.key?(:is_publicly_accessible)
        super
      end
    end

    # <p>The configuration of your VPC and the associated VPC endpoint. The VPC endpoint is an Amazon Web Services PrivateLink resource that allows access to your App Runner
    #       services from within an Amazon VPC.</p>
    # @!attribute vpc_id
    #   <p>The ID of the VPC that is used for the VPC endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint that your App Runner service connects to.
    #       </p>
    #   @return [String]
    class IngressVpcConfiguration < Struct.new(
      :vpc_id,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the runtime configuration of an App Runner service instance (scaling unit).</p>
    # @!attribute cpu
    #   <p>The number of CPU units reserved for each instance of your App Runner service.</p>
    #            <p>Default: <code>1 vCPU</code>
    #            </p>
    #   @return [String]
    # @!attribute memory
    #   <p>The amount of memory, in MB or GB, reserved for each instance of your App Runner service.</p>
    #            <p>Default: <code>2 GB</code>
    #            </p>
    #   @return [String]
    # @!attribute instance_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls
    #         any Amazon Web Services APIs.</p>
    #   @return [String]
    class InstanceConfiguration < Struct.new(
      :cpu,
      :memory,
      :instance_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected service exception occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more input parameters aren't valid. Refer to the API action's document page, correct the input parameters, and try the action again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can't perform this action when the resource is in its current state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_name
    #   <p>The name of the App Runner auto scaling configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified, App Runner
    #         returns revisions of all active configurations.</p>
    #   @return [String]
    # @!attribute latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListAutoScalingConfigurationsRequest < Struct.new(
      :auto_scaling_configuration_name,
      :latest_only,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_summary_list
    #   <p>A list of summary information records for auto scaling configurations. In a paginated request, the request returns up to <code>MaxResults</code>
    #         records for each call.</p>
    #   @return [Array<Types::AutoScalingConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListAutoScalingConfigurationsResponse < Struct.new(
      :auto_scaling_configuration_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_name
    #   <p>If specified, only this connection is returned. If not specified, the result isn't filtered by name.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). Used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListConnectionsRequest < Struct.new(
      :connection_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_summary_list
    #   <p>A list of summary information records for connections. In a paginated request, the request returns up to <code>MaxResults</code> records for each
    #         call.</p>
    #   @return [Array<Types::ConnectionSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. Returned in a paginated request.</p>
    #   @return [String]
    class ListConnectionsResponse < Struct.new(
      :connection_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration_name
    #   <p>The name of the App Runner observability configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified,
    #         App Runner returns revisions of all active configurations.</p>
    #   @return [String]
    # @!attribute latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListObservabilityConfigurationsRequest < Struct.new(
      :observability_configuration_name,
      :latest_only,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute observability_configuration_summary_list
    #   <p>A list of summary information records for observability configurations. In a paginated request, the request returns up to <code>MaxResults</code>
    #         records for each call.</p>
    #   @return [Array<Types::ObservabilityConfigurationSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListObservabilityConfigurationsResponse < Struct.new(
      :observability_configuration_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    class ListOperationsRequest < Struct.new(
      :service_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_summary_list
    #   <p>A list of operation summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each
    #         call.</p>
    #   @return [Array<Types::OperationSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListOperationsResponse < Struct.new(
      :operation_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to list the services for.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #         <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is used.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListServicesForAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn_list
    #   <p>A list of service ARN records. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListServicesForAutoScalingConfigurationResponse < Struct.new(
      :service_arn_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    class ListServicesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_summary_list
    #   <p>A list of service summary information records. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListServicesResponse < Struct.new(
      :service_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that a tag list is requested for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of the tag key-value pairs that are associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListVpcConnectorsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_connectors
    #   <p>A list of information records for VPC connectors. In a paginated request, the request returns up to <code>MaxResults</code> records for each
    #         call.</p>
    #   @return [Array<Types::VpcConnector>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListVpcConnectorsResponse < Struct.new(
      :vpc_connectors,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a list of VPC Ingress Connections based on the filter provided. It can return either <code>ServiceArn</code> or <code>VpcEndpointId</code>, or both.</p>
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of a service to filter by.
    #       </p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of a VPC Endpoint to filter by.
    #       </p>
    #   @return [String]
    class ListVpcIngressConnectionsFilter < Struct.new(
      :service_arn,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The VPC Ingress Connections to be listed based on either the Service Arn or Vpc Endpoint Id, or both.</p>
    #   @return [Types::ListVpcIngressConnectionsFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #   @return [String]
    class ListVpcIngressConnectionsRequest < Struct.new(
      :filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection_summary_list
    #   <p>A list of summary information records for VPC Ingress Connections. In a paginated request, the request returns up to <code>MaxResults</code> records for each call.</p>
    #   @return [Array<Types::VpcIngressConnectionSummary>]
    # @!attribute next_token
    #   <p>The token that you can pass in a subsequent request to get the next result page. It's returned in a paginated request.</p>
    #   @return [String]
    class ListVpcIngressConnectionsResponse < Struct.new(
      :vpc_ingress_connection_summary_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes configuration settings related to network traffic of an App Runner service. Consists of embedded objects for each configurable network
    #       feature.</p>
    # @!attribute egress_configuration
    #   <p>Network configuration settings for outbound message traffic.</p>
    #   @return [Types::EgressConfiguration]
    # @!attribute ingress_configuration
    #   <p>Network configuration settings for inbound message traffic.</p>
    #   @return [Types::IngressConfiguration]
    # @!attribute ip_address_type
    #   <p>App Runner provides you with the option to choose between <i>Internet Protocol version 4 (IPv4)</i> and <i>dual stack</i> (IPv4 and IPv6) 
    #         for your incoming public network configuration. This is an optional parameter. 
    #         If you do not specify an <code>IpAddressType</code>, it defaults to select IPv4.</p>
    #            <note>
    #               <p>
    #           Currently, App Runner supports dual stack for only Public endpoint. Only IPv4 is supported for Private endpoint. 
    #           If you update a service that's using dual-stack Public endpoint to a Private endpoint, your App Runner service will default to support only IPv4 for Private endpoint and fail to receive traffic originating from IPv6 endpoint.  
    #         </p>
    #            </note>
    #   @return [String]
    class NetworkConfiguration < Struct.new(
      :egress_configuration,
      :ingress_configuration,
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an App Runner observability configuration resource. Multiple revisions of a configuration have the same
    #         <code>ObservabilityConfigurationName</code> and different <code>ObservabilityConfigurationRevision</code> values.</p>
    #          <p>The resource is designed to configure multiple features (currently one feature, tracing). This type contains optional members that describe the
    #       configuration of these features (currently one member, <code>TraceConfiguration</code>). If a feature member isn't specified, the feature isn't
    #       enabled.</p>
    # @!attribute observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of this observability configuration.</p>
    #   @return [String]
    # @!attribute observability_configuration_name
    #   <p>The customer-provided observability configuration name. It can be used in multiple revisions of a configuration.</p>
    #   @return [String]
    # @!attribute trace_configuration
    #   <p>The configuration of the tracing feature within this observability configuration. If not specified, tracing isn't enabled.</p>
    #   @return [Types::TraceConfiguration]
    # @!attribute observability_configuration_revision
    #   <p>The revision of this observability configuration. It's unique among all the active configurations (<code>"Status": "ACTIVE"</code>) that share the
    #         same <code>ObservabilityConfigurationName</code>.</p>
    #   @return [Integer]
    # @!attribute latest
    #   <p>It's set to <code>true</code> for the configuration with the highest <code>Revision</code> among all configurations that share the same
    #           <code>ObservabilityConfigurationName</code>. It's set to <code>false</code> otherwise.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current state of the observability configuration. If the status of a configuration revision is <code>INACTIVE</code>, it was deleted and can't be
    #         used. Inactive configuration revisions are permanently removed some time after they are deleted.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the observability configuration was created. It's in Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The time when the observability configuration was deleted. It's in Unix time stamp format.</p>
    #   @return [Time]
    class ObservabilityConfiguration < Struct.new(
      :observability_configuration_arn,
      :observability_configuration_name,
      :trace_configuration,
      :observability_configuration_revision,
      :latest,
      :status,
      :created_at,
      :deleted_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:observability_configuration_revision] = 0 unless options.key?(:observability_configuration_revision)
        options[:latest] = false unless options.key?(:latest)
        super
      end
    end

    # <p>Provides summary information about an App Runner observability configuration resource.</p>
    #          <p>This type contains limited information about an observability configuration. It includes only identification information, without configuration
    #       details. It's returned by the <a>ListObservabilityConfigurations</a> action. Complete configuration information is returned by the <a>CreateObservabilityConfiguration</a>, <a>DescribeObservabilityConfiguration</a>, and <a>DeleteObservabilityConfiguration</a>
    #       actions using the <a>ObservabilityConfiguration</a> type.</p>
    # @!attribute observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of this observability configuration.</p>
    #   @return [String]
    # @!attribute observability_configuration_name
    #   <p>The customer-provided observability configuration name. It can be used in multiple revisions of a configuration.</p>
    #   @return [String]
    # @!attribute observability_configuration_revision
    #   <p>The revision of this observability configuration. It's unique among all the active configurations (<code>"Status": "ACTIVE"</code>) that share the
    #         same <code>ObservabilityConfigurationName</code>.</p>
    #   @return [Integer]
    class ObservabilityConfigurationSummary < Struct.new(
      :observability_configuration_arn,
      :observability_configuration_name,
      :observability_configuration_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:observability_configuration_revision] = 0 unless options.key?(:observability_configuration_revision)
        super
      end
    end

    # <p>Provides summary information for an operation that occurred on an App Runner service.</p>
    # @!attribute id
    #   <p>A unique ID of this operation. It's unique in the scope of the App Runner service.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of operation. It indicates a specific action that occured.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of the operation.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that the operation acted on (for example, an App Runner service).</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time when the operation started. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The time when the operation ended. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the operation was last updated. It's in the Unix time stamp format.</p>
    #   @return [Time]
    class OperationSummary < Struct.new(
      :id,
      :type,
      :status,
      :target_arn,
      :started_at,
      :ended_at,
      :updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to pause.</p>
    #   @return [String]
    class PauseServiceRequest < Struct.new(
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A description of the App Runner service that this request just paused.</p>
    #   @return [Types::Service]
    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
    #         the operation's progress.</p>
    #   @return [String]
    class PauseServiceResponse < Struct.new(
      :service,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource doesn't exist for the specified Amazon Resource Name (ARN) in your Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to resume.</p>
    #   @return [String]
    class ResumeServiceRequest < Struct.new(
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A description of the App Runner service that this request just resumed.</p>
    #   @return [Types::Service]
    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
    #         the operation's progress.</p>
    #   @return [String]
    class ResumeServiceResponse < Struct.new(
      :service,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an App Runner service. It can describe a service in any state, including deleted services.</p>
    #          <p>This type contains the full information about a service, including configuration details. It's returned by the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html">CreateService</a>, <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html">DescribeService</a>, and <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html">DeleteService</a> actions. A subset of this
    #       information is returned by the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html">ListServices</a> action using the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ServiceSummary.html">ServiceSummary</a> type.</p>
    # @!attribute service_name
    #   <p>The customer-provided service name.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of this service.</p>
    #   @return [String]
    # @!attribute service_url
    #   <p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the App Runner service was last updated at. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The time when the App Runner service was deleted. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current state of the App Runner service. These particular values mean the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> – The service failed to create. The failed service isn't usable, and still counts towards your service quota. To
    #             troubleshoot this failure, read the failure events and logs, change any parameters that need to be fixed, and rebuild your service using
    #               <code>UpdateService</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure
    #             that all related resources are removed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>The source deployed to the App Runner service. It can be a code or an image repository.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute instance_configuration
    #   <p>The runtime configuration of instances (scaling units) of this service.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute encryption_configuration
    #   <p>The encryption key that App Runner uses to encrypt the service logs and the copy of the source repository that App Runner maintains for the service. It can be
    #         either a customer-provided encryption key or an Amazon Web Services managed key.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of this service.</p>
    #   @return [Types::HealthCheckConfiguration]
    # @!attribute auto_scaling_configuration_summary
    #   <p>Summary information for the App Runner automatic scaling configuration resource that's associated with this service.</p>
    #   @return [Types::AutoScalingConfigurationSummary]
    # @!attribute network_configuration
    #   <p>Configuration settings related to network traffic of the web application that this service runs.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute observability_configuration
    #   <p>The observability configuration of this service.</p>
    #   @return [Types::ServiceObservabilityConfiguration]
    class Service < Struct.new(
      :service_name,
      :service_id,
      :service_arn,
      :service_url,
      :created_at,
      :updated_at,
      :deleted_at,
      :status,
      :source_configuration,
      :instance_configuration,
      :encryption_configuration,
      :health_check_configuration,
      :auto_scaling_configuration_summary,
      :network_configuration,
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the observability configuration of an App Runner service. These are additional observability features, like tracing, that you choose to
    #       enable. They're configured in a separate resource that you associate with your service.</p>
    # @!attribute observability_enabled
    #   <p>When <code>true</code>, an observability configuration resource is associated with the service, and an <code>ObservabilityConfigurationArn</code> is
    #         specified.</p>
    #   @return [Boolean]
    # @!attribute observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the observability configuration that is associated with the service. Specified only when
    #           <code>ObservabilityEnabled</code> is <code>true</code>.</p>
    #            <p>Specify an ARN with a name and a revision number to associate that revision. For example:
    #           <code>arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing/3</code>
    #            </p>
    #            <p>Specify just the name to associate the latest revision. For example:
    #           <code>arn:aws:apprunner:us-east-1:123456789012:observabilityconfiguration/xray-tracing</code>
    #            </p>
    #   @return [String]
    class ServiceObservabilityConfiguration < Struct.new(
      :observability_enabled,
      :observability_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:observability_enabled] = false unless options.key?(:observability_enabled)
        super
      end
    end

    # <p>App Runner can't create this resource. You've reached your account quota for this resource type.</p>
    #          <p>For App Runner per-resource quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/apprunner.html">App Runner endpoints and quotas</a> in the
    #         <i>Amazon Web Services General Reference</i>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information for an App Runner service.</p>
    #          <p>This type contains limited information about a service. It doesn't include configuration details. It's returned by the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html">ListServices</a> action. Complete service information is returned by the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html">CreateService</a>, <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html">DescribeService</a>, and <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html">DeleteService</a> actions using the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_Service.html">Service</a> type.</p>
    # @!attribute service_name
    #   <p>The customer-provided service name.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>An ID that App Runner generated for this service. It's unique within the Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of this service.</p>
    #   @return [String]
    # @!attribute service_url
    #   <p>A subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the App Runner service was created. It's in the Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The time when the App Runner service was last updated. It's in theUnix time stamp format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current state of the App Runner service. These particular values mean the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> – The service failed to create. The failed service isn't usable, and still counts towards your service quota. To
    #             troubleshoot this failure, read the failure events and logs, change any parameters that need to be fixed, and rebuild your service using
    #               <code>UpdateService</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE_FAILED</code> – The service failed to delete and can't be successfully recovered. Retry the service deletion call to ensure
    #             that all related resources are removed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ServiceSummary < Struct.new(
      :service_name,
      :service_id,
      :service_arn,
      :service_url,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a version of code that App Runner refers to within a source code repository.</p>
    # @!attribute type
    #   <p>The type of version identifier.</p>
    #            <p>For a git-based repository, branches represent versions.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A source code version.</p>
    #            <p>For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.</p>
    #   @return [String]
    class SourceCodeVersion < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the source deployed to an App Runner service. It can be a code or an image repository.</p>
    # @!attribute code_repository
    #   <p>The description of a source code
    #         repository.</p>
    #            <p>You must provide either this member or <code>ImageRepository</code> (but not both).</p>
    #   @return [Types::CodeRepository]
    # @!attribute image_repository
    #   <p>The description of a source image
    #         repository.</p>
    #            <p>You must provide either this member or <code>CodeRepository</code> (but not both).</p>
    #   @return [Types::ImageRepository]
    # @!attribute auto_deployments_enabled
    #   <p>If <code>true</code>, continuous integration from the source repository is enabled for the App Runner service. Each repository change (including any source
    #         code commit or new image version) starts a deployment.</p>
    #            <p>Default: App Runner sets to <code>false</code> for a source image that uses an ECR Public repository or an ECR repository that's in an Amazon Web Services account other than the one that the service is in. App Runner sets to <code>true</code> in all other cases (which currently include a source code
    #         repository or a source image using a same-account ECR repository).</p>
    #   @return [Boolean]
    # @!attribute authentication_configuration
    #   <p>Describes the resources that are needed to authenticate access to some source repositories.</p>
    #   @return [Types::AuthenticationConfiguration]
    class SourceConfiguration < Struct.new(
      :code_repository,
      :image_repository,
      :auto_deployments_enabled,
      :authentication_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to manually deploy to.</p>
    #   @return [String]
    class StartDeploymentRequest < Struct.new(
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
    #         the operation's progress.</p>
    #   @return [String]
    class StartDeploymentResponse < Struct.new(
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag that is applied to an App Runner resource. A tag is a metadata item consisting of a key-value pair.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to update tags for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key-value pairs to add or update. If a key is new to the resource, the tag is added with the provided value. If a key is already
    #         associated with the resource, the value of the tag is updated.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of the tracing feature within an App Runner observability configuration.</p>
    # @!attribute vendor
    #   <p>The implementation provider chosen for tracing App Runner services.</p>
    #   @return [String]
    class TraceConfiguration < Struct.new(
      :vendor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to set as the default.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is set as the
    #         default.</p>
    #   @return [String]
    class UpdateDefaultAutoScalingConfigurationRequest < Struct.new(
      :auto_scaling_configuration_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_scaling_configuration
    #   <p>A description of the App Runner auto scaling configuration that was set as default.</p>
    #   @return [Types::AutoScalingConfiguration]
    class UpdateDefaultAutoScalingConfigurationResponse < Struct.new(
      :auto_scaling_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to update.</p>
    #   @return [String]
    # @!attribute source_configuration
    #   <p>The source configuration to apply to the App Runner service.</p>
    #            <p>You can change the configuration of the code or image repository that the service uses. However, you can't switch from code to image or the other way
    #         around. This means that you must provide the same structure member of <code>SourceConfiguration</code> that you originally included when you created the
    #         service. Specifically, you can include either <code>CodeRepository</code> or <code>ImageRepository</code>. To update the source configuration, set the
    #         values to members of the structure that you include.</p>
    #   @return [Types::SourceConfiguration]
    # @!attribute instance_configuration
    #   <p>The runtime configuration to apply to instances (scaling units) of your service.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service.</p>
    #   @return [String]
    # @!attribute health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    #   @return [Types::HealthCheckConfiguration]
    # @!attribute network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute observability_configuration
    #   <p>The observability configuration of your service.</p>
    #   @return [Types::ServiceObservabilityConfiguration]
    class UpdateServiceRequest < Struct.new(
      :service_arn,
      :source_configuration,
      :instance_configuration,
      :auto_scaling_configuration_arn,
      :health_check_configuration,
      :network_configuration,
      :observability_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>A description of the App Runner service updated by this request. All configuration values in the returned <code>Service</code> structure reflect
    #         configuration changes that are being applied by this request.</p>
    #   @return [Types::Service]
    # @!attribute operation_id
    #   <p>The unique ID of the asynchronous operation that this request started. You can use it combined with the <a>ListOperations</a> call to track
    #         the operation's progress.</p>
    #   @return [String]
    class UpdateServiceResponse < Struct.new(
      :service,
      :operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (Arn) for the App Runner VPC Ingress Connection resource that you want to update.</p>
    #   @return [String]
    # @!attribute ingress_vpc_configuration
    #   <p>Specifications for the customer’s Amazon VPC and the related Amazon Web Services PrivateLink VPC endpoint that are used to update the VPC Ingress Connection
    #         resource.</p>
    #   @return [Types::IngressVpcConfiguration]
    class UpdateVpcIngressConnectionRequest < Struct.new(
      :vpc_ingress_connection_arn,
      :ingress_vpc_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_ingress_connection
    #   <p>A description of the App Runner VPC Ingress Connection resource that's updated by this request.</p>
    #   @return [Types::VpcIngressConnection]
    class UpdateVpcIngressConnectionResponse < Struct.new(
      :vpc_ingress_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an App Runner VPC connector resource. A VPC connector describes the Amazon Virtual Private Cloud (Amazon VPC) that an App Runner service is
    #       associated with, and the subnets and security group that are used.</p>
    #          <p>Multiple revisions of a connector might have the same <code>Name</code> and different <code>Revision</code> values.</p>
    #          <note>
    #             <p>At this time, App Runner supports only one revision per name.</p>
    #          </note>
    # @!attribute vpc_connector_name
    #   <p>The customer-provided VPC connector name.</p>
    #   @return [String]
    # @!attribute vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of this VPC connector.</p>
    #   @return [String]
    # @!attribute vpc_connector_revision
    #   <p>The revision of this VPC connector. It's unique among all the active connectors (<code>"Status": "ACTIVE"</code>) that share the same
    #         <code>Name</code>.</p>
    #            <note>
    #               <p>At this time, App Runner supports only one revision per name.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute subnets
    #   <p>A list of IDs of subnets that App Runner uses for your service. All IDs are of subnets of a single Amazon VPC.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>A list of IDs of security groups that App Runner uses for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the default
    #         security group of the Amazon VPC. The default security group allows all outbound traffic.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current state of the VPC connector. If the status of a connector revision is <code>INACTIVE</code>, it was deleted and can't be
    #         used. Inactive connector revisions are permanently removed some time after they are deleted.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the VPC connector was created. It's in Unix time stamp format.</p>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The time when the VPC connector was deleted. It's in Unix time stamp format.</p>
    #   @return [Time]
    class VpcConnector < Struct.new(
      :vpc_connector_name,
      :vpc_connector_arn,
      :vpc_connector_revision,
      :subnets,
      :security_groups,
      :status,
      :created_at,
      :deleted_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:vpc_connector_revision] = 0 unless options.key?(:vpc_connector_revision)
        super
      end
    end

    # <p>DNS Target record for a custom domain of this Amazon VPC.</p>
    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC Ingress Connection that is associated with your service.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC that is associated with the custom domain name of the target DNS.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of your target DNS that is associated with the Amazon VPC.</p>
    #   @return [String]
    class VpcDNSTarget < Struct.new(
      :vpc_ingress_connection_arn,
      :vpc_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The App Runner resource that specifies an App Runner endpoint for incoming traffic. It establishes a connection between a VPC interface endpoint and a App Runner
    #       service, to make your App Runner service accessible from only within an Amazon VPC.</p>
    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC Ingress Connection.
    #       </p>
    #   @return [String]
    # @!attribute vpc_ingress_connection_name
    #   <p>The customer-provided VPC Ingress Connection name.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service associated with the VPC Ingress Connection.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the VPC Ingress Connection. 
    #         The VPC Ingress Connection displays one of the following statuses: <code>AVAILABLE</code>, <code>PENDING_CREATION</code>, <code>PENDING_UPDATE</code>, <code>PENDING_DELETION</code>,<code>FAILED_CREATION</code>, <code>FAILED_UPDATE</code>, <code>FAILED_DELETION</code>, and <code>DELETED</code>..
    #       </p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Account Id you use to create the VPC Ingress Connection resource.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name associated with the VPC Ingress Connection resource.</p>
    #   @return [String]
    # @!attribute ingress_vpc_configuration
    #   <p>Specifications for the customer’s VPC and related PrivateLink VPC endpoint that are used to associate with the VPC Ingress Connection resource.</p>
    #   @return [Types::IngressVpcConfiguration]
    # @!attribute created_at
    #   <p>The time when the VPC Ingress Connection was created. It's in the Unix time stamp format.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #               Type: Timestamp 
    #             </p>
    #               </li>
    #               <li>
    #                  <p>
    #               Required: Yes
    #             </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute deleted_at
    #   <p>The time when the App Runner service was deleted. It's in the Unix time stamp format.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             Type: Timestamp 
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             Required: No
    #           </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class VpcIngressConnection < Struct.new(
      :vpc_ingress_connection_arn,
      :vpc_ingress_connection_name,
      :service_arn,
      :status,
      :account_id,
      :domain_name,
      :ingress_vpc_configuration,
      :created_at,
      :deleted_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides summary information about an VPC Ingress Connection, which includes its VPC Ingress Connection ARN and its associated Service ARN.</p>
    # @!attribute vpc_ingress_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the VPC Ingress Connection.
    #       </p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service associated with the VPC Ingress Connection.
    #       </p>
    #   @return [String]
    class VpcIngressConnectionSummary < Struct.new(
      :vpc_ingress_connection_arn,
      :service_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
