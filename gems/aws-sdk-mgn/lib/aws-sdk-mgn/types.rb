# frozen_string_literal: true

# This is generated code!

module Aws::Mgn
  # This module contains the types returned by client operations.
  module Types

    # <p>Operating denied due to a file permission or access check error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Application ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Application archival status.</p>
    #   @return [Boolean]
    # @!attribute application_aggregated_status
    #   <p>Application aggregated status.</p>
    #   @return [Types::ApplicationAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Application creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Application last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute wave_id
    #   <p>Application wave ID.</p>
    #   @return [String]
    class Application < Struct.new(
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Application aggregated status.</p>
    # @!attribute last_update_date_time
    #   <p>Application aggregated status last update dateTime.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Application aggregated status health status.</p>
    #   @return [String]
    # @!attribute progress_status
    #   <p>Application aggregated status progress status.</p>
    #   @return [String]
    # @!attribute total_source_servers
    #   <p>Application aggregated status total source servers amount.</p>
    #   @return [Integer]
    class ApplicationAggregatedStatus < Struct.new(
      :last_update_date_time,
      :health_status,
      :progress_status,
      :total_source_servers,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_source_servers] = 0 unless options.key?(:total_source_servers)
        super
      end
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class ArchiveApplicationInput < Struct.new(
      :application_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Application ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Application archival status.</p>
    #   @return [Boolean]
    # @!attribute application_aggregated_status
    #   <p>Application aggregated status.</p>
    #   @return [Types::ApplicationAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Application creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Application last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute wave_id
    #   <p>Application wave ID.</p>
    #   @return [String]
    class ArchiveApplicationOutput < Struct.new(
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class ArchiveWaveInput < Struct.new(
      :wave_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Wave ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Wave archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_aggregated_status
    #   <p>Wave aggregated status.</p>
    #   @return [Types::WaveAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Wave creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Wave last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    class ArchiveWaveOutput < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute application_i_ds
    #   <p>Application IDs list.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class AssociateApplicationsInput < Struct.new(
      :wave_id,
      :application_i_ds,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateApplicationsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute source_server_i_ds
    #   <p>Source server IDs list.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class AssociateSourceServersInput < Struct.new(
      :application_id,
      :source_server_i_ds,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateSourceServersOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Source server CPU information.</p>
    # @!attribute cores
    #   <p>The number of CPU cores on the source server.</p>
    #   @return [Integer]
    # @!attribute model_name
    #   <p>The source server's CPU model name.</p>
    #   @return [String]
    class CPU < Struct.new(
      :cores,
      :model_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:cores] = 0 unless options.key?(:cores)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>The request to change the source server migration lifecycle state by source server ID.</p>
    #   @return [String]
    # @!attribute life_cycle
    #   <p>The request to change the source server migration lifecycle state.</p>
    #   @return [Types::ChangeServerLifeCycleStateSourceServerLifecycle]
    # @!attribute account_id
    #   <p>The request to change the source server migration account ID.</p>
    #   @return [String]
    class ChangeServerLifeCycleStateInput < Struct.new(
      :source_server_id,
      :life_cycle,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class ChangeServerLifeCycleStateOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request to change the source server migration lifecycle state.</p>
    # @!attribute state
    #   <p>The request to change the source server migration lifecycle state.</p>
    #   @return [String]
    class ChangeServerLifeCycleStateSourceServerLifecycle < Struct.new(
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the target resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>A conflict occurred when prompting for the Resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>A conflict occurred when prompting for resource type.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>Conflict Exception specific errors.</p>
    #   @return [Array<Types::ErrorDetails>]
    class ConflictException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Connector name.</p>
    #   @return [String]
    # @!attribute ssm_instance_id
    #   <p>Connector SSM instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Connector arn.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Connector tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute ssm_command_config
    #   <p>Connector SSM command config.</p>
    #   @return [Types::ConnectorSsmCommandConfig]
    class Connector < Struct.new(
      :connector_id,
      :name,
      :ssm_instance_id,
      :arn,
      :tags,
      :ssm_command_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Connector SSM command config.</p>
    # @!attribute s3_output_enabled
    #   <p>Connector SSM command config S3 output enabled.</p>
    #   @return [Boolean]
    # @!attribute output_s3_bucket_name
    #   <p>Connector SSM command config output S3 bucket name.</p>
    #   @return [String]
    # @!attribute cloud_watch_output_enabled
    #   <p>Connector SSM command config CloudWatch output enabled.</p>
    #   @return [Boolean]
    # @!attribute cloud_watch_log_group_name
    #   <p>Connector SSM command config CloudWatch log group name.</p>
    #   @return [String]
    class ConnectorSsmCommandConfig < Struct.new(
      :s3_output_enabled,
      :output_s3_bucket_name,
      :cloud_watch_output_enabled,
      :cloud_watch_log_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class CreateApplicationInput < Struct.new(
      :name,
      :description,
      :tags,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Application ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Application archival status.</p>
    #   @return [Boolean]
    # @!attribute application_aggregated_status
    #   <p>Application aggregated status.</p>
    #   @return [Types::ApplicationAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Application creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Application last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute wave_id
    #   <p>Application wave ID.</p>
    #   @return [String]
    class CreateApplicationOutput < Struct.new(
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Connector name.</p>
    #   @return [String]
    # @!attribute ssm_instance_id
    #   <p>Connector SSM instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Connector arn.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Connector tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute ssm_command_config
    #   <p>Connector SSM command config.</p>
    #   @return [Types::ConnectorSsmCommandConfig]
    class CreateConnectorOutput < Struct.new(
      :connector_id,
      :name,
      :ssm_instance_id,
      :arn,
      :tags,
      :ssm_command_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Create Connector request name.</p>
    #   @return [String]
    # @!attribute ssm_instance_id
    #   <p>Create Connector request SSM instance ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Create Connector request tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute ssm_command_config
    #   <p>Create Connector request SSM command config.</p>
    #   @return [Types::ConnectorSsmCommandConfig]
    class CreateConnectorRequest < Struct.new(
      :name,
      :ssm_instance_id,
      :tags,
      :ssm_command_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute post_launch_actions
    #   <p>Launch configuration template post launch actions.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Request to associate tags during creation of a Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private Ip.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Configure Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration template boot mode.</p>
    #   @return [String]
    # @!attribute small_volume_max_size
    #   <p>Small volume maximum size.</p>
    #   @return [Integer]
    # @!attribute small_volume_conf
    #   <p>Small volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    # @!attribute large_volume_conf
    #   <p>Large volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    class CreateLaunchConfigurationTemplateInput < Struct.new(
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>ID of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions of the Launch Configuration Template.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags of the Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute ec2_launch_template_id
    #   <p>EC2 launch template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private Ip.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Configure Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration template boot mode.</p>
    #   @return [String]
    # @!attribute small_volume_max_size
    #   <p>Small volume maximum size.</p>
    #   @return [Integer]
    # @!attribute small_volume_conf
    #   <p>Small volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    # @!attribute large_volume_conf
    #   <p>Large volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    class CreateLaunchConfigurationTemplateOutput < Struct.new(
      :launch_configuration_template_id,
      :arn,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:small_volume_max_size] = 0 unless options.key?(:small_volume_max_size)
        super
      end
    end

    # @!attribute staging_area_subnet_id
    #   <p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Request to configure the Replication Server Security group ID during Replication Settings template creation.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Request to configure the default large staging disk EBS volume type during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>Request to configure EBS encryption during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Request to configure an EBS encryption key during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Request to configure bandwidth throttling during Replication Settings template creation.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Request to configure  data plane routing during Replication Settings template creation.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Request to create Public IP during Replication Settings template creation.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Request to configure Staging Area tags during Replication Settings template creation.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Request to use Fips Endpoint during Replication Settings template creation.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Request to configure tags during Replication Settings template creation.</p>
    #   @return [Hash<String, String>]
    class CreateReplicationConfigurationTemplateInput < Struct.new(
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Replication Configuration template use Fips Endpoint.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #   @return [Hash<String, String>]
    class CreateReplicationConfigurationTemplateOutput < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class CreateWaveInput < Struct.new(
      :name,
      :description,
      :tags,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Wave ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Wave archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_aggregated_status
    #   <p>Wave aggregated status.</p>
    #   @return [Types::WaveAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Wave creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Wave last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    class CreateWaveOutput < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Error in data replication.</p>
    # @!attribute error
    #   <p>Error in data replication.</p>
    #   @return [String]
    # @!attribute raw_error
    #   <p>Error in data replication.</p>
    #   @return [String]
    class DataReplicationError < Struct.new(
      :error,
      :raw_error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request data replication info.</p>
    # @!attribute lag_duration
    #   <p>Request to query data replication lag duration.</p>
    #   @return [String]
    # @!attribute eta_date_time
    #   <p>Request to query the time when data replication will be complete.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>Request to query disks replicated.</p>
    #   @return [Array<Types::DataReplicationInfoReplicatedDisk>]
    # @!attribute data_replication_state
    #   <p>Request to query the data replication state.</p>
    #   @return [String]
    # @!attribute data_replication_initiation
    #   <p>Request to query whether data replication has been initiated.</p>
    #   @return [Types::DataReplicationInitiation]
    # @!attribute data_replication_error
    #   <p>Error in obtaining data replication info.</p>
    #   @return [Types::DataReplicationError]
    # @!attribute last_snapshot_date_time
    #   <p>Request to query data replication last snapshot time.</p>
    #   @return [String]
    class DataReplicationInfo < Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      :last_snapshot_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request to query disks replicated.</p>
    # @!attribute device_name
    #   <p>Request to query device name.</p>
    #   @return [String]
    # @!attribute total_storage_bytes
    #   <p>Request to query total amount of data replicated in bytes.</p>
    #   @return [Integer]
    # @!attribute replicated_storage_bytes
    #   <p>Request to query amount of data replicated in bytes.</p>
    #   @return [Integer]
    # @!attribute rescanned_storage_bytes
    #   <p>Request to query amount of data rescanned in bytes.</p>
    #   @return [Integer]
    # @!attribute backlogged_storage_bytes
    #   <p>Request to query data replication backlog size in bytes.</p>
    #   @return [Integer]
    class DataReplicationInfoReplicatedDisk < Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_storage_bytes] = 0 unless options.key?(:total_storage_bytes)
        options[:replicated_storage_bytes] = 0 unless options.key?(:replicated_storage_bytes)
        options[:rescanned_storage_bytes] = 0 unless options.key?(:rescanned_storage_bytes)
        options[:backlogged_storage_bytes] = 0 unless options.key?(:backlogged_storage_bytes)
        super
      end
    end

    # <p>Data replication initiation.</p>
    # @!attribute start_date_time
    #   <p>Request to query data initiation start date and time.</p>
    #   @return [String]
    # @!attribute next_attempt_date_time
    #   <p>Request to query next data initiation date and time.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>Request to query data initiation steps.</p>
    #   @return [Array<Types::DataReplicationInitiationStep>]
    class DataReplicationInitiation < Struct.new(
      :start_date_time,
      :next_attempt_date_time,
      :steps,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Data replication initiation step.</p>
    # @!attribute name
    #   <p>Request to query data initiation step name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Request to query data initiation status.</p>
    #   @return [String]
    class DataReplicationInitiationStep < Struct.new(
      :name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class DeleteApplicationInput < Struct.new(
      :application_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteApplicationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Delete Connector request connector ID.</p>
    #   @return [String]
    class DeleteConnectorRequest < Struct.new(
      :connector_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Request to delete Job from service by Job ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to delete Job from service by Account ID.</p>
    #   @return [String]
    class DeleteJobInput < Struct.new(
      :job_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteJobOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>ID of resource to be deleted.</p>
    #   @return [String]
    class DeleteLaunchConfigurationTemplateInput < Struct.new(
      :launch_configuration_template_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteLaunchConfigurationTemplateOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>
    #   @return [String]
    class DeleteReplicationConfigurationTemplateInput < Struct.new(
      :replication_configuration_template_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteReplicationConfigurationTemplateOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to delete Source Server from service by Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to delete Source Server from service by Account ID.</p>
    #   @return [String]
    class DeleteSourceServerInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSourceServerOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vcenter_client_id
    #   <p>ID of resource to be deleted.</p>
    #   @return [String]
    class DeleteVcenterClientInput < Struct.new(
      :vcenter_client_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class DeleteWaveInput < Struct.new(
      :wave_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteWaveOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>Request to describe Job log job ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Request to describe Job log item maximum results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request to describe Job log next token.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to describe Job log Account ID.</p>
    #   @return [String]
    class DescribeJobLogItemsInput < Struct.new(
      :job_id,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Request to describe Job log response items.</p>
    #   @return [Array<Types::JobLog>]
    # @!attribute next_token
    #   <p>Request to describe Job log response next token.</p>
    #   @return [String]
    class DescribeJobLogItemsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Request to describe Job log filters.</p>
    #   @return [Types::DescribeJobsRequestFilters]
    # @!attribute max_results
    #   <p>Request to describe job log items by max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request to describe job log items by next token.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to describe job log items by Account ID.</p>
    #   @return [String]
    class DescribeJobsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Request to describe Job log items.</p>
    #   @return [Array<Types::Job>]
    # @!attribute next_token
    #   <p>Request to describe Job response by next token.</p>
    #   @return [String]
    class DescribeJobsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request to describe Job log filters.</p>
    # @!attribute job_i_ds
    #   <p>Request to describe Job log filters by job ID.</p>
    #   @return [Array<String>]
    # @!attribute from_date
    #   <p>Request to describe Job log filters by date.</p>
    #   @return [String]
    # @!attribute to_date
    #   <p>Request to describe job log items by last date.</p>
    #   @return [String]
    class DescribeJobsRequestFilters < Struct.new(
      :job_i_ds,
      :from_date,
      :to_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_i_ds
    #   <p>Request to filter Launch Configuration Templates list by Launch Configuration Template ID.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum results to be returned in DescribeLaunchConfigurationTemplates.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next pagination token returned from DescribeLaunchConfigurationTemplates.</p>
    #   @return [String]
    class DescribeLaunchConfigurationTemplatesInput < Struct.new(
      :launch_configuration_template_i_ds,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of items returned by DescribeLaunchConfigurationTemplates.</p>
    #   @return [Array<Types::LaunchConfigurationTemplate>]
    # @!attribute next_token
    #   <p>Next pagination token returned from DescribeLaunchConfigurationTemplates.</p>
    #   @return [String]
    class DescribeLaunchConfigurationTemplatesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_i_ds
    #   <p>Request to describe Replication Configuration template by template IDs.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Request to describe Replication Configuration template by max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
    #   @return [String]
    class DescribeReplicationConfigurationTemplatesInput < Struct.new(
      :replication_configuration_template_i_ds,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Request to describe Replication Configuration template by items.</p>
    #   @return [Array<Types::ReplicationConfigurationTemplate>]
    # @!attribute next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
    #   @return [String]
    class DescribeReplicationConfigurationTemplatesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Request to filter Source Servers list.</p>
    #   @return [Types::DescribeSourceServersRequestFilters]
    # @!attribute max_results
    #   <p>Request to filter Source Servers list by maximum results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request to filter Source Servers list by next token.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to filter Source Servers list by Accoun ID.</p>
    #   @return [String]
    class DescribeSourceServersInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Request to filter Source Servers list by item.</p>
    #   @return [Array<Types::SourceServer>]
    # @!attribute next_token
    #   <p>Request to filter Source Servers next token.</p>
    #   @return [String]
    class DescribeSourceServersOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request to filter Source Servers list.</p>
    # @!attribute source_server_i_ds
    #   <p>Request to filter Source Servers list by Source Server ID.</p>
    #   @return [Array<String>]
    # @!attribute is_archived
    #   <p>Request to filter Source Servers list by archived.</p>
    #   @return [Boolean]
    # @!attribute replication_types
    #   <p>Request to filter Source Servers list by replication type.</p>
    #   @return [Array<String>]
    # @!attribute life_cycle_states
    #   <p>Request to filter Source Servers list by life cycle states.</p>
    #   @return [Array<String>]
    # @!attribute application_i_ds
    #   <p>Request to filter Source Servers list by application IDs.</p>
    #   @return [Array<String>]
    class DescribeSourceServersRequestFilters < Struct.new(
      :source_server_i_ds,
      :is_archived,
      :replication_types,
      :life_cycle_states,
      :application_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Maximum results to be returned in DescribeVcenterClients.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next pagination token to be provided for DescribeVcenterClients.</p>
    #   @return [String]
    class DescribeVcenterClientsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of items returned by DescribeVcenterClients.</p>
    #   @return [Array<Types::VcenterClient>]
    # @!attribute next_token
    #   <p>Next pagination token returned from DescribeVcenterClients.</p>
    #   @return [String]
    class DescribeVcenterClientsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute application_i_ds
    #   <p>Application IDs list.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class DisassociateApplicationsInput < Struct.new(
      :wave_id,
      :application_i_ds,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateApplicationsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute source_server_i_ds
    #   <p>Source server IDs list.</p>
    #   @return [Array<String>]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class DisassociateSourceServersInput < Struct.new(
      :application_id,
      :source_server_i_ds,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateSourceServersOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to disconnect Source Server from service by Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to disconnect Source Server from service by Account ID.</p>
    #   @return [String]
    class DisconnectFromServiceInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class DisconnectFromServiceOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The disk identifier.</p>
    # @!attribute device_name
    #   <p>The disk or device name.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>The amount of storage on the disk in bytes.</p>
    #   @return [Integer]
    class Disk < Struct.new(
      :device_name,
      :bytes,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bytes] = 0 unless options.key?(:bytes)
        super
      end
    end

    # <p>Error details.</p>
    # @!attribute message
    #   <p>Error details message.</p>
    #   @return [String]
    # @!attribute code
    #   <p>Error details code.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Error details resourceId.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Error details resourceType.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Export errors data.</p>
    # @!attribute raw_error
    #   <p>Export errors data raw error.</p>
    #   @return [String]
    class ExportErrorData < Struct.new(
      :raw_error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Export task.</p>
    # @!attribute export_id
    #   <p>Export task id.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>Export task s3 bucket.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>Export task s3 key.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>Export task s3 bucket owner.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>Export task creation datetime.</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>Export task end datetime.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Export task status.</p>
    #   @return [String]
    # @!attribute progress_percentage
    #   <p>Export task progress percentage.</p>
    #   @return [Float]
    # @!attribute summary
    #   <p>Export task summary.</p>
    #   @return [Types::ExportTaskSummary]
    class ExportTask < Struct.new(
      :export_id,
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner,
      :creation_date_time,
      :end_date_time,
      :status,
      :progress_percentage,
      :summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Export task error.</p>
    # @!attribute error_date_time
    #   <p>Export task error datetime.</p>
    #   @return [String]
    # @!attribute error_data
    #   <p>Export task error data.</p>
    #   @return [Types::ExportErrorData]
    class ExportTaskError < Struct.new(
      :error_date_time,
      :error_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Export task summary.</p>
    # @!attribute servers_count
    #   <p>Export task summary servers count.</p>
    #   @return [Integer]
    # @!attribute applications_count
    #   <p>Export task summary applications count.</p>
    #   @return [Integer]
    # @!attribute waves_count
    #   <p>Export task summary waves count.</p>
    #   @return [Integer]
    class ExportTaskSummary < Struct.new(
      :servers_count,
      :applications_count,
      :waves_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:servers_count] = 0 unless options.key?(:servers_count)
        options[:applications_count] = 0 unless options.key?(:applications_count)
        options[:waves_count] = 0 unless options.key?(:waves_count)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>Request to finalize Cutover by Source Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to finalize Cutover by Source Account ID.</p>
    #   @return [String]
    class FinalizeCutoverInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class FinalizeCutoverOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to get Launch Configuration information by Source Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to get Launch Configuration information by Account ID.</p>
    #   @return [String]
    class GetLaunchConfigurationInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Launch configuration Source Server ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Launch configuration name.</p>
    #   @return [String]
    # @!attribute ec2_launch_template_id
    #   <p>Launch configuration EC2 Launch template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition for launch configuration.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Launch configuration Target instance type right sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy Private IP during Launch Configuration.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy Tags during Launch Configuration.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Launch configuration OS licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration boot mode.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions to executed on the Test or Cutover instance.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Map auto tagging MPE ID.</p>
    #   @return [String]
    class GetLaunchConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to get Replication Configuration by Source Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request to get Replication Configuration by Account ID.</p>
    #   @return [String]
    class GetReplicationConfigurationInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Replication Configuration Source Server ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Replication Configuration name.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration Staging Area subnet ID.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration associate default Application Migration Service Security Group.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration Replication Server Security Group IDs.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration Replication Server instance type.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration use Dedicated Replication Server.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration use default large Staging Disks.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>Replication Configuration replicated disks.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>Replication Configuration EBS encryption.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration EBS encryption key ARN.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration set bandwidth throttling.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Replication Configuration data plane routing.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Replication Configuration create Public IP.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Replication Configuration Staging Area tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Replication Configuration use Fips Endpoint.</p>
    #   @return [Boolean]
    class GetReplicationConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # <p>Identification hints.</p>
    # @!attribute fqdn
    #   <p>FQDN address identification hint.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>Hostname identification hint.</p>
    #   @return [String]
    # @!attribute vm_ware_uuid
    #   <p>vmWare UUID identification hint.</p>
    #   @return [String]
    # @!attribute aws_instance_id
    #   <p>AWS Instance ID identification hint.</p>
    #   @return [String]
    # @!attribute vm_path
    #   <p>vCenter VM path identification hint.</p>
    #   @return [String]
    class IdentificationHints < Struct.new(
      :fqdn,
      :hostname,
      :vm_ware_uuid,
      :aws_instance_id,
      :vm_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Import error data.</p>
    # @!attribute source_server_id
    #   <p>Import error data source server ID.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Import error data application ID.</p>
    #   @return [String]
    # @!attribute wave_id
    #   <p>Import error data wave id.</p>
    #   @return [String]
    # @!attribute ec2_launch_template_id
    #   <p>Import error data ec2 LaunchTemplate ID.</p>
    #   @return [String]
    # @!attribute row_number
    #   <p>Import error data row number.</p>
    #   @return [Integer]
    # @!attribute raw_error
    #   <p>Import error data raw error.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Import error data source account ID.</p>
    #   @return [String]
    class ImportErrorData < Struct.new(
      :source_server_id,
      :application_id,
      :wave_id,
      :ec2_launch_template_id,
      :row_number,
      :raw_error,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:row_number] = 0 unless options.key?(:row_number)
        super
      end
    end

    # <p>Import task.</p>
    # @!attribute import_id
    #   <p>Import task id.</p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p>Import task s3 bucket source.</p>
    #   @return [Types::S3BucketSource]
    # @!attribute creation_date_time
    #   <p>Import task creation datetime.</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>Import task end datetime.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Import task status.</p>
    #   @return [String]
    # @!attribute progress_percentage
    #   <p>Import task progress percentage.</p>
    #   @return [Float]
    # @!attribute summary
    #   <p>Import task summary.</p>
    #   @return [Types::ImportTaskSummary]
    class ImportTask < Struct.new(
      :import_id,
      :s3_bucket_source,
      :creation_date_time,
      :end_date_time,
      :status,
      :progress_percentage,
      :summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Import task error.</p>
    # @!attribute error_date_time
    #   <p>Import task error datetime.</p>
    #   @return [String]
    # @!attribute error_type
    #   <p>Import task error type.</p>
    #   @return [String]
    # @!attribute error_data
    #   <p>Import task error data.</p>
    #   @return [Types::ImportErrorData]
    class ImportTaskError < Struct.new(
      :error_date_time,
      :error_type,
      :error_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Import task summary.</p>
    # @!attribute waves
    #   <p>Import task summary waves.</p>
    #   @return [Types::ImportTaskSummaryWaves]
    # @!attribute applications
    #   <p>Import task summary applications.</p>
    #   @return [Types::ImportTaskSummaryApplications]
    # @!attribute servers
    #   <p>Import task summary servers.</p>
    #   @return [Types::ImportTaskSummaryServers]
    class ImportTaskSummary < Struct.new(
      :waves,
      :applications,
      :servers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Import task summary applications.</p>
    # @!attribute created_count
    #   <p>Import task summary applications created count.</p>
    #   @return [Integer]
    # @!attribute modified_count
    #   <p>Import task summary applications modified count.</p>
    #   @return [Integer]
    class ImportTaskSummaryApplications < Struct.new(
      :created_count,
      :modified_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:created_count] = 0 unless options.key?(:created_count)
        options[:modified_count] = 0 unless options.key?(:modified_count)
        super
      end
    end

    # <p>Import task summary servers.</p>
    # @!attribute created_count
    #   <p>Import task summary servers created count.</p>
    #   @return [Integer]
    # @!attribute modified_count
    #   <p>Import task summary servers modified count.</p>
    #   @return [Integer]
    class ImportTaskSummaryServers < Struct.new(
      :created_count,
      :modified_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:created_count] = 0 unless options.key?(:created_count)
        options[:modified_count] = 0 unless options.key?(:modified_count)
        super
      end
    end

    # <p>Import task summery waves.</p>
    # @!attribute created_count
    #   <p>Import task summery waves created count.</p>
    #   @return [Integer]
    # @!attribute modified_count
    #   <p>Import task summery waves modified count.</p>
    #   @return [Integer]
    class ImportTaskSummaryWaves < Struct.new(
      :created_count,
      :modified_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:created_count] = 0 unless options.key?(:created_count)
        options[:modified_count] = 0 unless options.key?(:modified_count)
        super
      end
    end

    class InitializeServiceInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class InitializeServiceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The server encountered an unexpected condition that prevented it from fulfilling the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The server encountered an unexpected condition that prevented it from fulfilling the request. The request will be retried again after x seconds.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>Job.</p>
    # @!attribute job_id
    #   <p>Job ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>the ARN of the specific Job.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Job type.</p>
    #   @return [String]
    # @!attribute initiated_by
    #   <p>Job initiated by field.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>Job creation time.</p>
    #   @return [String]
    # @!attribute end_date_time
    #   <p>Job end time.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Job status.</p>
    #   @return [String]
    # @!attribute participating_servers
    #   <p>Servers participating in a specific Job.</p>
    #   @return [Array<Types::ParticipatingServer>]
    # @!attribute tags
    #   <p>Tags associated with specific Job.</p>
    #   @return [Hash<String, String>]
    class Job < Struct.new(
      :job_id,
      :arn,
      :type,
      :initiated_by,
      :creation_date_time,
      :end_date_time,
      :status,
      :participating_servers,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Job log.</p>
    # @!attribute log_date_time
    #   <p>Job log event date and time.</p>
    #   @return [String]
    # @!attribute event
    #   <p>Job log event.</p>
    #   @return [String]
    # @!attribute event_data
    #   <p>Job event data</p>
    #   @return [Types::JobLogEventData]
    class JobLog < Struct.new(
      :log_date_time,
      :event,
      :event_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Job log data</p>
    # @!attribute source_server_id
    #   <p>Job Event Source Server ID.</p>
    #   @return [String]
    # @!attribute conversion_server_id
    #   <p>Job Event conversion Server ID.</p>
    #   @return [String]
    # @!attribute target_instance_id
    #   <p>Job Event Target instance ID.</p>
    #   @return [String]
    # @!attribute raw_error
    #   <p>Job error.</p>
    #   @return [String]
    class JobLogEventData < Struct.new(
      :source_server_id,
      :conversion_server_id,
      :target_instance_id,
      :raw_error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Launch Status of the Job Post Launch Actions.</p>
    # @!attribute ssm_document
    #   <p>AWS Systems Manager's Document of the of the Job Post Launch Actions.</p>
    #   @return [Types::SsmDocument]
    # @!attribute ssm_document_type
    #   <p>AWS Systems Manager Document type.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>AWS Systems Manager Document's execution ID of the of the Job Post Launch Actions.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>AWS Systems Manager Document's execution status.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>AWS Systems Manager Document's failure reason.</p>
    #   @return [String]
    class JobPostLaunchActionsLaunchStatus < Struct.new(
      :ssm_document,
      :ssm_document_type,
      :execution_id,
      :execution_status,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>ID of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions of the Launch Configuration Template.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags of the Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute ec2_launch_template_id
    #   <p>EC2 launch template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private Ip.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Configure Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration template boot mode.</p>
    #   @return [String]
    # @!attribute small_volume_max_size
    #   <p>Small volume maximum size.</p>
    #   @return [Integer]
    # @!attribute small_volume_conf
    #   <p>Small volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    # @!attribute large_volume_conf
    #   <p>Large volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    class LaunchConfigurationTemplate < Struct.new(
      :launch_configuration_template_id,
      :arn,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:small_volume_max_size] = 0 unless options.key?(:small_volume_max_size)
        super
      end
    end

    # <p>Launch template disk configuration.</p>
    # @!attribute volume_type
    #   <p>Launch template disk volume type configuration.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>Launch template disk iops configuration.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>Launch template disk throughput configuration.</p>
    #   @return [Integer]
    class LaunchTemplateDiskConf < Struct.new(
      :volume_type,
      :iops,
      :throughput,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Launched instance.</p>
    # @!attribute ec2_instance_id
    #   <p>Launched instance EC2 ID.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>Launched instance Job ID.</p>
    #   @return [String]
    # @!attribute first_boot
    #   <p>Launched instance first boot.</p>
    #   @return [String]
    class LaunchedInstance < Struct.new(
      :ec2_instance_id,
      :job_id,
      :first_boot,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configure Licensing.</p>
    # @!attribute os_byol
    #   <p>Configure BYOL OS licensing.</p>
    #   @return [Boolean]
    class Licensing < Struct.new(
      :os_byol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle.</p>
    # @!attribute added_to_service_date_time
    #   <p>Lifecycle added to service data and time.</p>
    #   @return [String]
    # @!attribute first_byte_date_time
    #   <p>Lifecycle replication initiation date and time.</p>
    #   @return [String]
    # @!attribute elapsed_replication_duration
    #   <p>Lifecycle elapsed time and duration.</p>
    #   @return [String]
    # @!attribute last_seen_by_service_date_time
    #   <p>Lifecycle last seen date and time.</p>
    #   @return [String]
    # @!attribute last_test
    #   <p>Lifecycle last Test.</p>
    #   @return [Types::LifeCycleLastTest]
    # @!attribute last_cutover
    #   <p>Lifecycle last Cutover.</p>
    #   @return [Types::LifeCycleLastCutover]
    # @!attribute state
    #   <p>Lifecycle state.</p>
    #   @return [String]
    class LifeCycle < Struct.new(
      :added_to_service_date_time,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :last_seen_by_service_date_time,
      :last_test,
      :last_cutover,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Cutover .</p>
    # @!attribute initiated
    #   <p>Lifecycle last Cutover initiated.</p>
    #   @return [Types::LifeCycleLastCutoverInitiated]
    # @!attribute reverted
    #   <p>Lifecycle last Cutover reverted.</p>
    #   @return [Types::LifeCycleLastCutoverReverted]
    # @!attribute finalized
    #   <p>Lifecycle Cutover finalized date and time.</p>
    #   @return [Types::LifeCycleLastCutoverFinalized]
    class LifeCycleLastCutover < Struct.new(
      :initiated,
      :reverted,
      :finalized,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle Cutover finalized</p>
    # @!attribute api_call_date_time
    #   <p>Lifecycle Cutover finalized date and time.</p>
    #   @return [String]
    class LifeCycleLastCutoverFinalized < Struct.new(
      :api_call_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Cutover initiated.</p>
    # @!attribute api_call_date_time
    #   <p/>
    #   @return [String]
    # @!attribute job_id
    #   <p>Lifecycle last Cutover initiated by Job ID.</p>
    #   @return [String]
    class LifeCycleLastCutoverInitiated < Struct.new(
      :api_call_date_time,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Cutover reverted.</p>
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Cutover reverted API call date time.</p>
    #   @return [String]
    class LifeCycleLastCutoverReverted < Struct.new(
      :api_call_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Test.</p>
    # @!attribute initiated
    #   <p>Lifecycle last Test initiated.</p>
    #   @return [Types::LifeCycleLastTestInitiated]
    # @!attribute reverted
    #   <p>Lifecycle last Test reverted.</p>
    #   @return [Types::LifeCycleLastTestReverted]
    # @!attribute finalized
    #   <p>Lifecycle last Test finalized.</p>
    #   @return [Types::LifeCycleLastTestFinalized]
    class LifeCycleLastTest < Struct.new(
      :initiated,
      :reverted,
      :finalized,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Test finalized.</p>
    # @!attribute api_call_date_time
    #   <p>Lifecycle Test failed API call date and time.</p>
    #   @return [String]
    class LifeCycleLastTestFinalized < Struct.new(
      :api_call_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Test initiated.</p>
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Test initiated API call date and time.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>Lifecycle last Test initiated Job ID.</p>
    #   @return [String]
    class LifeCycleLastTestInitiated < Struct.new(
      :api_call_date_time,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lifecycle last Test reverted.</p>
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Test reverted API call date and time.</p>
    #   @return [String]
    class LifeCycleLastTestReverted < Struct.new(
      :api_call_date_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Applications list filters.</p>
    #   @return [Types::ListApplicationsRequestFilters]
    # @!attribute max_results
    #   <p>Maximum results to return when listing applications.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request next token.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Applications list Account ID.</p>
    #   @return [String]
    class ListApplicationsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Applications list.</p>
    #   @return [Array<Types::Application>]
    # @!attribute next_token
    #   <p>Response next token.</p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Applications list filters.</p>
    # @!attribute application_i_ds
    #   <p>Filter applications list by application ID.</p>
    #   @return [Array<String>]
    # @!attribute is_archived
    #   <p>Filter applications list by archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_i_ds
    #   <p>Filter applications list by wave ID.</p>
    #   @return [Array<String>]
    class ListApplicationsRequestFilters < Struct.new(
      :application_i_ds,
      :is_archived,
      :wave_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>List Connectors Request filters.</p>
    #   @return [Types::ListConnectorsRequestFilters]
    # @!attribute max_results
    #   <p>List Connectors Request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List Connectors Request next token.</p>
    #   @return [String]
    class ListConnectorsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List Connectors Request Filters.</p>
    # @!attribute connector_i_ds
    #   <p>List Connectors Request Filters connector IDs.</p>
    #   @return [Array<String>]
    class ListConnectorsRequestFilters < Struct.new(
      :connector_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List connectors response items.</p>
    #   @return [Array<Types::Connector>]
    # @!attribute next_token
    #   <p>List connectors response next token.</p>
    #   @return [String]
    class ListConnectorsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List export errors request.</p>
    # @!attribute export_id
    #   <p>List export errors request export id.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>List export errors request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List export errors request next token.</p>
    #   @return [String]
    class ListExportErrorsInput < Struct.new(
      :export_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List export errors response.</p>
    # @!attribute items
    #   <p>List export errors response items.</p>
    #   @return [Array<Types::ExportTaskError>]
    # @!attribute next_token
    #   <p>List export errors response next token.</p>
    #   @return [String]
    class ListExportErrorsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List export request.</p>
    # @!attribute filters
    #   <p>List exports request filters.</p>
    #   @return [Types::ListExportsRequestFilters]
    # @!attribute max_results
    #   <p>List export request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List export request next token.</p>
    #   @return [String]
    class ListExportsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List export response.</p>
    # @!attribute items
    #   <p>List export response items.</p>
    #   @return [Array<Types::ExportTask>]
    # @!attribute next_token
    #   <p>List export response next token.</p>
    #   @return [String]
    class ListExportsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List exports request filters.</p>
    # @!attribute export_i_ds
    #   <p>List exports request filters export ids.</p>
    #   @return [Array<String>]
    class ListExportsRequestFilters < Struct.new(
      :export_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List import errors request.</p>
    # @!attribute import_id
    #   <p>List import errors request import id.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>List import errors request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List import errors request next token.</p>
    #   @return [String]
    class ListImportErrorsInput < Struct.new(
      :import_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List imports errors response.</p>
    # @!attribute items
    #   <p>List imports errors response items.</p>
    #   @return [Array<Types::ImportTaskError>]
    # @!attribute next_token
    #   <p>List imports errors response next token.</p>
    #   @return [String]
    class ListImportErrorsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List imports request.</p>
    # @!attribute filters
    #   <p>List imports request filters.</p>
    #   @return [Types::ListImportsRequestFilters]
    # @!attribute max_results
    #   <p>List imports request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List imports request next token.</p>
    #   @return [String]
    class ListImportsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List import response.</p>
    # @!attribute items
    #   <p>List import response items.</p>
    #   @return [Array<Types::ImportTask>]
    # @!attribute next_token
    #   <p>List import response next token.</p>
    #   @return [String]
    class ListImportsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List imports request filters.</p>
    # @!attribute import_i_ds
    #   <p>List imports request filters import IDs.</p>
    #   @return [Array<String>]
    class ListImportsRequestFilters < Struct.new(
      :import_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List managed accounts request.</p>
    # @!attribute max_results
    #   <p>List managed accounts request max results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>List managed accounts request next token.</p>
    #   @return [String]
    class ListManagedAccountsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>List managed accounts response.</p>
    # @!attribute items
    #   <p>List managed accounts response items.</p>
    #   @return [Array<Types::ManagedAccount>]
    # @!attribute next_token
    #   <p>List managed accounts response next token.</p>
    #   @return [String]
    class ListManagedAccountsResponse < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply when listing source server post migration custom actions.</p>
    #   @return [Types::SourceServerActionsRequestFilters]
    # @!attribute max_results
    #   <p>Maximum amount of items to return when listing source server post migration custom actions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token to use when listing source server post migration custom actions.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID to return when listing source server post migration custom actions.</p>
    #   @return [String]
    class ListSourceServerActionsInput < Struct.new(
      :source_server_id,
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of source server post migration custom actions.</p>
    #   @return [Array<Types::SourceServerActionDocument>]
    # @!attribute next_token
    #   <p>Next token returned when listing source server post migration custom actions.</p>
    #   @return [String]
    class ListSourceServerActionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>List tags for resource request by ARN.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>List tags for resource response.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>Launch configuration template ID.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to apply when listing template post migration custom actions.</p>
    #   @return [Types::TemplateActionsRequestFilters]
    # @!attribute max_results
    #   <p>Maximum amount of items to return when listing template post migration custom actions.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token to use when listing template post migration custom actions.</p>
    #   @return [String]
    class ListTemplateActionsInput < Struct.new(
      :launch_configuration_template_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of template post migration custom actions.</p>
    #   @return [Array<Types::TemplateActionDocument>]
    # @!attribute next_token
    #   <p>Next token returned when listing template post migration custom actions.</p>
    #   @return [String]
    class ListTemplateActionsOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Waves list filters.</p>
    #   @return [Types::ListWavesRequestFilters]
    # @!attribute max_results
    #   <p>Maximum results to return when listing waves.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Request next token.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Request account ID.</p>
    #   @return [String]
    class ListWavesInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Waves list.</p>
    #   @return [Array<Types::Wave>]
    # @!attribute next_token
    #   <p>Response next token.</p>
    #   @return [String]
    class ListWavesOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Waves list filters.</p>
    # @!attribute wave_i_ds
    #   <p>Filter waves list by wave ID.</p>
    #   @return [Array<String>]
    # @!attribute is_archived
    #   <p>Filter waves list by archival status.</p>
    #   @return [Boolean]
    class ListWavesRequestFilters < Struct.new(
      :wave_i_ds,
      :is_archived,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Managed account.</p>
    # @!attribute account_id
    #   <p>Managed account, account ID.</p>
    #   @return [String]
    class ManagedAccount < Struct.new(
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Mark as archived by Source Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Mark as archived by Account ID.</p>
    #   @return [String]
    class MarkAsArchivedInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class MarkAsArchivedOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Network interface.</p>
    # @!attribute mac_address
    #   <p>Network interface Mac address.</p>
    #   @return [String]
    # @!attribute ips
    #   <p>Network interface IPs.</p>
    #   @return [Array<String>]
    # @!attribute is_primary
    #   <p>Network interface primary IP.</p>
    #   @return [Boolean]
    class NetworkInterface < Struct.new(
      :mac_address,
      :ips,
      :is_primary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Operating System.</p>
    # @!attribute full_string
    #   <p>OS full string.</p>
    #   @return [String]
    class OS < Struct.new(
      :full_string,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Server participating in Job.</p>
    # @!attribute source_server_id
    #   <p>Participating server Source Server ID.</p>
    #   @return [String]
    # @!attribute launch_status
    #   <p>Participating server launch status.</p>
    #   @return [String]
    # @!attribute launched_ec2_instance_id
    #   <p>Participating server's launched ec2 instance ID.</p>
    #   @return [String]
    # @!attribute post_launch_actions_status
    #   <p>Participating server's Post Launch Actions Status.</p>
    #   @return [Types::PostLaunchActionsStatus]
    class ParticipatingServer < Struct.new(
      :source_server_id,
      :launch_status,
      :launched_ec2_instance_id,
      :post_launch_actions_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class PauseReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Pause Replication Request source server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Pause Replication Request account ID.</p>
    #   @return [String]
    class PauseReplicationRequest < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Post Launch Actions to executed on the Test or Cutover instance.</p>
    # @!attribute deployment
    #   <p>Deployment type in which AWS Systems Manager Documents will be executed.</p>
    #   @return [String]
    # @!attribute s3_log_bucket
    #   <p>AWS Systems Manager Command's logs S3 log bucket.</p>
    #   @return [String]
    # @!attribute s3_output_key_prefix
    #   <p>AWS Systems Manager Command's logs S3 output key prefix.</p>
    #   @return [String]
    # @!attribute cloud_watch_log_group_name
    #   <p>AWS Systems Manager Command's CloudWatch log group name.</p>
    #   @return [String]
    # @!attribute ssm_documents
    #   <p>AWS Systems Manager Documents.</p>
    #   @return [Array<Types::SsmDocument>]
    class PostLaunchActions < Struct.new(
      :deployment,
      :s3_log_bucket,
      :s3_output_key_prefix,
      :cloud_watch_log_group_name,
      :ssm_documents,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Status of the Post Launch Actions running on the Test or Cutover instance.</p>
    # @!attribute ssm_agent_discovery_datetime
    #   <p>Time where the AWS Systems Manager was detected as running on the Test or Cutover instance.</p>
    #   @return [String]
    # @!attribute post_launch_actions_launch_status_list
    #   <p>List of Post Launch Action status.</p>
    #   @return [Array<Types::JobPostLaunchActionsLaunchStatus>]
    class PostLaunchActionsStatus < Struct.new(
      :ssm_agent_discovery_datetime,
      :post_launch_actions_launch_status_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Source server post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Source server post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Source server post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute action_id
    #   <p>Source server post migration custom action ID.</p>
    #   @return [String]
    # @!attribute document_version
    #   <p>Source server post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Source server post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Source server post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Source server post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Source server post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute external_parameters
    #   <p>Source server post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Source server post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Source server post migration custom action category.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Source server post migration custom account ID.</p>
    #   @return [String]
    class PutSourceServerActionInput < Struct.new(
      :source_server_id,
      :action_name,
      :document_identifier,
      :order,
      :action_id,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      :description,
      :category,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>Source server post migration custom action ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Source server post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Source server post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Source server post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute document_version
    #   <p>Source server post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Source server post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Source server post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Source server post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Source server post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute external_parameters
    #   <p>Source server post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Source server post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Source server post migration custom action category.</p>
    #   @return [String]
    class PutSourceServerActionOutput < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      :description,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>Launch configuration template ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Template post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Template post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Template post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute action_id
    #   <p>Template post migration custom action ID.</p>
    #   @return [String]
    # @!attribute document_version
    #   <p>Template post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Template post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Template post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Template post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Template post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute operating_system
    #   <p>Operating system eligible for this template post migration custom action.</p>
    #   @return [String]
    # @!attribute external_parameters
    #   <p>Template post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Template post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Template post migration custom action category.</p>
    #   @return [String]
    class PutTemplateActionInput < Struct.new(
      :launch_configuration_template_id,
      :action_name,
      :document_identifier,
      :order,
      :action_id,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :operating_system,
      :external_parameters,
      :description,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>Template post migration custom action ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Template post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Template post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Template post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute document_version
    #   <p>Template post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Template post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Template post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Template post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Template post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute operating_system
    #   <p>Operating system eligible for this template post migration custom action.</p>
    #   @return [String]
    # @!attribute external_parameters
    #   <p>Template post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Template post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Template post migration custom action category.</p>
    #   @return [String]
    class PutTemplateActionOutput < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :operating_system,
      :external_parameters,
      :description,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID of the post migration custom action to remove.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>Source server post migration custom action ID to remove.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Source server post migration account ID.</p>
    #   @return [String]
    class RemoveSourceServerActionInput < Struct.new(
      :source_server_id,
      :action_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemoveSourceServerActionOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>Launch configuration template ID of the post migration custom action to remove.</p>
    #   @return [String]
    # @!attribute action_id
    #   <p>Template post migration custom action ID to remove.</p>
    #   @return [String]
    class RemoveTemplateActionInput < Struct.new(
      :launch_configuration_template_id,
      :action_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class RemoveTemplateActionOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Replication Configuration replicated disk.</p>
    # @!attribute device_name
    #   <p>Replication Configuration replicated disk device name.</p>
    #   @return [String]
    # @!attribute is_boot_disk
    #   <p>Replication Configuration replicated disk boot disk.</p>
    #   @return [Boolean]
    # @!attribute staging_disk_type
    #   <p>Replication Configuration replicated disk staging disk type.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>Replication Configuration replicated disk IOPs.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>Replication Configuration replicated disk throughput.</p>
    #   @return [Integer]
    class ReplicationConfigurationReplicatedDisk < Struct.new(
      :device_name,
      :is_boot_disk,
      :staging_disk_type,
      :iops,
      :throughput,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:iops] = 0 unless options.key?(:iops)
        options[:throughput] = 0 unless options.key?(:throughput)
        super
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Replication Configuration template use Fips Endpoint.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #   @return [Hash<String, String>]
    class ReplicationConfigurationTemplate < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # <p>Resource not found exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>Resource ID not found error.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type not found error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class ResumeReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Resume Replication Request source server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Resume Replication Request account ID.</p>
    #   @return [String]
    class ResumeReplicationRequest < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Retry data replication for Source Server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Retry data replication for Account ID.</p>
    #   @return [String]
    class RetryDataReplicationInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class RetryDataReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>S3 bucket source.</p>
    # @!attribute s3_bucket
    #   <p>S3 bucket source s3 bucket.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>S3 bucket source s3 key.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>S3 bucket source s3 bucket owner.</p>
    #   @return [String]
    class S3BucketSource < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request could not be completed because its exceeded the service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute resource_id
    #   <p>Exceeded the service quota resource ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Exceeded the service quota resource type.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Exceeded the service quota service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Exceeded the service quota code.</p>
    #   @return [String]
    # @!attribute quota_value
    #   <p>Exceeded the service quota value.</p>
    #   @return [Integer]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      :quota_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Source server properties.</p>
    # @!attribute last_updated_date_time
    #   <p>Source server last update date and time.</p>
    #   @return [String]
    # @!attribute recommended_instance_type
    #   <p>Source server recommended instance type.</p>
    #   @return [String]
    # @!attribute identification_hints
    #   <p>Source server identification hints.</p>
    #   @return [Types::IdentificationHints]
    # @!attribute network_interfaces
    #   <p>Source server network interfaces.</p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute disks
    #   <p>Source Server disks.</p>
    #   @return [Array<Types::Disk>]
    # @!attribute cpus
    #   <p>Source Server CPUs.</p>
    #   @return [Array<Types::CPU>]
    # @!attribute ram_bytes
    #   <p>Source server RAM in bytes.</p>
    #   @return [Integer]
    # @!attribute os
    #   <p>Source server OS.</p>
    #   @return [Types::OS]
    class SourceProperties < Struct.new(
      :last_updated_date_time,
      :recommended_instance_type,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:ram_bytes] = 0 unless options.key?(:ram_bytes)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class SourceServer < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>Source server post migration custom action ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Source server post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Source server post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Source server post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute document_version
    #   <p>Source server post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Source server post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Source server post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Source server post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Source server post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute external_parameters
    #   <p>Source server post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Source server post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Source server post migration custom action category.</p>
    #   @return [String]
    class SourceServerActionDocument < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      :description,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Source server post migration custom action filters.</p>
    # @!attribute action_i_ds
    #   <p>Action IDs to filter source server post migration custom actions by.</p>
    #   @return [Array<String>]
    class SourceServerActionsRequestFilters < Struct.new(
      :action_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Source Server connector action.</p>
    # @!attribute credentials_secret_arn
    #   <p>Source Server connector action credentials secret arn.</p>
    #   @return [String]
    # @!attribute connector_arn
    #   <p>Source Server connector action connector arn.</p>
    #   @return [String]
    class SourceServerConnectorAction < Struct.new(
      :credentials_secret_arn,
      :connector_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>AWS Systems Manager Document.</p>
    # @!attribute action_name
    #   <p>User-friendly name for the AWS Systems Manager Document.</p>
    #   @return [String]
    # @!attribute ssm_document_name
    #   <p>AWS Systems Manager Document name or full ARN.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>AWS Systems Manager Document timeout seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>If true, Cutover will not be enabled if the document has failed.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>AWS Systems Manager Document parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute external_parameters
    #   <p>AWS Systems Manager Document external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    class SsmDocument < Struct.new(
      :action_name,
      :ssm_document_name,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :external_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>AWS Systems Manager Document external parameter.</p>
    # @!attribute dynamic_path
    #   <p>AWS Systems Manager Document external parameters dynamic path.</p>
    #   @return [String]
    class SsmExternalParameter < Struct.new(
      :dynamic_path,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DynamicPath < SsmExternalParameter; end
      class Unknown < SsmExternalParameter; end
    end

    # <p>AWS Systems Manager Parameter Store parameter.</p>
    # @!attribute parameter_type
    #   <p>AWS Systems Manager Parameter Store parameter type.</p>
    #   @return [String]
    # @!attribute parameter_name
    #   <p>AWS Systems Manager Parameter Store parameter name.</p>
    #   @return [String]
    class SsmParameterStoreParameter < Struct.new(
      :parameter_type,
      :parameter_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_i_ds
    #   <p>Start Cutover by Source Server IDs.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Start Cutover by Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>Start Cutover by Account IDs</p>
    #   @return [String]
    class StartCutoverInput < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Start Cutover Job response.</p>
    #   @return [Types::Job]
    class StartCutoverOutput < Struct.new(
      :job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Start export request.</p>
    # @!attribute s3_bucket
    #   <p>Start export request s3 bucket.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>Start export request s3key.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>Start export request s3 bucket owner.</p>
    #   @return [String]
    class StartExportInput < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_bucket_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Start export response.</p>
    # @!attribute export_task
    #   <p>Start export response export task.</p>
    #   @return [Types::ExportTask]
    class StartExportOutput < Struct.new(
      :export_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Start import request.</p>
    # @!attribute client_token
    #   <p>Start import request client token.</p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p>Start import request s3 bucket source.</p>
    #   @return [Types::S3BucketSource]
    class StartImportInput < Struct.new(
      :client_token,
      :s3_bucket_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Start import response.</p>
    # @!attribute import_task
    #   <p>Start import response import task.</p>
    #   @return [Types::ImportTask]
    class StartImportOutput < Struct.new(
      :import_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>ID of source server on which to start replication.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID on which to start replication.</p>
    #   @return [String]
    class StartReplicationInput < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class StartReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_i_ds
    #   <p>Start Test for Source Server IDs.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Start Test by Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>Start Test for Account ID.</p>
    #   @return [String]
    class StartTestInput < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Start Test Job response.</p>
    #   @return [Types::Job]
    class StartTestOutput < Struct.new(
      :job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class StopReplicationOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Stop Replication Request source server ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Stop Replication Request account ID.</p>
    #   @return [String]
    class StopReplicationRequest < Struct.new(
      :source_server_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Tag resource by ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tag resource by Tags.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute action_id
    #   <p>Template post migration custom action ID.</p>
    #   @return [String]
    # @!attribute action_name
    #   <p>Template post migration custom action name.</p>
    #   @return [String]
    # @!attribute document_identifier
    #   <p>Template post migration custom action document identifier.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Template post migration custom action order.</p>
    #   @return [Integer]
    # @!attribute document_version
    #   <p>Template post migration custom action document version.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Template post migration custom action active status.</p>
    #   @return [Boolean]
    # @!attribute timeout_seconds
    #   <p>Template post migration custom action timeout in seconds.</p>
    #   @return [Integer]
    # @!attribute must_succeed_for_cutover
    #   <p>Template post migration custom action must succeed for cutover.</p>
    #   @return [Boolean]
    # @!attribute parameters
    #   <p>Template post migration custom action parameters.</p>
    #   @return [Hash<String, Array<Types::SsmParameterStoreParameter>>]
    # @!attribute operating_system
    #   <p>Operating system eligible for this template post migration custom action.</p>
    #   @return [String]
    # @!attribute external_parameters
    #   <p>Template post migration custom action external parameters.</p>
    #   @return [Hash<String, Types::SsmExternalParameter>]
    # @!attribute description
    #   <p>Template post migration custom action description.</p>
    #   @return [String]
    # @!attribute category
    #   <p>Template post migration custom action category.</p>
    #   @return [String]
    class TemplateActionDocument < Struct.new(
      :action_id,
      :action_name,
      :document_identifier,
      :order,
      :document_version,
      :active,
      :timeout_seconds,
      :must_succeed_for_cutover,
      :parameters,
      :operating_system,
      :external_parameters,
      :description,
      :category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Template post migration custom action filters.</p>
    # @!attribute action_i_ds
    #   <p>Action IDs to filter template post migration custom actions by.</p>
    #   @return [Array<String>]
    class TemplateActionsRequestFilters < Struct.new(
      :action_i_ds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_i_ds
    #   <p>Terminate Target instance by Source Server IDs.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Terminate Target instance by Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute account_id
    #   <p>Terminate Target instance by Account ID</p>
    #   @return [String]
    class TerminateTargetInstancesInput < Struct.new(
      :source_server_i_ds,
      :tags,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p>Terminate Target instance Job response.</p>
    #   @return [Types::Job]
    class TerminateTargetInstancesOutput < Struct.new(
      :job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Reached throttling quota exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>Reached throttling quota exception service code.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Reached throttling quota exception.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Reached throttling quota exception will retry after x seconds.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class UnarchiveApplicationInput < Struct.new(
      :application_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Application ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Application archival status.</p>
    #   @return [Boolean]
    # @!attribute application_aggregated_status
    #   <p>Application aggregated status.</p>
    #   @return [Types::ApplicationAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Application creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Application last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute wave_id
    #   <p>Application wave ID.</p>
    #   @return [String]
    class UnarchiveApplicationOutput < Struct.new(
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class UnarchiveWaveInput < Struct.new(
      :wave_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Wave ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Wave archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_aggregated_status
    #   <p>Wave aggregated status.</p>
    #   @return [Types::WaveAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Wave creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Wave last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    class UnarchiveWaveOutput < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Uninitialized account exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class UninitializedAccountException < Struct.new(
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Untag resource by ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Untag resource by Keys.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class UpdateApplicationInput < Struct.new(
      :application_id,
      :name,
      :description,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>Application ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Application ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Application name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Application description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Application archival status.</p>
    #   @return [Boolean]
    # @!attribute application_aggregated_status
    #   <p>Application aggregated status.</p>
    #   @return [Types::ApplicationAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Application creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Application last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Application tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute wave_id
    #   <p>Application wave ID.</p>
    #   @return [String]
    class UpdateApplicationOutput < Struct.new(
      :application_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :application_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      :wave_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Connector name.</p>
    #   @return [String]
    # @!attribute ssm_instance_id
    #   <p>Connector SSM instance ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Connector arn.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Connector tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute ssm_command_config
    #   <p>Connector SSM command config.</p>
    #   @return [Types::ConnectorSsmCommandConfig]
    class UpdateConnectorOutput < Struct.new(
      :connector_id,
      :name,
      :ssm_instance_id,
      :arn,
      :tags,
      :ssm_command_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute connector_id
    #   <p>Update Connector request connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Update Connector request name.</p>
    #   @return [String]
    # @!attribute ssm_command_config
    #   <p>Update Connector request SSM command config.</p>
    #   @return [Types::ConnectorSsmCommandConfig]
    class UpdateConnectorRequest < Struct.new(
      :connector_id,
      :name,
      :ssm_command_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Update Launch configuration by Source Server ID request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Update Launch configuration name request.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Update Launch configuration launch disposition request.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Update Launch configuration Target instance right sizing request.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Update Launch configuration copy Private IP request.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Update Launch configuration copy Tags request.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Update Launch configuration licensing request.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Update Launch configuration boot mode request.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions to executed on the Test or Cutover instance.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Update Launch configuration Account ID.</p>
    #   @return [String]
    class UpdateLaunchConfigurationInput < Struct.new(
      :source_server_id,
      :name,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Launch configuration Source Server ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Launch configuration name.</p>
    #   @return [String]
    # @!attribute ec2_launch_template_id
    #   <p>Launch configuration EC2 Launch template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition for launch configuration.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Launch configuration Target instance type right sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy Private IP during Launch Configuration.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy Tags during Launch Configuration.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Launch configuration OS licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration boot mode.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions to executed on the Test or Cutover instance.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Map auto tagging MPE ID.</p>
    #   @return [String]
    class UpdateLaunchConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>Launch Configuration Template ID.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Action to execute on the Test or Cutover instance.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private Ip.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Configure Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration template boot mode.</p>
    #   @return [String]
    # @!attribute small_volume_max_size
    #   <p>Small volume maximum size.</p>
    #   @return [Integer]
    # @!attribute small_volume_conf
    #   <p>Small volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    # @!attribute large_volume_conf
    #   <p>Large volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    class UpdateLaunchConfigurationTemplateInput < Struct.new(
      :launch_configuration_template_id,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute launch_configuration_template_id
    #   <p>ID of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>ARN of the Launch Configuration Template.</p>
    #   @return [String]
    # @!attribute post_launch_actions
    #   <p>Post Launch Actions of the Launch Configuration Template.</p>
    #   @return [Types::PostLaunchActions]
    # @!attribute enable_map_auto_tagging
    #   <p>Enable map auto tagging.</p>
    #   @return [Boolean]
    # @!attribute map_auto_tagging_mpe_id
    #   <p>Launch configuration template map auto tagging MPE ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags of the Launch Configuration Template.</p>
    #   @return [Hash<String, String>]
    # @!attribute ec2_launch_template_id
    #   <p>EC2 launch template ID.</p>
    #   @return [String]
    # @!attribute launch_disposition
    #   <p>Launch disposition.</p>
    #   @return [String]
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Target instance type right-sizing method.</p>
    #   @return [String]
    # @!attribute copy_private_ip
    #   <p>Copy private Ip.</p>
    #   @return [Boolean]
    # @!attribute associate_public_ip_address
    #   <p>Associate public Ip address.</p>
    #   @return [Boolean]
    # @!attribute copy_tags
    #   <p>Copy tags.</p>
    #   @return [Boolean]
    # @!attribute licensing
    #   <p>Configure Licensing.</p>
    #   @return [Types::Licensing]
    # @!attribute boot_mode
    #   <p>Launch configuration template boot mode.</p>
    #   @return [String]
    # @!attribute small_volume_max_size
    #   <p>Small volume maximum size.</p>
    #   @return [Integer]
    # @!attribute small_volume_conf
    #   <p>Small volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    # @!attribute large_volume_conf
    #   <p>Large volume config.</p>
    #   @return [Types::LaunchTemplateDiskConf]
    class UpdateLaunchConfigurationTemplateOutput < Struct.new(
      :launch_configuration_template_id,
      :arn,
      :post_launch_actions,
      :enable_map_auto_tagging,
      :map_auto_tagging_mpe_id,
      :tags,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :associate_public_ip_address,
      :copy_tags,
      :licensing,
      :boot_mode,
      :small_volume_max_size,
      :small_volume_conf,
      :large_volume_conf,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:small_volume_max_size] = 0 unless options.key?(:small_volume_max_size)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>Update replication configuration Source Server ID request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Update replication configuration name request.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Update replication configuration Staging Area subnet request.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Update replication configuration associate default Application Migration Service Security group request.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Update replication configuration Replication Server Security Groups IDs request.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Update replication configuration Replication Server instance type request.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Update replication configuration use dedicated Replication Server request.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Update replication configuration use default large Staging Disk type request.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>Update replication configuration replicated disks request.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>Update replication configuration EBS encryption request.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Update replication configuration EBS encryption key ARN request.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Update replication configuration bandwidth throttling request.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Update replication configuration data plane routing request.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Update replication configuration create Public IP request.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Update replication configuration Staging Area Tags request.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Update replication configuration use Fips Endpoint.</p>
    #   @return [Boolean]
    # @!attribute account_id
    #   <p>Update replication configuration Account ID request.</p>
    #   @return [String]
    class UpdateReplicationConfigurationInput < Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Replication Configuration Source Server ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Replication Configuration name.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration Staging Area subnet ID.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration associate default Application Migration Service Security Group.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration Replication Server Security Group IDs.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration Replication Server instance type.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration use Dedicated Replication Server.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration use default large Staging Disks.</p>
    #   @return [String]
    # @!attribute replicated_disks
    #   <p>Replication Configuration replicated disks.</p>
    #   @return [Array<Types::ReplicationConfigurationReplicatedDisk>]
    # @!attribute ebs_encryption
    #   <p>Replication Configuration EBS encryption.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration EBS encryption key ARN.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration set bandwidth throttling.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Replication Configuration data plane routing.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Replication Configuration create Public IP.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Replication Configuration Staging Area tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Replication Configuration use Fips Endpoint.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationOutput < Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>Update replication configuration template template ID request.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Update replication configuration template ARN request.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Update replication configuration template Staging Area subnet ID request.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Update replication configuration template associate default Application Migration Service Security group request.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Update replication configuration template Replication Server Security groups IDs request.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Update replication configuration template Replication Server instance type request.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Update replication configuration template use dedicated Replication Server request.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Update replication configuration template use default large Staging Disk type request.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>Update replication configuration template EBS encryption request.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Update replication configuration template EBS encryption key ARN request.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Update replication configuration template bandwidth throttling request.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Update replication configuration template data plane routing request.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Update replication configuration template create Public IP request.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Update replication configuration template Staging Area Tags request.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Update replication configuration template use Fips Endpoint request.</p>
    #   @return [Boolean]
    class UpdateReplicationConfigurationTemplateInput < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #   @return [String]
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #   @return [String]
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #   @return [Boolean]
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #   @return [Array<String>]
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #   @return [String]
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #   @return [Boolean]
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #   @return [String]
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #   @return [String]
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #   @return [String]
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #   @return [Integer]
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #   @return [String]
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #   @return [Boolean]
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute use_fips_endpoint
    #   <p>Replication Configuration template use Fips Endpoint.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #   @return [Hash<String, String>]
    class UpdateReplicationConfigurationTemplateOutput < Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :use_fips_endpoint,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:bandwidth_throttling] = 0 unless options.key?(:bandwidth_throttling)
        super
      end
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class UpdateSourceServerOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>ID of source server on which to update replication type.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>Replication type to which to update source server.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID on which to update replication type.</p>
    #   @return [String]
    class UpdateSourceServerReplicationTypeInput < Struct.new(
      :source_server_id,
      :replication_type,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #   @return [Types::LaunchedInstance]
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #   @return [Types::DataReplicationInfo]
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #   @return [Types::LifeCycle]
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #   @return [Types::SourceProperties]
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #   @return [String]
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>Source server application ID.</p>
    #   @return [String]
    # @!attribute user_provided_id
    #   <p>Source server user provided ID.</p>
    #   @return [String]
    # @!attribute fqdn_for_action_framework
    #   <p>Source server fqdn for action framework.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Source Server connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class UpdateSourceServerReplicationTypeOutput < Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      :application_id,
      :user_provided_id,
      :fqdn_for_action_framework,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>Update Source Server request account ID.</p>
    #   @return [String]
    # @!attribute source_server_id
    #   <p>Update Source Server request source server ID.</p>
    #   @return [String]
    # @!attribute connector_action
    #   <p>Update Source Server request connector action.</p>
    #   @return [Types::SourceServerConnectorAction]
    class UpdateSourceServerRequest < Struct.new(
      :account_id,
      :source_server_id,
      :connector_action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Account ID.</p>
    #   @return [String]
    class UpdateWaveInput < Struct.new(
      :wave_id,
      :name,
      :description,
      :account_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Wave ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Wave archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_aggregated_status
    #   <p>Wave aggregated status.</p>
    #   @return [Types::WaveAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Wave creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Wave last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    class UpdateWaveOutput < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Validate exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    # @!attribute reason
    #   <p>Validate exception reason.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>Validate exception field list.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :code,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Validate exception field.</p>
    # @!attribute name
    #   <p>Validate exception field name.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Validate exception field message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>vCenter client.</p>
    # @!attribute vcenter_client_id
    #   <p>ID of vCenter client.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Arn of vCenter client.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>Hostname of vCenter client .</p>
    #   @return [String]
    # @!attribute vcenter_uuid
    #   <p>Vcenter UUID of vCenter client.</p>
    #   @return [String]
    # @!attribute datacenter_name
    #   <p>Datacenter name of vCenter client.</p>
    #   @return [String]
    # @!attribute last_seen_datetime
    #   <p>Last seen time of vCenter client.</p>
    #   @return [String]
    # @!attribute source_server_tags
    #   <p>Tags for Source Server of vCenter client.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>Tags for vCenter client.</p>
    #   @return [Hash<String, String>]
    class VcenterClient < Struct.new(
      :vcenter_client_id,
      :arn,
      :hostname,
      :vcenter_uuid,
      :datacenter_name,
      :last_seen_datetime,
      :source_server_tags,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute wave_id
    #   <p>Wave ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>Wave ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Wave name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Wave description.</p>
    #   @return [String]
    # @!attribute is_archived
    #   <p>Wave archival status.</p>
    #   @return [Boolean]
    # @!attribute wave_aggregated_status
    #   <p>Wave aggregated status.</p>
    #   @return [Types::WaveAggregatedStatus]
    # @!attribute creation_date_time
    #   <p>Wave creation dateTime.</p>
    #   @return [String]
    # @!attribute last_modified_date_time
    #   <p>Wave last modified dateTime.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Wave tags.</p>
    #   @return [Hash<String, String>]
    class Wave < Struct.new(
      :wave_id,
      :arn,
      :name,
      :description,
      :is_archived,
      :wave_aggregated_status,
      :creation_date_time,
      :last_modified_date_time,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Wave aggregated status.</p>
    # @!attribute last_update_date_time
    #   <p>Wave aggregated status last update dateTime.</p>
    #   @return [String]
    # @!attribute replication_started_date_time
    #   <p>DateTime marking when the first source server in the wave started replication.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>Wave aggregated status health status.</p>
    #   @return [String]
    # @!attribute progress_status
    #   <p>Wave aggregated status progress status.</p>
    #   @return [String]
    # @!attribute total_applications
    #   <p>Wave aggregated status total applications amount.</p>
    #   @return [Integer]
    class WaveAggregatedStatus < Struct.new(
      :last_update_date_time,
      :replication_started_date_time,
      :health_status,
      :progress_status,
      :total_applications,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_applications] = 0 unless options.key?(:total_applications)
        super
      end
    end

  end
end
