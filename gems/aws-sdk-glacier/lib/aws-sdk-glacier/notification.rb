# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glacier
  class Notification

    extend Aws::Deprecations

    # @overload def initialize(account_id, vault_name, options = {})
    #   @param [String] account_id
    #   @param [String] vault_name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :account_id
    #   @option options [required, String] :vault_name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @account_id = extract_account_id(args, options)
      @vault_name = extract_vault_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def account_id
      @account_id
    end

    # @return [String]
    def vault_name
      @vault_name
    end

    # The Amazon Simple Notification Service (Amazon SNS) topic Amazon
    # Resource Name (ARN).
    # @return [String]
    def sns_topic
      data.sns_topic
    end

    # A list of one or more events for which Amazon Glacier will send a
    # notification to the specified Amazon SNS topic.
    # @return [Array<String>]
    def events
      data.events
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Notification}.
    # Returns `self` making it possible to chain methods.
    #
    #     notification.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_vault_notifications(
        account_id: @account_id,
        vault_name: @vault_name
      )
      @data = resp.vault_notification_config
      self
    end
    alias :reload :load

    # @return [Types::VaultNotificationConfig]
    #   Returns the data for this {Notification}. Calls
    #   {Client#get_vault_notifications} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   notification.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name
      )
      resp = @client.delete_vault_notifications(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   notification.set({
    #     vault_notification_config: {
    #       sns_topic: "string",
    #       events: ["string"],
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Types::VaultNotificationConfig] :vault_notification_config
    #   Provides options for specifying notification configuration.
    # @return [EmptyStructure]
    def set(options = {})
      options = options.merge(
        account_id: @account_id,
        vault_name: @vault_name
      )
      resp = @client.set_vault_notifications(options)
      resp.data
    end

    # @!group Associations

    # @return [Vault]
    def vault
      Vault.new(
        account_id: @account_id,
        name: @vault_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        account_id: @account_id,
        vault_name: @vault_name
      }
    end
    deprecated(:identifiers)

    private

    def extract_account_id(args, options)
      value = args[0] || options.delete(:account_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :account_id"
      else
        msg = "expected :account_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_vault_name(args, options)
      value = args[1] || options.delete(:vault_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :vault_name"
      else
        msg = "expected :vault_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
