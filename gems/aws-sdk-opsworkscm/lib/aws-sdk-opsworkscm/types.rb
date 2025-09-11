# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorksCM
  # This module contains the types returned by client operations.
  module Types

    # <p>Stores account attributes.
    #     </p>
    # @!attribute name
    #   <p>
    #         The attribute name. The following are supported attribute names.
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a 
    #           maximum of 10 servers.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, 
    #           you can have a maximum 
    #           of 50 manual backups saved.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute maximum
    #   <p>
    #         The maximum allowed value.
    #       </p>
    #   @return [Integer]
    # @!attribute used
    #   <p>
    #         The current usage, such as the current number of servers that are associated with the account.
    #       </p>
    #   @return [Integer]
    class AccountAttribute < Struct.new(
      :name,
      :maximum,
      :used,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server with which to associate the node.
    #       </p>
    #   @return [String]
    # @!attribute node_name
    #   <p>The name of the node.
    #       </p>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>Engine attributes used for associating the node.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node is associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API.
    #       </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Puppet</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node.
    #       </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    class AssociateNodeRequest < Struct.new(
      :server_name,
      :node_name,
      :engine_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_association_status_token
    #   <p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request.
    #       </p>
    #   @return [String]
    class AssociateNodeResponse < Struct.new(
      :node_association_status_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single backup.
    #     </p>
    # @!attribute backup_arn
    #   <p>The ARN of the backup.
    #       </p>
    #   @return [String]
    # @!attribute backup_id
    #   <p>
    #         The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code>
    #            </p>
    #   @return [String]
    # @!attribute backup_type
    #   <p>
    #         The backup type. Valid values are <code>automated</code> or <code>manual</code>.
    #       </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>
    #         The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code>
    #            </p>
    #   @return [Time]
    # @!attribute description
    #   <p>
    #         A user-provided description for a manual backup. This field is empty for automated backups.
    #       </p>
    #   @return [String]
    # @!attribute engine
    #   <p>
    #         The engine type that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute engine_model
    #   <p>
    #         The engine model that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>
    #         The engine version that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>
    #         The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored,
    #         you are not required to provide the InstanceProfileArn again if you restore a backup.
    #       </p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>
    #         The instance type that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute key_pair
    #   <p>
    #         The key pair that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>
    #         The preferred backup period that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>
    #         The preferred maintenance period that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute s3_data_size
    #   <p>
    #         This field is deprecated and is no longer used.
    #       </p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute s3_data_url
    #   <p>
    #         This field is deprecated and is no longer used.
    #       </p>
    #   @deprecated
    #   @return [String]
    # @!attribute s3_log_url
    #   <p>
    #         The Amazon S3 URL of the backup's log file.
    #       </p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>
    #         The security group IDs that are obtained from the server when the backup is created.
    #       </p>
    #   @return [Array<String>]
    # @!attribute server_name
    #   <p>
    #         The name of the server from which the backup was made.
    #       </p>
    #   @return [String]
    # @!attribute service_role_arn
    #   <p>
    #         The service role ARN that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a backup while in progress.
    #       </p>
    #   @return [String]
    # @!attribute status_description
    #   <p>
    #         An informational message about backup status.
    #       </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>
    #         The subnet IDs that are obtained from the server when the backup is created.
    #       </p>
    #   @return [Array<String>]
    # @!attribute tools_version
    #   <p>
    #         The version of OpsWorks CM-specific tools that is obtained from the server when the backup is created.
    #       </p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>
    #         The user ARN of the requester for manual backups. This field is empty for automated backups.
    #       </p>
    #   @return [String]
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
      :user_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server that you want to back up.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         A user-defined description of the backup.
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values to attach to an OpsWorks CM server backup.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the 
    #           following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the 
    #           following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for tag-supported OpsWorks CM resources.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class CreateBackupRequest < Struct.new(
      :server_name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup
    #   <p>Backup created by request.</p>
    #   @return [Types::Backup]
    class CreateBackupResponse < Struct.new(
      :backup,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associate_public_ip_address
    #   <p>
    #           Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    #   @return [Boolean]
    # @!attribute custom_domain
    #   <p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom 
    #         domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the 
    #         generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code> 
    #         and <code>CustomPrivateKey</code>.</p>
    #   @return [String]
    # @!attribute custom_certificate
    #   <p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a 
    #         custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>
    #            <ul>
    #               <li>
    #                  <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires 
    #           (the certificate's <code>NotAfter</code> date).</p>
    #               </li>
    #               <li>
    #                  <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute custom_private_key
    #   <p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. 
    #         If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>
    #   @return [String]
    # @!attribute disable_automated_backup
    #   <p>
    #           Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    #   @return [Boolean]
    # @!attribute engine
    #   <p>
    #           The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.
    #         </p>
    #   @return [String]
    # @!attribute engine_model
    #   <p>
    #           The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    #         </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>
    #           The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion 
    #           is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.
    #         </p>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>Optional engine attributes on a specified server.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a Chef createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A
    #         base64-encoded RSA public key. The corresponding private key is required to
    #         access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
    #         generated and returned in the response.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:
    #         The password for the administrative user in the Chef Automate web-based dashboard. The
    #         password length is a minimum of eight characters, and a maximum of 32. The
    #         password can contain letters, numbers, and special characters
    #         (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper
    #         case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is
    #         generated and returned in the response.</p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a Puppet createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository 
    #           (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add 
    #           PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    # @!attribute backup_retention_count
    #   <p>
    #           The number of automated backups that you want to keep. Whenever a new backup is created, OpsWorks CM deletes the oldest backups if this number is exceeded.
    #           The default value is <code>1</code>.
    #         </p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>
    #           The name of the server. The server name must be unique within your Amazon Web Services account, within each region.
    #           Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
    #         </p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>
    #           The ARN of the instance profile that your Amazon EC2
    #           instances use. The OpsWorks console typically creates
    #           the instance profile for you</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>
    #           The Amazon EC2 instance type to use. For example, <code>m5.large</code>.
    #         </p>
    #   @return [String]
    # @!attribute key_pair
    #   <p>
    #           The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
    #         </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>
    #         The start time for a one-hour period each week during which OpsWorks CM performs maintenance on the instance.
    #         Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).
    #         The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.
    #       </p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>,
    #         which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
    #       </p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>
    #         The start time for a one-hour period during which OpsWorks CM backs up application-level data on your server
    #         if automated backups are enabled. Valid values must be specified in one of the following formats:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HH:MM</code> for daily backups</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DDD:HH:MM</code> for weekly backups</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>
    #         A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups
    #         must be within the VPC that is specified by <code>SubnetIds</code>.
    #       </p>
    #            <p>
    #         If you do not specify this parameter, OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to
    #         0.0.0.0/0 (everyone).
    #       </p>
    #   @return [Array<String>]
    # @!attribute service_role_arn
    #   <p>
    #         The service role that the OpsWorks CM service backend uses to work with your account.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>
    #         The IDs of subnets in which to launch the server EC2 instance.
    #       </p>
    #            <p>
    #         Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>
    #         EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that 
    #         is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>For more information about supported Amazon EC2 platforms, see
    #         <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values to attach to an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    # @!attribute backup_id
    #   <p>
    #         If you specify this field, OpsWorks CM creates the server by using the backup represented by BackupId.
    #       </p>
    #   @return [String]
    class CreateServerRequest < Struct.new(
      :associate_public_ip_address,
      :custom_domain,
      :custom_certificate,
      :custom_private_key,
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
      :tags,
      :backup_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>The server that is created by the request.
    #       </p>
    #   @return [Types::Server]
    class CreateServerResponse < Struct.new(
      :server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs.
    #         Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>.
    #       </p>
    #   @return [String]
    class DeleteBackupRequest < Struct.new(
      :backup_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteBackupResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The ID of the server to delete.</p>
    #   @return [String]
    class DeleteServerRequest < Struct.new(
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServerResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeAccountAttributesRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>
    #         The attributes that are currently set for the account.
    #       </p>
    #   @return [Array<Types::AccountAttribute>]
    class DescribeAccountAttributesResponse < Struct.new(
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>Describes a single backup.
    #       </p>
    #   @return [String]
    # @!attribute server_name
    #   <p>Returns backups for the server with the specified ServerName.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    #   @return [Integer]
    class DescribeBackupsRequest < Struct.new(
      :backup_id,
      :server_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backups
    #   <p>Contains the response to a <code>DescribeBackups</code> request.
    #       </p>
    #   @return [Array<Types::Backup>]
    # @!attribute next_token
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    #   @return [String]
    class DescribeBackupsResponse < Struct.new(
      :backups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server for which you want to view events.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #         not all entries have been returned, and that you must run at least one more request to get remaining
    #         items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
    #         results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #         the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #         Setting a <code>nextToken</code> value that was not returned in
    #         your previous results causes an <code>InvalidNextTokenException</code> to occur.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds
    #         this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #         request parameter to get the next set of results.
    #       </p>
    #   @return [Integer]
    class DescribeEventsRequest < Struct.new(
      :server_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_events
    #   <p>Contains the response to a <code>DescribeEvents</code> request.
    #       </p>
    #   @return [Array<Types::ServerEvent>]
    # @!attribute next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #         not all entries have been returned, and that you must run at least one more request to get remaining
    #         items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
    #         results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #         the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #         Setting a <code>nextToken</code> value that was not returned in
    #         your previous results causes an <code>InvalidNextTokenException</code> to occur.
    #       </p>
    #   @return [String]
    class DescribeEventsResponse < Struct.new(
      :server_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_association_status_token
    #   <p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.
    #       </p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    #   @return [String]
    class DescribeNodeAssociationStatusRequest < Struct.new(
      :node_association_status_token,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_association_status
    #   <p>The status of the association or disassociation request.
    #       </p>
    #            <p class="title">
    #               <b>Possible values:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCESS</code>: The association or disassociation succeeded.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The association or disassociation failed.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The association or disassociation is still in progress.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>Attributes specific to the node association. 
    #         In Puppet, the attribute PUPPET_NODE_CERT contains the signed certificate (the result of the CSR).
    #       </p>
    #   @return [Array<Types::EngineAttribute>]
    class DescribeNodeAssociationStatusResponse < Struct.new(
      :node_association_status,
      :engine_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>Describes the server with the specified ServerName.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    #   @return [Integer]
    class DescribeServersRequest < Struct.new(
      :server_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute servers
    #   <p>Contains the response to a <code>DescribeServers</code> request.</p>
    #            <p>
    #               <i>For Chef Automate servers:</i>  If <code>DescribeServersResponse$Servers$EngineAttributes</code> includes 
    #         CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server to Chef Automate 2. To be eligible for upgrade, a server running 
    #         Chef Automate 1 must have had at least one successful maintenance run after November 1, 2019.</p>
    #            <p>
    #               <i>For Puppet servers:</i>
    #               <code>DescribeServersResponse$Servers$EngineAttributes</code> contains
    #         the following two responses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_API_CA_CERT</code>, the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. 
    #           The CA certificate is also used to sign node certificates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_API_CRL</code>, a certificate revocation list. The certificate revocation list is for internal 
    #           maintenance purposes only. For more information about the Puppet certificate revocation list, see 
    #           <a href="https://puppet.com/docs/puppet/5.5/man/certificate_revocation_list.html">Man Page: puppet certificate_revocation_list</a> in the Puppet documentation.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Server>]
    # @!attribute next_token
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    #   @return [String]
    class DescribeServersResponse < Struct.new(
      :servers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    #   @return [String]
    # @!attribute node_name
    #   <p>The name of the client node.
    #       </p>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet.
    #       </p>
    #            <p class="title">
    #               <b>Attributes required in a DisassociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node was associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    class DisassociateNodeRequest < Struct.new(
      :server_name,
      :node_name,
      :engine_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_association_status_token
    #   <p>Contains a token which can be passed to the
    #         <code>DescribeNodeAssociationStatus</code> API call to get the status of
    #         the disassociation request.
    #       </p>
    #   @return [String]
    class DisassociateNodeResponse < Struct.new(
      :node_association_status_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A name and value pair that is specific to the engine of the server.
    #     </p>
    # @!attribute name
    #   <p>The name of the engine attribute.
    #       </p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the engine attribute.
    #       </p>
    #   @return [String]
    class EngineAttribute < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_attribute_name
    #   <p>The name of the export attribute. Currently, the supported export attribute is <code>Userdata</code>. 
    #         This exports a user data script that includes parameters and values provided in the <code>InputAttributes</code> list.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the server from which you are exporting the attribute.</p>
    #   @return [String]
    # @!attribute input_attributes
    #   <p>The list of engine attributes. The list type is <code>EngineAttribute</code>. An <code>EngineAttribute</code> list item 
    #         is a pair that includes an attribute name and its value. For the <code>Userdata</code> ExportAttributeName, the following are 
    #         supported engine attribute names.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RunList</b> In Chef, a list of roles or recipes that are run in the specified order. 
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OrganizationName</b> In Chef, an organization name. OpsWorks for Chef Automate 
    #           always creates the organization <code>default</code>. In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeEnvironment</b> In Chef, a node environment (for example, development, staging, or one-box). 
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeClientVersion</b> In Chef, the version of the Chef engine (three numbers separated 
    #           by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, 
    #           this parameter is ignored.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    class ExportServerEngineAttributeRequest < Struct.new(
      :export_attribute_name,
      :server_name,
      :input_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_attribute
    #   <p>The requested engine attribute pair with attribute name and value.</p>
    #   @return [Types::EngineAttribute]
    # @!attribute server_name
    #   <p>The server name used in the request.</p>
    #   @return [String]
    class ExportServerEngineAttributeResponse < Struct.new(
      :engine_attribute,
      :server_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This occurs when the provided nextToken is not valid.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message that can contain more detail about a nextToken failure.
    #       </p>
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is in a state that does not allow you to perform a specified action.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message that provides more detail if a resource is
    #         in a state that is not valid for performing a specified action.
    #       </p>
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit of servers or backups has been reached.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message that the maximum allowed number of servers or backups has been exceeded.
    #       </p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, 
    #           <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #           not all entries have been returned, and that you must run at least one more request to get remaining
    #           items. To get remaining results, call <code>ListTagsForResource</code> again, and assign the token from the previous
    #           results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #           the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #           Setting a <code>nextToken</code> value that was not returned in
    #           your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #           of results to be returned with a single call. If the number of available results exceeds
    #           this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #           request parameter to get the next set of results.</p>
    #   @return [Integer]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags that have been applied to the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A token that you can use as the value of <code>NextToken</code> in subsequent calls to the API to show more results.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource cannot be created because it already exists.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists.
    #       </p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource does not exist, or access was denied.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message that can contain more detail about problems locating or accessing a resource.
    #       </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p> The ID of the backup that you want to use to restore a server.
    #       </p>
    #   @return [String]
    # @!attribute server_name
    #   <p> The name of the server that you want to restore.
    #       </p>
    #   @return [String]
    # @!attribute instance_type
    #   <p> The type of instance to restore. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code>
    #         For example, <code>m5.large</code>. Valid values are <code>m5.large</code>, <code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not specify this parameter,
    #         RestoreServer uses the instance type from the specified backup.
    #       </p>
    #   @return [String]
    # @!attribute key_pair
    #   <p> The name of the key pair to set on the new EC2 instance. This can be helpful
    #         if the administrator no longer has the SSH key.
    #       </p>
    #   @return [String]
    class RestoreServerRequest < Struct.new(
      :backup_id,
      :server_name,
      :instance_type,
      :key_pair,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>Describes a configuration management server.
    #       </p>
    #   @return [Types::Server]
    class RestoreServerResponse < Struct.new(
      :server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a configuration management server.
    #     </p>
    # @!attribute associate_public_ip_address
    #   <p>Associate a public IP address with a server that you are launching.
    #       </p>
    #   @return [Boolean]
    # @!attribute backup_retention_count
    #   <p>The number of automated backups to keep.
    #       </p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>The name of the server.
    #       </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code>
    #            </p>
    #   @return [Time]
    # @!attribute cloud_formation_stack_arn
    #   <p>The ARN of the CloudFormation stack that was used to create the server.
    #       </p>
    #   @return [String]
    # @!attribute custom_domain
    #   <p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. 
    #         You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.</p>
    #   @return [String]
    # @!attribute disable_automated_backup
    #   <p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount.
    #       </p>
    #   @return [Boolean]
    # @!attribute endpoint
    #   <p>
    #         A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code>. 
    #         You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.
    #       </p>
    #   @return [String]
    # @!attribute engine
    #   <p>The engine type of the server. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.
    #       </p>
    #   @return [String]
    # @!attribute engine_model
    #   <p>The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    #       </p>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>The response of a createServer() request returns the master
    #       credential to access the server in EngineAttributes. These
    #       credentials are not stored by OpsWorks CM; they are returned only as part of the result of createServer().
    #       </p>
    #            <p class="title">
    #               <b>Attributes returned in a createServer response for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is
    #           generated by OpsWorks for Chef Automate. This private key is required to access
    #         the Chef API.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file.
    #         The ZIP file contains a Chef starter kit, which includes a README, a
    #         configuration file, and the required RSA private key. Save this file, unzip it,
    #         and then change to the directory where you've unzipped the file contents.
    #         From this directory, you can run Knife commands.</p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes returned in a createServer response for Puppet</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_STARTER_KIT</code>: A base64-encoded ZIP file.
    #           The ZIP file contains a Puppet starter kit, including a README and a
    #           required private key. Save this file, unzip it,
    #           and then change to the directory where you've unzipped the file contents.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_ADMIN_PASSWORD</code>: An administrator password that you can use to sign in to the 
    #           Puppet Enterprise console after the server is online.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    # @!attribute engine_version
    #   <p>The engine version of the server. For a Chef server, the valid value for EngineVersion is 
    #         currently <code>2</code>. For a Puppet server, specify either <code>2019</code> or <code>2017</code>.
    #       </p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The instance profile ARN of the server.
    #       </p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>
    #         The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type 
    #         that is shown in the EC2 console.
    #       </p>
    #   @return [String]
    # @!attribute key_pair
    #   <p>The key pair associated with the server.
    #       </p>
    #   @return [String]
    # @!attribute maintenance_status
    #   <p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>.
    #       </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The preferred maintenance period specified for the server.
    #       </p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>The preferred backup period specified for the server.
    #       </p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>
    #         The security group IDs for the server, as specified in the CloudFormation stack.
    #         These might not be the same security groups that are shown in the EC2 console.
    #       </p>
    #   @return [Array<String>]
    # @!attribute service_role_arn
    #   <p>The service role ARN used to create the server.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server,
    #         as well as the server's health state.
    #       </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>
    #         Depending on the server status, this field has either a human-readable
    #         message (such as a create or backup error), or an escaped block of JSON (used for health check results).
    #       </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>
    #         The subnet IDs specified in a CreateServer request.
    #       </p>
    #   @return [Array<String>]
    # @!attribute server_arn
    #   <p>The ARN of the server.
    #       </p>
    #   @return [String]
    class Server < Struct.new(
      :associate_public_ip_address,
      :backup_retention_count,
      :server_name,
      :created_at,
      :cloud_formation_stack_arn,
      :custom_domain,
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
      :server_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event that is related to the server, such as the start of maintenance or backup.
    #     </p>
    # @!attribute created_at
    #   <p>The time when the event occurred.
    #       </p>
    #   @return [Time]
    # @!attribute server_name
    #   <p>The name of the server on or for which the event occurred.
    #       </p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable informational or status message.</p>
    #   @return [String]
    # @!attribute log_url
    #   <p>The Amazon S3 URL of the event's log file.</p>
    #   @return [String]
    class ServerEvent < Struct.new(
      :created_at,
      :server_name,
      :message,
      :log_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server on which to run maintenance.
    #       </p>
    #   @return [String]
    # @!attribute engine_attributes
    #   <p>Engine attributes that are specific to the server on which you want to run maintenance.</p>
    #            <p class="title">
    #               <b>Attributes accepted in a StartMaintenance request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is eligible for upgrade to Chef Automate 2, 
    #           add this engine attribute to a <code>StartMaintenance</code> request and set the value to <code>true</code> to upgrade the server to Chef Automate 2. For more information, see 
    #           <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html">Upgrade an OpsWorks for Chef Automate Server to Chef Automate 2</a>.
    #         </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::EngineAttribute>]
    class StartMaintenanceRequest < Struct.new(
      :server_name,
      :engine_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>Contains the response to a <code>StartMaintenance</code> request.
    #       </p>
    #   @return [Types::Server]
    class StartMaintenanceResponse < Struct.new(
      :server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map that contains tag keys and tag values to attach to an OpsWorks for Chef Automate 
    #       or OpsWorks for Puppet Enterprise server. Leading and trailing spaces are trimmed from both the key and value. 
    #       A maximum of 50 user-applied tags is allowed for tag-supported OpsWorks CM resources.</p>
    # @!attribute key
    #   <p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The key can be a maximum of 127 characters, 
    #         and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>An optional tag value, such as <code>Production</code> or <code>test-owcm-server</code>. The value can be a maximum of 255 characters, 
    #         and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #            </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource to which you want to apply tags. For example, 
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values to attach to OpsWorks CM servers or backups.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server or backup.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource from which you want to remove tags. For example, 
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of tags that you want to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_name
    #   <p>The name of the server to update.
    #       </p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The name of the engine attribute to update.
    #       </p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value to set for the attribute.
    #       </p>
    #   @return [String]
    class UpdateServerEngineAttributesRequest < Struct.new(
      :server_name,
      :attribute_name,
      :attribute_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>Contains the response to an <code>UpdateServerEngineAttributes</code> request.
    #       </p>
    #   @return [Types::Server]
    class UpdateServerEngineAttributesResponse < Struct.new(
      :server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disable_automated_backup
    #   <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. 
    #         Automated backups are enabled by default.
    #       </p>
    #   @return [Boolean]
    # @!attribute backup_retention_count
    #   <p>Sets the number of automated backups that you want to keep.
    #         </p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>The name of the server to update.
    #       </p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    #   @return [String]
    # @!attribute preferred_backup_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    #   @return [String]
    class UpdateServerRequest < Struct.new(
      :disable_automated_backup,
      :backup_retention_count,
      :server_name,
      :preferred_maintenance_window,
      :preferred_backup_window,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server
    #   <p>Contains the response to a <code>UpdateServer</code> request.
    #       </p>
    #   @return [Types::Server]
    class UpdateServerResponse < Struct.new(
      :server,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the provided request parameters are not valid.
    #     </p>
    # @!attribute message
    #   <p>Error or informational message that can contain more detail about a validation failure.
    #       </p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
