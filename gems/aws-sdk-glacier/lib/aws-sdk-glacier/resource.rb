# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Glacier
    class Resource

      # @param options ({})
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new(options)
      end

      # @return [Client]
      def client
        @client
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [required, String] :vault_name
      #   The name of the vault.
      # @return [Vault]
      def create_vault(options = {})
        options = options.merge(account_id: "-")
        resp = @client.create_vault(options)
        Vault.new(
          account_id: options[:account_id],
          name: options[:vault_name],
          client: @client
        )
      end

      # @!group Associations

      # @param [String] id
      # @return [Account]
      def account(id)
        Account.new(
          id: id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [Vault::Collection]
      def vaults(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(account_id: "-")
          resp = @client.list_vaults(options)
          resp.each_page do |page|
            batch = []
            page.data.vault_list.each do |v|
              batch << Vault.new(
                account_id: options[:account_id],
                name: v.vault_name,
                data: v,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Vault::Collection.new(batches)
      end

    end
  end
end
