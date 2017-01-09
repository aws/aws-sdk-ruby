# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class AccountSummary

    extend Aws::Deprecations

    # @overload def initialize(options = {})
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # A set of key value pairs containing information about IAM entity usage
    # and IAM quotas.
    # @return [Hash<String,Integer>]
    def summary_map
      data.summary_map
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {AccountSummary}.
    # Returns `self` making it possible to chain methods.
    #
    #     account_summary.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_account_summary
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetAccountSummaryResponse]
    #   Returns the data for this {AccountSummary}. Calls
    #   {Client#get_account_summary} if {#data_loaded?} is `false`.
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

    # @deprecated
    # @api private
    def identifiers
      {}
    end
    deprecated(:identifiers)

    class Collection < Aws::Resources::Collection; end
  end
end
