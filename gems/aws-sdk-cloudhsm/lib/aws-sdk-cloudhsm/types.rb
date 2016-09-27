# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudHSM
    module Types

      # @note When making an API call, pass AddTagsToResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "String", # required
      #         tag_list: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.
      #   @return [String]
      #
      # @!attribute [rw] tag_list
      #   One or more tags.
      #   @return [Array<Types::Tag>]
      class AddTagsToResourceRequest < Struct.new(
        :resource_arn,
        :tag_list)
        include Aws::Structure
      end

      # @!attribute [rw] status
      #   The status of the operation.
      #   @return [String]
      class AddTagsToResourceResponse < Struct.new(
        :status)
        include Aws::Structure
      end

      # Contains the inputs for the CreateHapgRequest action.
      # @note When making an API call, pass CreateHapgRequest
      #   data as a hash:
      #
      #       {
      #         label: "Label", # required
      #       }
      # @!attribute [rw] label
      #   The label of the new high-availability partition group.
      #   @return [String]
      class CreateHapgRequest < Struct.new(
        :label)
        include Aws::Structure
      end

      # Contains the output of the CreateHAPartitionGroup action.
      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group.
      #   @return [String]
      class CreateHapgResponse < Struct.new(
        :hapg_arn)
        include Aws::Structure
      end

      # Contains the inputs for the CreateHsm operation.
      # @note When making an API call, pass CreateHsmRequest
      #   data as a hash:
      #
      #       {
      #         subnet_id: "SubnetId", # required
      #         ssh_key: "SshKey", # required
      #         eni_ip: "IpAddress",
      #         iam_role_arn: "IamRoleArn", # required
      #         external_id: "ExternalId",
      #         subscription_type: "PRODUCTION", # required, accepts PRODUCTION
      #         client_token: "ClientToken",
      #         syslog_ip: "IpAddress",
      #       }
      # @!attribute [rw] subnet_id
      #   The identifier of the subnet in your VPC in which to place the HSM.
      #   @return [String]
      #
      # @!attribute [rw] ssh_key
      #   The SSH public key to install on the HSM.
      #   @return [String]
      #
      # @!attribute [rw] eni_ip
      #   The IP address to assign to the HSM's ENI.
      #
      #   If an IP address is not specified, an IP address will be randomly
      #   chosen from the CIDR range of the subnet.
      #   @return [String]
      #
      # @!attribute [rw] iam_role_arn
      #   The ARN of an IAM role to enable the AWS CloudHSM service to
      #   allocate an ENI on your behalf.
      #   @return [String]
      #
      # @!attribute [rw] external_id
      #   The external ID from **IamRoleArn**, if present.
      #   @return [String]
      #
      # @!attribute [rw] subscription_type
      #   Specifies the type of subscription for the HSM.
      #
      #   * **PRODUCTION** - The HSM is being used in a production
      #     environment.
      #   * **TRIAL** - The HSM is being used in a product trial.
      #   @return [String]
      #
      # @!attribute [rw] client_token
      #   A user-defined token to ensure idempotence. Subsequent calls to this
      #   operation with the same token will be ignored.
      #   @return [String]
      #
      # @!attribute [rw] syslog_ip
      #   The IP address for the syslog monitoring server. The AWS CloudHSM
      #   service only supports one syslog monitoring server.
      #   @return [String]
      class CreateHsmRequest < Struct.new(
        :subnet_id,
        :ssh_key,
        :eni_ip,
        :iam_role_arn,
        :external_id,
        :subscription_type,
        :client_token,
        :syslog_ip)
        include Aws::Structure
      end

      # Contains the output of the CreateHsm operation.
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM.
      #   @return [String]
      class CreateHsmResponse < Struct.new(
        :hsm_arn)
        include Aws::Structure
      end

      # Contains the inputs for the CreateLunaClient action.
      # @note When making an API call, pass CreateLunaClientRequest
      #   data as a hash:
      #
      #       {
      #         label: "ClientLabel",
      #         certificate: "Certificate", # required
      #       }
      # @!attribute [rw] label
      #   The label for the client.
      #   @return [String]
      #
      # @!attribute [rw] certificate
      #   The contents of a Base64-Encoded X.509 v3 certificate to be
      #   installed on the HSMs used by this client.
      #   @return [String]
      class CreateLunaClientRequest < Struct.new(
        :label,
        :certificate)
        include Aws::Structure
      end

      # Contains the output of the CreateLunaClient action.
      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      class CreateLunaClientResponse < Struct.new(
        :client_arn)
        include Aws::Structure
      end

      # Contains the inputs for the DeleteHapg action.
      # @note When making an API call, pass DeleteHapgRequest
      #   data as a hash:
      #
      #       {
      #         hapg_arn: "HapgArn", # required
      #       }
      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group to delete.
      #   @return [String]
      class DeleteHapgRequest < Struct.new(
        :hapg_arn)
        include Aws::Structure
      end

      # Contains the output of the DeleteHapg action.
      # @!attribute [rw] status
      #   The status of the action.
      #   @return [String]
      class DeleteHapgResponse < Struct.new(
        :status)
        include Aws::Structure
      end

      # Contains the inputs for the DeleteHsm operation.
      # @note When making an API call, pass DeleteHsmRequest
      #   data as a hash:
      #
      #       {
      #         hsm_arn: "HsmArn", # required
      #       }
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM to delete.
      #   @return [String]
      class DeleteHsmRequest < Struct.new(
        :hsm_arn)
        include Aws::Structure
      end

      # Contains the output of the DeleteHsm operation.
      # @!attribute [rw] status
      #   The status of the operation.
      #   @return [String]
      class DeleteHsmResponse < Struct.new(
        :status)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteLunaClientRequest
      #   data as a hash:
      #
      #       {
      #         client_arn: "ClientArn", # required
      #       }
      # @!attribute [rw] client_arn
      #   The ARN of the client to delete.
      #   @return [String]
      class DeleteLunaClientRequest < Struct.new(
        :client_arn)
        include Aws::Structure
      end

      # @!attribute [rw] status
      #   The status of the action.
      #   @return [String]
      class DeleteLunaClientResponse < Struct.new(
        :status)
        include Aws::Structure
      end

      # Contains the inputs for the DescribeHapg action.
      # @note When making an API call, pass DescribeHapgRequest
      #   data as a hash:
      #
      #       {
      #         hapg_arn: "HapgArn", # required
      #       }
      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group to describe.
      #   @return [String]
      class DescribeHapgRequest < Struct.new(
        :hapg_arn)
        include Aws::Structure
      end

      # Contains the output of the DescribeHapg action.
      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group.
      #   @return [String]
      #
      # @!attribute [rw] hapg_serial
      #   The serial number of the high-availability partition group.
      #   @return [String]
      #
      # @!attribute [rw] hsms_last_action_failed
      #   Contains a list of ARNs that identify the HSMs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] hsms_pending_deletion
      #   Contains a list of ARNs that identify the HSMs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] hsms_pending_registration
      #   Contains a list of ARNs that identify the HSMs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] label
      #   The label for the high-availability partition group.
      #   @return [String]
      #
      # @!attribute [rw] last_modified_timestamp
      #   The date and time the high-availability partition group was last
      #   modified.
      #   @return [String]
      #
      # @!attribute [rw] partition_serial_list
      #   The list of partition serial numbers that belong to the
      #   high-availability partition group.
      #   @return [Array<String>]
      #
      # @!attribute [rw] state
      #   The state of the high-availability partition group.
      #   @return [String]
      class DescribeHapgResponse < Struct.new(
        :hapg_arn,
        :hapg_serial,
        :hsms_last_action_failed,
        :hsms_pending_deletion,
        :hsms_pending_registration,
        :label,
        :last_modified_timestamp,
        :partition_serial_list,
        :state)
        include Aws::Structure
      end

      # Contains the inputs for the DescribeHsm operation.
      # @note When making an API call, pass DescribeHsmRequest
      #   data as a hash:
      #
      #       {
      #         hsm_arn: "HsmArn",
      #         hsm_serial_number: "HsmSerialNumber",
      #       }
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM. Either the *HsmArn* or the *SerialNumber*
      #   parameter must be specified.
      #   @return [String]
      #
      # @!attribute [rw] hsm_serial_number
      #   The serial number of the HSM. Either the *HsmArn* or the
      #   *HsmSerialNumber* parameter must be specified.
      #   @return [String]
      class DescribeHsmRequest < Struct.new(
        :hsm_arn,
        :hsm_serial_number)
        include Aws::Structure
      end

      # Contains the output of the DescribeHsm operation.
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The status of the HSM.
      #   @return [String]
      #
      # @!attribute [rw] status_details
      #   Contains additional information about the status of the HSM.
      #   @return [String]
      #
      # @!attribute [rw] availability_zone
      #   The Availability Zone that the HSM is in.
      #   @return [String]
      #
      # @!attribute [rw] eni_id
      #   The identifier of the elastic network interface (ENI) attached to
      #   the HSM.
      #   @return [String]
      #
      # @!attribute [rw] eni_ip
      #   The IP address assigned to the HSM's ENI.
      #   @return [String]
      #
      # @!attribute [rw] subscription_type
      #   Specifies the type of subscription for the HSM.
      #
      #   * **PRODUCTION** - The HSM is being used in a production
      #     environment.
      #   * **TRIAL** - The HSM is being used in a product trial.
      #   @return [String]
      #
      # @!attribute [rw] subscription_start_date
      #   The subscription start date.
      #   @return [String]
      #
      # @!attribute [rw] subscription_end_date
      #   The subscription end date.
      #   @return [String]
      #
      # @!attribute [rw] vpc_id
      #   The identifier of the VPC that the HSM is in.
      #   @return [String]
      #
      # @!attribute [rw] subnet_id
      #   The identifier of the subnet that the HSM is in.
      #   @return [String]
      #
      # @!attribute [rw] iam_role_arn
      #   The ARN of the IAM role assigned to the HSM.
      #   @return [String]
      #
      # @!attribute [rw] serial_number
      #   The serial number of the HSM.
      #   @return [String]
      #
      # @!attribute [rw] vendor_name
      #   The name of the HSM vendor.
      #   @return [String]
      #
      # @!attribute [rw] hsm_type
      #   The HSM model type.
      #   @return [String]
      #
      # @!attribute [rw] software_version
      #   The HSM software version.
      #   @return [String]
      #
      # @!attribute [rw] ssh_public_key
      #   The public SSH key.
      #   @return [String]
      #
      # @!attribute [rw] ssh_key_last_updated
      #   The date and time that the SSH key was last updated.
      #   @return [String]
      #
      # @!attribute [rw] server_cert_uri
      #   The URI of the certificate server.
      #   @return [String]
      #
      # @!attribute [rw] server_cert_last_updated
      #   The date and time that the server certificate was last updated.
      #   @return [String]
      #
      # @!attribute [rw] partitions
      #   The list of partitions on the HSM.
      #   @return [Array<String>]
      class DescribeHsmResponse < Struct.new(
        :hsm_arn,
        :status,
        :status_details,
        :availability_zone,
        :eni_id,
        :eni_ip,
        :subscription_type,
        :subscription_start_date,
        :subscription_end_date,
        :vpc_id,
        :subnet_id,
        :iam_role_arn,
        :serial_number,
        :vendor_name,
        :hsm_type,
        :software_version,
        :ssh_public_key,
        :ssh_key_last_updated,
        :server_cert_uri,
        :server_cert_last_updated,
        :partitions)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeLunaClientRequest
      #   data as a hash:
      #
      #       {
      #         client_arn: "ClientArn",
      #         certificate_fingerprint: "CertificateFingerprint",
      #       }
      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      #
      # @!attribute [rw] certificate_fingerprint
      #   The certificate fingerprint.
      #   @return [String]
      class DescribeLunaClientRequest < Struct.new(
        :client_arn,
        :certificate_fingerprint)
        include Aws::Structure
      end

      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      #
      # @!attribute [rw] certificate
      #   The certificate installed on the HSMs used by this client.
      #   @return [String]
      #
      # @!attribute [rw] certificate_fingerprint
      #   The certificate fingerprint.
      #   @return [String]
      #
      # @!attribute [rw] last_modified_timestamp
      #   The date and time the client was last modified.
      #   @return [String]
      #
      # @!attribute [rw] label
      #   The label of the client.
      #   @return [String]
      class DescribeLunaClientResponse < Struct.new(
        :client_arn,
        :certificate,
        :certificate_fingerprint,
        :last_modified_timestamp,
        :label)
        include Aws::Structure
      end

      # @note When making an API call, pass GetConfigRequest
      #   data as a hash:
      #
      #       {
      #         client_arn: "ClientArn", # required
      #         client_version: "5.1", # required, accepts 5.1, 5.3
      #         hapg_list: ["HapgArn"], # required
      #       }
      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      #
      # @!attribute [rw] client_version
      #   The client version.
      #   @return [String]
      #
      # @!attribute [rw] hapg_list
      #   A list of ARNs that identify the high-availability partition groups
      #   that are associated with the client.
      #   @return [Array<String>]
      class GetConfigRequest < Struct.new(
        :client_arn,
        :client_version,
        :hapg_list)
        include Aws::Structure
      end

      # @!attribute [rw] config_type
      #   The type of credentials.
      #   @return [String]
      #
      # @!attribute [rw] config_file
      #   The chrystoki.conf configuration file.
      #   @return [String]
      #
      # @!attribute [rw] config_cred
      #   The certificate file containing the server.pem files of the HSMs.
      #   @return [String]
      class GetConfigResponse < Struct.new(
        :config_type,
        :config_file,
        :config_cred)
        include Aws::Structure
      end

      # Contains the inputs for the ListAvailableZones action.
      # @api private
      class ListAvailableZonesRequest < Aws::EmptyStructure; end

      # @!attribute [rw] az_list
      #   The list of Availability Zones that have available AWS CloudHSM
      #   capacity.
      #   @return [Array<String>]
      class ListAvailableZonesResponse < Struct.new(
        :az_list)
        include Aws::Structure
      end

      # @note When making an API call, pass ListHapgsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "PaginationToken",
      #       }
      # @!attribute [rw] next_token
      #   The *NextToken* value from a previous call to ListHapgs. Pass null
      #   if this is the first call.
      #   @return [String]
      class ListHapgsRequest < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] hapg_list
      #   The list of high-availability partition groups.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If not null, more results are available. Pass this value to
      #   ListHapgs to retrieve the next set of items.
      #   @return [String]
      class ListHapgsResponse < Struct.new(
        :hapg_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListHsmsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "PaginationToken",
      #       }
      # @!attribute [rw] next_token
      #   The *NextToken* value from a previous call to ListHsms. Pass null if
      #   this is the first call.
      #   @return [String]
      class ListHsmsRequest < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # Contains the output of the ListHsms operation.
      # @!attribute [rw] hsm_list
      #   The list of ARNs that identify the HSMs.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If not null, more results are available. Pass this value to ListHsms
      #   to retrieve the next set of items.
      #   @return [String]
      class ListHsmsResponse < Struct.new(
        :hsm_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListLunaClientsRequest
      #   data as a hash:
      #
      #       {
      #         next_token: "PaginationToken",
      #       }
      # @!attribute [rw] next_token
      #   The *NextToken* value from a previous call to ListLunaClients. Pass
      #   null if this is the first call.
      #   @return [String]
      class ListLunaClientsRequest < Struct.new(
        :next_token)
        include Aws::Structure
      end

      # @!attribute [rw] client_list
      #   The list of clients.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   If not null, more results are available. Pass this to
      #   ListLunaClients to retrieve the next set of items.
      #   @return [String]
      class ListLunaClientsResponse < Struct.new(
        :client_list,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "String", # required
      #       }
      # @!attribute [rw] resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
      #   @return [String]
      class ListTagsForResourceRequest < Struct.new(
        :resource_arn)
        include Aws::Structure
      end

      # @!attribute [rw] tag_list
      #   One or more tags.
      #   @return [Array<Types::Tag>]
      class ListTagsForResourceResponse < Struct.new(
        :tag_list)
        include Aws::Structure
      end

      # @note When making an API call, pass ModifyHapgRequest
      #   data as a hash:
      #
      #       {
      #         hapg_arn: "HapgArn", # required
      #         label: "Label",
      #         partition_serial_list: ["PartitionSerial"],
      #       }
      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group to modify.
      #   @return [String]
      #
      # @!attribute [rw] label
      #   The new label for the high-availability partition group.
      #   @return [String]
      #
      # @!attribute [rw] partition_serial_list
      #   The list of partition serial numbers to make members of the
      #   high-availability partition group.
      #   @return [Array<String>]
      class ModifyHapgRequest < Struct.new(
        :hapg_arn,
        :label,
        :partition_serial_list)
        include Aws::Structure
      end

      # @!attribute [rw] hapg_arn
      #   The ARN of the high-availability partition group.
      #   @return [String]
      class ModifyHapgResponse < Struct.new(
        :hapg_arn)
        include Aws::Structure
      end

      # Contains the inputs for the ModifyHsm operation.
      # @note When making an API call, pass ModifyHsmRequest
      #   data as a hash:
      #
      #       {
      #         hsm_arn: "HsmArn", # required
      #         subnet_id: "SubnetId",
      #         eni_ip: "IpAddress",
      #         iam_role_arn: "IamRoleArn",
      #         external_id: "ExternalId",
      #         syslog_ip: "IpAddress",
      #       }
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM to modify.
      #   @return [String]
      #
      # @!attribute [rw] subnet_id
      #   The new identifier of the subnet that the HSM is in. The new subnet
      #   must be in the same Availability Zone as the current subnet.
      #   @return [String]
      #
      # @!attribute [rw] eni_ip
      #   The new IP address for the elastic network interface (ENI) attached
      #   to the HSM.
      #
      #   If the HSM is moved to a different subnet, and an IP address is not
      #   specified, an IP address will be randomly chosen from the CIDR range
      #   of the new subnet.
      #   @return [String]
      #
      # @!attribute [rw] iam_role_arn
      #   The new IAM role ARN.
      #   @return [String]
      #
      # @!attribute [rw] external_id
      #   The new external ID.
      #   @return [String]
      #
      # @!attribute [rw] syslog_ip
      #   The new IP address for the syslog monitoring server. The AWS
      #   CloudHSM service only supports one syslog monitoring server.
      #   @return [String]
      class ModifyHsmRequest < Struct.new(
        :hsm_arn,
        :subnet_id,
        :eni_ip,
        :iam_role_arn,
        :external_id,
        :syslog_ip)
        include Aws::Structure
      end

      # Contains the output of the ModifyHsm operation.
      # @!attribute [rw] hsm_arn
      #   The ARN of the HSM.
      #   @return [String]
      class ModifyHsmResponse < Struct.new(
        :hsm_arn)
        include Aws::Structure
      end

      # @note When making an API call, pass ModifyLunaClientRequest
      #   data as a hash:
      #
      #       {
      #         client_arn: "ClientArn", # required
      #         certificate: "Certificate", # required
      #       }
      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      #
      # @!attribute [rw] certificate
      #   The new certificate for the client.
      #   @return [String]
      class ModifyLunaClientRequest < Struct.new(
        :client_arn,
        :certificate)
        include Aws::Structure
      end

      # @!attribute [rw] client_arn
      #   The ARN of the client.
      #   @return [String]
      class ModifyLunaClientResponse < Struct.new(
        :client_arn)
        include Aws::Structure
      end

      # @note When making an API call, pass RemoveTagsFromResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource_arn: "String", # required
      #         tag_key_list: ["TagKey"], # required
      #       }
      # @!attribute [rw] resource_arn
      #   The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
      #   @return [String]
      #
      # @!attribute [rw] tag_key_list
      #   The tag key or keys to remove.
      #
      #   Specify only the tag key to remove (not the value). To overwrite the
      #   value for an existing tag, use AddTagsToResource.
      #   @return [Array<String>]
      class RemoveTagsFromResourceRequest < Struct.new(
        :resource_arn,
        :tag_key_list)
        include Aws::Structure
      end

      # @!attribute [rw] status
      #   The status of the operation.
      #   @return [String]
      class RemoveTagsFromResourceResponse < Struct.new(
        :status)
        include Aws::Structure
      end

      # A key-value pair that identifies or specifies metadata about an AWS
      # CloudHSM resource.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue", # required
      #       }
      # @!attribute [rw] key
      #   The key of the tag.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value of the tag.
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

    end
  end
end
