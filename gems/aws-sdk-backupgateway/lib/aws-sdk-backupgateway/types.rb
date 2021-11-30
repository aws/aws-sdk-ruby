# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BackupGateway
  module Types

    # The operation cannot proceed because you have insufficient
    # permissions.
    #
    # @!attribute [rw] error_code
    #   A description of why you have insufficient permissions.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateGatewayToServerInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayArn", # required
    #         server_arn: "ServerArn", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] server_arn
    #   The Amazon Resource Name (ARN) of the server that hosts your virtual
    #   machines.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AssociateGatewayToServerInput AWS API Documentation
    #
    class AssociateGatewayToServerInput < Struct.new(
      :gateway_arn,
      :server_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of a gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/AssociateGatewayToServerOutput AWS API Documentation
    #
    class AssociateGatewayToServerOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation cannot proceed because it is not supported.
    #
    # @!attribute [rw] error_code
    #   A description of why the operation is not supported.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGatewayInput
    #   data as a hash:
    #
    #       {
    #         activation_key: "ActivationKey", # required
    #         gateway_display_name: "Name", # required
    #         gateway_type: "BACKUP_VM", # required, accepts BACKUP_VM
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] activation_key
    #   The activation key of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The display name of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of created gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of up to 50 tags to assign to the gateway. Each tag is a
    #   key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/CreateGatewayInput AWS API Documentation
    #
    class CreateGatewayInput < Struct.new(
      :activation_key,
      :gateway_display_name,
      :gateway_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/CreateGatewayOutput AWS API Documentation
    #
    class CreateGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGatewayInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayArn", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteGatewayInput AWS API Documentation
    #
    class DeleteGatewayInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteGatewayOutput AWS API Documentation
    #
    class DeleteGatewayOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteHypervisorInput
    #   data as a hash:
    #
    #       {
    #         hypervisor_arn: "ServerArn", # required
    #       }
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteHypervisorInput AWS API Documentation
    #
    class DeleteHypervisorInput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DeleteHypervisorOutput AWS API Documentation
    #
    class DeleteHypervisorOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateGatewayFromServerInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayArn", # required
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DisassociateGatewayFromServerInput AWS API Documentation
    #
    class DisassociateGatewayFromServerInput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you disassociated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/DisassociateGatewayFromServerOutput AWS API Documentation
    #
    class DisassociateGatewayFromServerOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A gateway is an Backup Gateway appliance that runs on the customer's
    # network to provide seamless connectivity to backup storage in the
    # Amazon Web Services Cloud.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway. Use the
    #   `ListGateways` operation to return a list of gateways for your
    #   account and Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The display name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_type
    #   The type of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The hypervisor ID of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] last_seen_time
    #   The last time Backup gateway communicated with the gateway, in Unix
    #   format and UTC time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Gateway AWS API Documentation
    #
    class Gateway < Struct.new(
      :gateway_arn,
      :gateway_display_name,
      :gateway_type,
      :hypervisor_id,
      :last_seen_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the hypervisor's permissions to which the gateway will
    # connect.
    #
    # A hypervisor is hardware, software, or firmware that creates and
    # manages virtual machines, and allocates resources to them.
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service used to
    #   encrypt the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Hypervisor AWS API Documentation
    #
    class Hypervisor < Struct.new(
      :host,
      :hypervisor_arn,
      :kms_key_arn,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportHypervisorConfigurationInput
    #   data as a hash:
    #
    #       {
    #         host: "Host", # required
    #         kms_key_arn: "KmsKeyArn",
    #         name: "Name", # required
    #         password: "Password",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         username: "Username",
    #       }
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Key Management Service for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the hypervisor configuration to import.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] username
    #   The username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ImportHypervisorConfigurationInput AWS API Documentation
    #
    class ImportHypervisorConfigurationInput < Struct.new(
      :host,
      :kms_key_arn,
      :name,
      :password,
      :tags,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you disassociated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ImportHypervisorConfigurationOutput AWS API Documentation
    #
    class ImportHypervisorConfigurationOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because an internal error occurred. Try
    # again later.
    #
    # @!attribute [rw] error_code
    #   A description of which internal error occured.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGatewaysInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of gateways to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `MaxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListGatewaysInput AWS API Documentation
    #
    class ListGatewaysInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateways
    #   A list of your gateways.
    #   @return [Array<Types::Gateway>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListGatewaysOutput AWS API Documentation
    #
    class ListGatewaysOutput < Struct.new(
      :gateways,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHypervisorsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of hypervisors to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListHypervisorsInput AWS API Documentation
    #
    class ListHypervisorsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hypervisors
    #   A list of your `Hypervisor` objects, ordered by their Amazon
    #   Resource Names (ARNs).
    #   @return [Array<Types::Hypervisor>]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListHypervisorsOutput AWS API Documentation
    #
    class ListHypervisorsOutput < Struct.new(
      :hypervisors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource's tags to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource's tags that you
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the resource's tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualMachinesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of virtual machines to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListVirtualMachinesInput AWS API Documentation
    #
    class ListVirtualMachinesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next item following a partial list of returned resources. For
    #   example, if a request is made to return `maxResults` number of
    #   resources, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #   @return [String]
    #
    # @!attribute [rw] virtual_machines
    #   A list of your `VirtualMachine` objects, ordered by their Amazon
    #   Resource Names (ARNs).
    #   @return [Array<Types::VirtualMachine>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ListVirtualMachinesOutput AWS API Documentation
    #
    class ListVirtualMachinesOutput < Struct.new(
      :next_token,
      :virtual_machines)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMaintenanceStartTimeInput
    #   data as a hash:
    #
    #       {
    #         day_of_month: 1,
    #         day_of_week: 1,
    #         gateway_arn: "GatewayArn", # required
    #         hour_of_day: 1, # required
    #         minute_of_hour: 1, # required
    #       }
    #
    # @!attribute [rw] day_of_month
    #   The day of the month start maintenance on a gateway.
    #
    #   Valid values range from `Sunday` to `Saturday`.
    #   @return [Integer]
    #
    # @!attribute [rw] day_of_week
    #   The day of the week to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) for the gateway, used to specify its
    #   maintenance start time.
    #   @return [String]
    #
    # @!attribute [rw] hour_of_day
    #   The hour of the day to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] minute_of_hour
    #   The minute of the hour to start maintenance on a gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutMaintenanceStartTimeInput AWS API Documentation
    #
    class PutMaintenanceStartTimeInput < Struct.new(
      :day_of_month,
      :day_of_week,
      :gateway_arn,
      :hour_of_day,
      :minute_of_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of a gateway for which you set the
    #   maintenance start time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/PutMaintenanceStartTimeOutput AWS API Documentation
    #
    class PutMaintenanceStartTimeOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that is required for the action wasn't found.
    #
    # @!attribute [rw] error_code
    #   A description of which resource wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair you can use to manage, filter, and search for your
    # resources. Allowed characters include UTF-8 letters, numbers, spaces,
    # and the following characters: + - = . \_ : /.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key part of a tag's key-value pair. The key can't start with
    #   `aws:`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The key part of a value's key-value pair.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to assign to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you tagged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestHypervisorConfigurationInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayArn", # required
    #         host: "Host", # required
    #         password: "Password",
    #         username: "Username",
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to the hypervisor to
    #   test.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The server host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TestHypervisorConfigurationInput AWS API Documentation
    #
    class TestHypervisorConfigurationInput < Struct.new(
      :gateway_arn,
      :host,
      :password,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/TestHypervisorConfigurationOutput AWS API Documentation
    #
    class TestHypervisorConfigurationOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys specifying which tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you
    #   removed tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGatewayInformationInput
    #   data as a hash:
    #
    #       {
    #         gateway_arn: "GatewayArn", # required
    #         gateway_display_name: "Name",
    #       }
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to update.
    #   @return [String]
    #
    # @!attribute [rw] gateway_display_name
    #   The updated display name of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewayInformationInput AWS API Documentation
    #
    class UpdateGatewayInformationInput < Struct.new(
      :gateway_arn,
      :gateway_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateGatewayInformationOutput AWS API Documentation
    #
    class UpdateGatewayInformationOutput < Struct.new(
      :gateway_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateHypervisorInput
    #   data as a hash:
    #
    #       {
    #         host: "Host",
    #         hypervisor_arn: "ServerArn", # required
    #         password: "Password",
    #         username: "Username",
    #       }
    #
    # @!attribute [rw] host
    #   The updated host of the hypervisor. This can be either an IP address
    #   or a fully-qualified domain name (FQDN).
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor to update.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The updated password for the hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The updated username for the hypervisor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateHypervisorInput AWS API Documentation
    #
    class UpdateHypervisorInput < Struct.new(
      :host,
      :hypervisor_arn,
      :password,
      :username)
      SENSITIVE = [:password, :username]
      include Aws::Structure
    end

    # @!attribute [rw] hypervisor_arn
    #   The Amazon Resource Name (ARN) of the hypervisor you updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/UpdateHypervisorOutput AWS API Documentation
    #
    class UpdateHypervisorOutput < Struct.new(
      :hypervisor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because a validation error occurred.
    #
    # @!attribute [rw] error_code
    #   A description of what caused the validation error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A virtual machine that is on a hypervisor.
    #
    # @!attribute [rw] host_name
    #   The host name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] hypervisor_id
    #   The ID of the virtual machine's hypervisor.
    #   @return [String]
    #
    # @!attribute [rw] last_backup_date
    #   The most recent date a virtual machine was backed up, in Unix format
    #   and UTC time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the virtual machine.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the virtual machine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backup-gateway-2021-01-01/VirtualMachine AWS API Documentation
    #
    class VirtualMachine < Struct.new(
      :host_name,
      :hypervisor_id,
      :last_backup_date,
      :name,
      :path,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
