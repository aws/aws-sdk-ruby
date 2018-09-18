# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorksCM
  module Types

    # Stores account attributes.
    #
    # @!attribute [rw] name
    #   The attribute name. The following are supported attribute names.
    #
    #   * *ServerLimit:* The number of current servers/maximum number of
    #     servers allowed. By default, you can have a maximum of 10 servers.
    #
    #   * *ManualBackupLimit:* The number of current manual backups/maximum
    #     number of backups allowed. By default, you can have a maximum of
    #     50 manual backups saved.
    #   @return [String]
    #
    # @!attribute [rw] maximum
    #   The maximum allowed value.
    #   @return [Integer]
    #
    # @!attribute [rw] used
    #   The current usage, such as the current number of servers that are
    #   associated with the account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AccountAttribute AWS API Documentation
    #
    class AccountAttribute < Struct.new(
      :name,
      :maximum,
      :used)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateNodeRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         node_name: "NodeName", # required
    #         engine_attributes: [ # required
    #           {
    #             name: "EngineAttributeName",
    #             value: "EngineAttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server with which to associate the node.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The name of the node.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   Engine attributes used for associating the node.
    #
    #   **Attributes accepted in a AssociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node is
    #     associated. By default only one organization named `default` can
    #     exist.
    #
    #   * `CHEF_NODE_PUBLIC_KEY`\: A PEM-formatted public key. This key is
    #     required for the `chef-client` agent to access the Chef API.
    #
    #   **Attributes accepted in a AssociateNode request for Puppet**
    #
    #   * `PUPPET_NODE_CSR`\: A PEM-formatted certificate-signing request
    #     (CSR) that is created by the node.
    #
    #   ^
    #   @return [Array<Types::EngineAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AssociateNodeRequest AWS API Documentation
    #
    class AssociateNodeRequest < Struct.new(
      :server_name,
      :node_name,
      :engine_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] node_association_status_token
    #   Contains a token which can be passed to the
    #   `DescribeNodeAssociationStatus` API call to get the status of the
    #   association request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/AssociateNodeResponse AWS API Documentation
    #
    class AssociateNodeResponse < Struct.new(
      :node_association_status_token)
      include Aws::Structure
    end

    # Describes a single backup.
    #
    # @!attribute [rw] backup_arn
    #   The ARN of the backup.
    #   @return [String]
    #
    # @!attribute [rw] backup_id
    #   The generated ID of the backup. Example:
    #   `myServerName-yyyyMMddHHmmssSSS`
    #   @return [String]
    #
    # @!attribute [rw] backup_type
    #   The backup type. Valid values are `automated` or `manual`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time stamp when the backup was created in the database. Example:
    #   `2016-07-29T13:38:47.520Z`
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A user-provided description for a manual backup. This field is empty
    #   for automated backups.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The engine type that is obtained from the server when the backup is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] engine_model
    #   The engine model that is obtained from the server when the backup is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version that is obtained from the server when the backup
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The EC2 instance profile ARN that is obtained from the server when
    #   the backup is created. Because this value is stored, you are not
    #   required to provide the InstanceProfileArn again if you restore a
    #   backup.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type that is obtained from the server when the backup
    #   is created.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The key pair that is obtained from the server when the backup is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The preferred backup period that is obtained from the server when
    #   the backup is created.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The preferred maintenance period that is obtained from the server
    #   when the backup is created.
    #   @return [String]
    #
    # @!attribute [rw] s3_data_size
    #   This field is deprecated and is no longer used.
    #   @return [Integer]
    #
    # @!attribute [rw] s3_data_url
    #   This field is deprecated and is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] s3_log_url
    #   The Amazon S3 URL of the backup's log file.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs that are obtained from the server when the
    #   backup is created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] server_name
    #   The name of the server from which the backup was made.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The service role ARN that is obtained from the server when the
    #   backup is created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a backup while in progress.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   An informational message about backup status.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs that are obtained from the server when the backup is
    #   created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tools_version
    #   The version of AWS OpsWorks CM-specific tools that is obtained from
    #   the server when the backup is created.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The IAM user ARN of the requester for manual backups. This field is
    #   empty for automated backups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/Backup AWS API Documentation
    #
    class Backup < Struct.new(
      :backup_arn,
      :backup_id,
      :backup_type,
      :created_at,
      :description,
      :engine,
      :engine_model,
      :engine_version,
      :instance_profile_arn,
      :instance_type,
      :key_pair,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :s3_data_size,
      :s3_data_url,
      :s3_log_url,
      :security_group_ids,
      :server_name,
      :service_role_arn,
      :status,
      :status_description,
      :subnet_ids,
      :tools_version,
      :user_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBackupRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         description: "String",
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server that you want to back up.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-defined description of the backup.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateBackupRequest AWS API Documentation
    #
    class CreateBackupRequest < Struct.new(
      :server_name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] backup
    #   Backup created by request.
    #   @return [Types::Backup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateBackupResponse AWS API Documentation
    #
    class CreateBackupResponse < Struct.new(
      :backup)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServerRequest
    #   data as a hash:
    #
    #       {
    #         associate_public_ip_address: false,
    #         disable_automated_backup: false,
    #         engine: "String",
    #         engine_model: "String",
    #         engine_version: "String",
    #         engine_attributes: [
    #           {
    #             name: "EngineAttributeName",
    #             value: "EngineAttributeValue",
    #           },
    #         ],
    #         backup_retention_count: 1,
    #         server_name: "ServerName", # required
    #         instance_profile_arn: "InstanceProfileArn", # required
    #         instance_type: "String", # required
    #         key_pair: "KeyPair",
    #         preferred_maintenance_window: "TimeWindowDefinition",
    #         preferred_backup_window: "TimeWindowDefinition",
    #         security_group_ids: ["String"],
    #         service_role_arn: "ServiceRoleArn", # required
    #         subnet_ids: ["String"],
    #         backup_id: "BackupId",
    #       }
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate a public IP address with a server that you are launching.
    #   Valid values are `true` or `false`. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_automated_backup
    #   Enable or disable scheduled backups. Valid values are `true` or
    #   `false`. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   The configuration management engine to use. Valid values include
    #   `Chef` and `Puppet`.
    #   @return [String]
    #
    # @!attribute [rw] engine_model
    #   The engine model of the server. Valid values in this release include
    #   `Monolithic` for Puppet and `Single` for Chef.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The major release version of the engine that you want to use. For a
    #   Chef server, the valid value for EngineVersion is currently `12`.
    #   For a Puppet server, the valid value is `2017`.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   Optional engine attributes on a specified server.
    #
    #   **Attributes accepted in a Chef createServer request:**
    #
    #   * `CHEF_PIVOTAL_KEY`\: A base64-encoded RSA private key that is not
    #     stored by AWS OpsWorks for Chef Automate. This private key is
    #     required to access the Chef API. When no CHEF\_PIVOTAL\_KEY is
    #     set, one is generated and returned in the response.
    #
    #   * `CHEF_DELIVERY_ADMIN_PASSWORD`\: The password for the
    #     administrative user in the Chef Automate GUI. The password length
    #     is a minimum of eight characters, and a maximum of 32. The
    #     password can contain letters, numbers, and special characters
    #     (!/@#$%^&amp;+=\_). The password must contain at least one lower
    #     case letter, one upper case letter, one number, and one special
    #     character. When no CHEF\_DELIVERY\_ADMIN\_PASSWORD is set, one is
    #     generated and returned in the response.
    #
    #   **Attributes accepted in a Puppet createServer request:**
    #
    #   * `PUPPET_ADMIN_PASSWORD`\: To work with the Puppet Enterprise
    #     console, a password must use ASCII characters.
    #
    #   ^
    #   @return [Array<Types::EngineAttribute>]
    #
    # @!attribute [rw] backup_retention_count
    #   The number of automated backups that you want to keep. Whenever a
    #   new backup is created, AWS OpsWorks CM deletes the oldest backups if
    #   this number is exceeded. The default value is `1`.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The name of the server. The server name must be unique within your
    #   AWS account, within each region. Server names must start with a
    #   letter; then letters, numbers, or hyphens (-) are allowed, up to a
    #   maximum of 40 characters.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The ARN of the instance profile that your Amazon EC2 instances use.
    #   Although the AWS OpsWorks console typically creates the instance
    #   profile for you, if you are using API commands instead, run the
    #   service-role-creation.yaml AWS CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the
    #   instance profile you need.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The Amazon EC2 instance type to use. For example, `m4.large`.
    #   Recommended instance types include `t2.medium` and greater, `m4.*`,
    #   or `c4.xlarge` and greater.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The Amazon EC2 key pair to set for the instance. This parameter is
    #   optional; if desired, you may specify this parameter to connect to
    #   your instances by using SSH.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The start time for a one-hour period each week during which AWS
    #   OpsWorks CM performs maintenance on the instance. Valid values must
    #   be specified in the following format: `DDD:HH:MM`. The specified
    #   time is in coordinated universal time (UTC). The default value is a
    #   random one-hour period on Tuesday, Wednesday, or Friday. See
    #   `TimeWindowDefinition` for more information.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The start time for a one-hour period during which AWS OpsWorks CM
    #   backs up application-level data on your server if automated backups
    #   are enabled. Valid values must be specified in one of the following
    #   formats:
    #
    #   * `HH:MM` for daily backups
    #
    #   * `DDD:HH:MM` for weekly backups
    #
    #   The specified time is in coordinated universal time (UTC). The
    #   default value is a random, daily start time.
    #
    #   **Example:** `08:00`, which represents a daily start time of 08:00
    #   UTC.
    #
    #   **Example:** `Mon:08:00`, which represents a start time of every
    #   Monday at 08:00 UTC. (8:00 a.m.)
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs to attach to the Amazon EC2 instance.
    #   If you add this parameter, the specified security groups must be
    #   within the VPC that is specified by `SubnetIds`.
    #
    #   If you do not specify this parameter, AWS OpsWorks CM creates one
    #   new security group that uses TCP ports 22 and 443, open to 0.0.0.0/0
    #   (everyone).
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role_arn
    #   The service role that the AWS OpsWorks CM service backend uses to
    #   work with your account. Although the AWS OpsWorks management console
    #   typically creates the service role for you, if you are using the AWS
    #   CLI or API commands, run the service-role-creation.yaml AWS
    #   CloudFormation template, located at
    #   https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
    #   This template creates a CloudFormation stack that includes the
    #   service role and instance profile that you need.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The IDs of subnets in which to launch the server EC2 instance.
    #
    #   Amazon EC2-Classic customers: This field is required. All servers
    #   must run within a VPC. The VPC must have "Auto Assign Public IP"
    #   enabled.
    #
    #   EC2-VPC customers: This field is optional. If you do not specify
    #   subnet IDs, your EC2 instances are created in a default subnet that
    #   is selected by Amazon EC2. If you specify subnet IDs, the VPC must
    #   have "Auto Assign Public IP" enabled.
    #
    #   For more information about supported Amazon EC2 platforms, see
    #   [Supported Platforms][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_id
    #   If you specify this field, AWS OpsWorks CM creates the server by
    #   using the backup represented by BackupId.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateServerRequest AWS API Documentation
    #
    class CreateServerRequest < Struct.new(
      :associate_public_ip_address,
      :disable_automated_backup,
      :engine,
      :engine_model,
      :engine_version,
      :engine_attributes,
      :backup_retention_count,
      :server_name,
      :instance_profile_arn,
      :instance_type,
      :key_pair,
      :preferred_maintenance_window,
      :preferred_backup_window,
      :security_group_ids,
      :service_role_arn,
      :subnet_ids,
      :backup_id)
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   The server that is created by the request.
    #   @return [Types::Server]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/CreateServerResponse AWS API Documentation
    #
    class CreateServerResponse < Struct.new(
      :server)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBackupRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId", # required
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup to delete. Run the DescribeBackups command to
    #   get a list of backup IDs. Backup IDs are in the format
    #   `ServerName-yyyyMMddHHmmssSSS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteBackupRequest AWS API Documentation
    #
    class DeleteBackupRequest < Struct.new(
      :backup_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteBackupResponse AWS API Documentation
    #
    class DeleteBackupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteServerRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #       }
    #
    # @!attribute [rw] server_name
    #   The ID of the server to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteServerRequest AWS API Documentation
    #
    class DeleteServerRequest < Struct.new(
      :server_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DeleteServerResponse AWS API Documentation
    #
    class DeleteServerResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeAccountAttributesRequest AWS API Documentation
    #
    class DescribeAccountAttributesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] attributes
    #   The attributes that are currently set for the account.
    #   @return [Array<Types::AccountAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeAccountAttributesResponse AWS API Documentation
    #
    class DescribeAccountAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBackupsRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId",
    #         server_name: "ServerName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] backup_id
    #   Describes a single backup.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Returns backups for the server with the specified ServerName.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   This is not currently implemented for `DescribeBackups` requests.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This is not currently implemented for `DescribeBackups` requests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeBackupsRequest AWS API Documentation
    #
    class DescribeBackupsRequest < Struct.new(
      :backup_id,
      :server_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] backups
    #   Contains the response to a `DescribeBackups` request.
    #   @return [Array<Types::Backup>]
    #
    # @!attribute [rw] next_token
    #   This is not currently implemented for `DescribeBackups` requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeBackupsResponse AWS API Documentation
    #
    class DescribeBackupsResponse < Struct.new(
      :backups,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server for which you want to view events.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   NextToken is a string that is returned in some command responses. It
    #   indicates that not all entries have been returned, and that you must
    #   run at least one more request to get remaining items. To get
    #   remaining results, call `DescribeEvents` again, and assign the token
    #   from the previous results as the value of the `nextToken` parameter.
    #   If there are no more results, the response object's `nextToken`
    #   parameter value is `null`. Setting a `nextToken` value that was not
    #   returned in your previous results causes an
    #   `InvalidNextTokenException` to occur.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   To receive a paginated response, use this parameter to specify the
    #   maximum number of results to be returned with a single call. If the
    #   number of available results exceeds this maximum, the response
    #   includes a `NextToken` value that you can assign to the `NextToken`
    #   request parameter to get the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeEventsRequest AWS API Documentation
    #
    class DescribeEventsRequest < Struct.new(
      :server_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] server_events
    #   Contains the response to a `DescribeEvents` request.
    #   @return [Array<Types::ServerEvent>]
    #
    # @!attribute [rw] next_token
    #   NextToken is a string that is returned in some command responses. It
    #   indicates that not all entries have been returned, and that you must
    #   run at least one more request to get remaining items. To get
    #   remaining results, call `DescribeEvents` again, and assign the token
    #   from the previous results as the value of the `nextToken` parameter.
    #   If there are no more results, the response object's `nextToken`
    #   parameter value is `null`. Setting a `nextToken` value that was not
    #   returned in your previous results causes an
    #   `InvalidNextTokenException` to occur.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :server_events,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNodeAssociationStatusRequest
    #   data as a hash:
    #
    #       {
    #         node_association_status_token: "NodeAssociationStatusToken", # required
    #         server_name: "ServerName", # required
    #       }
    #
    # @!attribute [rw] node_association_status_token
    #   The token returned in either the AssociateNodeResponse or the
    #   DisassociateNodeResponse.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server from which to disassociate the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeNodeAssociationStatusRequest AWS API Documentation
    #
    class DescribeNodeAssociationStatusRequest < Struct.new(
      :node_association_status_token,
      :server_name)
      include Aws::Structure
    end

    # @!attribute [rw] node_association_status
    #   The status of the association or disassociation request.
    #
    #   **Possible values:**
    #
    #   * `SUCCESS`\: The association or disassociation succeeded.
    #
    #   * `FAILED`\: The association or disassociation failed.
    #
    #   * `IN_PROGRESS`\: The association or disassociation is still in
    #     progress.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   Attributes specific to the node association. In Puppet, the attibute
    #   PUPPET\_NODE\_CERT contains the signed certificate (the result of
    #   the CSR).
    #   @return [Array<Types::EngineAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeNodeAssociationStatusResponse AWS API Documentation
    #
    class DescribeNodeAssociationStatusResponse < Struct.new(
      :node_association_status,
      :engine_attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServersRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] server_name
    #   Describes the server with the specified ServerName.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   This is not currently implemented for `DescribeServers` requests.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This is not currently implemented for `DescribeServers` requests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeServersRequest AWS API Documentation
    #
    class DescribeServersRequest < Struct.new(
      :server_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] servers
    #   Contains the response to a `DescribeServers` request.
    #
    #   *For Puppet Server:*
    #   `DescribeServersResponse$Servers$EngineAttributes` contains
    #   PUPPET\_API\_CA\_CERT. This is the PEM-encoded CA certificate that
    #   is used by the Puppet API over TCP port number 8140. The CA
    #   certificate is also used to sign node certificates.
    #   @return [Array<Types::Server>]
    #
    # @!attribute [rw] next_token
    #   This is not currently implemented for `DescribeServers` requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DescribeServersResponse AWS API Documentation
    #
    class DescribeServersResponse < Struct.new(
      :servers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateNodeRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         node_name: "NodeName", # required
    #         engine_attributes: [
    #           {
    #             name: "EngineAttributeName",
    #             value: "EngineAttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server from which to disassociate the node.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The name of the client node.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   Engine attributes that are used for disassociating the node. No
    #   attributes are required for Puppet.
    #
    #   **Attributes required in a DisassociateNode request for Chef**
    #
    #   * `CHEF_ORGANIZATION`\: The Chef organization with which the node
    #     was associated. By default only one organization named `default`
    #     can exist.
    #
    #   ^
    #   @return [Array<Types::EngineAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DisassociateNodeRequest AWS API Documentation
    #
    class DisassociateNodeRequest < Struct.new(
      :server_name,
      :node_name,
      :engine_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] node_association_status_token
    #   Contains a token which can be passed to the
    #   `DescribeNodeAssociationStatus` API call to get the status of the
    #   disassociation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/DisassociateNodeResponse AWS API Documentation
    #
    class DisassociateNodeResponse < Struct.new(
      :node_association_status_token)
      include Aws::Structure
    end

    # A name and value pair that is specific to the engine of the server.
    #
    # @note When making an API call, you may pass EngineAttribute
    #   data as a hash:
    #
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the engine attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the engine attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/EngineAttribute AWS API Documentation
    #
    class EngineAttribute < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreServerRequest
    #   data as a hash:
    #
    #       {
    #         backup_id: "BackupId", # required
    #         server_name: "ServerName", # required
    #         instance_type: "String",
    #         key_pair: "KeyPair",
    #       }
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup that you want to use to restore a server.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server that you want to restore.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The type of the instance to create. Valid values must be specified
    #   in the following format: `^([cm][34]|t2).*` For example, `m4.large`.
    #   Valid values are `t2.medium`, `m4.large`, and `m4.2xlarge`. If you
    #   do not specify this parameter, RestoreServer uses the instance type
    #   from the specified backup.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The name of the key pair to set on the new EC2 instance. This can be
    #   helpful if the administrator no longer has the SSH key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/RestoreServerRequest AWS API Documentation
    #
    class RestoreServerRequest < Struct.new(
      :backup_id,
      :server_name,
      :instance_type,
      :key_pair)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/RestoreServerResponse AWS API Documentation
    #
    class RestoreServerResponse < Aws::EmptyStructure; end

    # Describes a configuration management server.
    #
    # @!attribute [rw] associate_public_ip_address
    #   Associate a public IP address with a server that you are launching.
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_count
    #   The number of automated backups to keep.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The name of the server.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time stamp of server creation. Example `2016-07-29T13:38:47.520Z`
    #   @return [Time]
    #
    # @!attribute [rw] cloud_formation_stack_arn
    #   The ARN of the CloudFormation stack that was used to create the
    #   server.
    #   @return [String]
    #
    # @!attribute [rw] disable_automated_backup
    #   Disables automated backups. The number of stored backups is
    #   dependent on the value of PreferredBackupCount.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   A DNS name that can be used to access the engine. Example:
    #   `myserver-asdfghjkl.us-east-1.opsworks.io`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The engine type of the server. Valid values in this release include
    #   `Chef` and `Puppet`.
    #   @return [String]
    #
    # @!attribute [rw] engine_model
    #   The engine model of the server. Valid values in this release include
    #   `Monolithic` for Puppet and `Single` for Chef.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   The response of a createServer() request returns the master
    #   credential to access the server in EngineAttributes. These
    #   credentials are not stored by AWS OpsWorks CM; they are returned
    #   only as part of the result of createServer().
    #
    #   **Attributes returned in a createServer response for Chef**
    #
    #   * `CHEF_PIVOTAL_KEY`\: A base64-encoded RSA private key that is
    #     generated by AWS OpsWorks for Chef Automate. This private key is
    #     required to access the Chef API.
    #
    #   * `CHEF_STARTER_KIT`\: A base64-encoded ZIP file. The ZIP file
    #     contains a Chef starter kit, which includes a README, a
    #     configuration file, and the required RSA private key. Save this
    #     file, unzip it, and then change to the directory where you've
    #     unzipped the file contents. From this directory, you can run Knife
    #     commands.
    #
    #   **Attributes returned in a createServer response for Puppet**
    #
    #   * `PUPPET_STARTER_KIT`\: A base64-encoded ZIP file. The ZIP file
    #     contains a Puppet starter kit, including a README and a required
    #     private key. Save this file, unzip it, and then change to the
    #     directory where you've unzipped the file contents.
    #
    #   * `PUPPET_ADMIN_PASSWORD`\: An administrator password that you can
    #     use to sign in to the Puppet Enterprise console after the server
    #     is online.
    #   @return [Array<Types::EngineAttribute>]
    #
    # @!attribute [rw] engine_version
    #   The engine version of the server. For a Chef server, the valid value
    #   for EngineVersion is currently `12`. For a Puppet server, the valid
    #   value is `2017`.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_arn
    #   The instance profile ARN of the server.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the server, as specified in the CloudFormation
    #   stack. This might not be the same instance type that is shown in the
    #   EC2 console.
    #   @return [String]
    #
    # @!attribute [rw] key_pair
    #   The key pair associated with the server.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_status
    #   The status of the most recent server maintenance run. Shows
    #   `SUCCESS` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The preferred maintenance period specified for the server.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The preferred backup period specified for the server.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs for the server, as specified in the
    #   CloudFormation stack. These might not be the same security groups
    #   that are shown in the EC2 console.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role_arn
    #   The service role ARN used to create the server.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The server's status. This field displays the states of actions in
    #   progress, such as creating, running, or backing up the server, as
    #   well as the server's health state.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Depending on the server status, this field has either a
    #   human-readable message (such as a create or backup error), or an
    #   escaped block of JSON (used for health check results).
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs specified in a CreateServer request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] server_arn
    #   The ARN of the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/Server AWS API Documentation
    #
    class Server < Struct.new(
      :associate_public_ip_address,
      :backup_retention_count,
      :server_name,
      :created_at,
      :cloud_formation_stack_arn,
      :disable_automated_backup,
      :endpoint,
      :engine,
      :engine_model,
      :engine_attributes,
      :engine_version,
      :instance_profile_arn,
      :instance_type,
      :key_pair,
      :maintenance_status,
      :preferred_maintenance_window,
      :preferred_backup_window,
      :security_group_ids,
      :service_role_arn,
      :status,
      :status_reason,
      :subnet_ids,
      :server_arn)
      include Aws::Structure
    end

    # An event that is related to the server, such as the start of
    # maintenance or backup.
    #
    # @!attribute [rw] created_at
    #   The time when the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] server_name
    #   The name of the server on or for which the event occurred.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable informational or status message.
    #   @return [String]
    #
    # @!attribute [rw] log_url
    #   The Amazon S3 URL of the event's log file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/ServerEvent AWS API Documentation
    #
    class ServerEvent < Struct.new(
      :created_at,
      :server_name,
      :message,
      :log_url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMaintenanceRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         engine_attributes: [
    #           {
    #             name: "EngineAttributeName",
    #             value: "EngineAttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server on which to run maintenance.
    #   @return [String]
    #
    # @!attribute [rw] engine_attributes
    #   Engine attributes that are specific to the server on which you want
    #   to run maintenance.
    #   @return [Array<Types::EngineAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/StartMaintenanceRequest AWS API Documentation
    #
    class StartMaintenanceRequest < Struct.new(
      :server_name,
      :engine_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   Contains the response to a `StartMaintenance` request.
    #   @return [Types::Server]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/StartMaintenanceResponse AWS API Documentation
    #
    class StartMaintenanceResponse < Struct.new(
      :server)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServerEngineAttributesRequest
    #   data as a hash:
    #
    #       {
    #         server_name: "ServerName", # required
    #         attribute_name: "AttributeName", # required
    #         attribute_value: "AttributeValue",
    #       }
    #
    # @!attribute [rw] server_name
    #   The name of the server to update.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the engine attribute to update.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The value to set for the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerEngineAttributesRequest AWS API Documentation
    #
    class UpdateServerEngineAttributesRequest < Struct.new(
      :server_name,
      :attribute_name,
      :attribute_value)
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   Contains the response to an `UpdateServerEngineAttributes` request.
    #   @return [Types::Server]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerEngineAttributesResponse AWS API Documentation
    #
    class UpdateServerEngineAttributesResponse < Struct.new(
      :server)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServerRequest
    #   data as a hash:
    #
    #       {
    #         disable_automated_backup: false,
    #         backup_retention_count: 1,
    #         server_name: "ServerName", # required
    #         preferred_maintenance_window: "TimeWindowDefinition",
    #         preferred_backup_window: "TimeWindowDefinition",
    #       }
    #
    # @!attribute [rw] disable_automated_backup
    #   Setting DisableAutomatedBackup to `true` disables automated or
    #   scheduled backups. Automated backups are enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_count
    #   Sets the number of automated backups that you want to keep.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The name of the server to update.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   `DDD:HH:MM` (weekly start time) or `HH:MM` (daily start time).
    #
    #   Time windows always use coordinated universal time (UTC). Valid
    #   strings for day of week (`DDD`) are: `Mon`, `Tue`, `Wed`, `Thr`,
    #   `Fri`, `Sat`, or `Sun`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerRequest AWS API Documentation
    #
    class UpdateServerRequest < Struct.new(
      :disable_automated_backup,
      :backup_retention_count,
      :server_name,
      :preferred_maintenance_window,
      :preferred_backup_window)
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   Contains the response to a `UpdateServer` request.
    #   @return [Types::Server]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opsworkscm-2016-11-01/UpdateServerResponse AWS API Documentation
    #
    class UpdateServerResponse < Struct.new(
      :server)
      include Aws::Structure
    end

  end
end
