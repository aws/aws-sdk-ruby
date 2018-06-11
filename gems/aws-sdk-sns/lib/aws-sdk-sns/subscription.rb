# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SNS
  class Subscription

    extend Aws::Deprecations

    # @overload def initialize(arn, options = {})
    #   @param [String] arn
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :arn
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @arn = extract_arn(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def arn
      @arn
    end

    # A map of the subscription's attributes. Attributes in this map
    # include the following:
    #
    # * `ConfirmationWasAuthenticated` -- `true` if the subscription
    #   confirmation request was authenticated.
    #
    # * `DeliveryPolicy` -- The JSON serialization of the subscription's
    #   delivery policy.
    #
    # * `EffectiveDeliveryPolicy` -- The JSON serialization of the effective
    #   delivery policy that takes into account the topic delivery policy
    #   and account system defaults.
    #
    # * `FilterPolicy` -- The filter policy JSON that is assigned to the
    #   subscription.
    #
    # * `Owner` -- The AWS account ID of the subscription's owner.
    #
    # * `PendingConfirmation` -- `true` if the subscription hasn't been
    #   confirmed. To confirm a pending subscription, call the
    #   `ConfirmSubscription` action with a confirmation token.
    #
    # * `RawMessageDelivery` -- `true` if raw message delivery is enabled
    #   for the subscription. Raw messages are free of JSON formatting and
    #   can be sent to HTTP/S and Amazon SQS endpoints.
    #
    # * `SubscriptionArn` -- The subscription's ARN.
    #
    # * `TopicArn` -- The topic ARN that the subscription is associated
    #   with.
    # @return [Hash<String,String>]
    def attributes
      data[:attributes]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Subscription}.
    # Returns `self` making it possible to chain methods.
    #
    #     subscription.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_subscription_attributes(subscription_arn: @arn)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetSubscriptionAttributesResponse]
    #   Returns the data for this {Subscription}. Calls
    #   {Client#get_subscription_attributes} if {#data_loaded?} is `false`.
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
    #   subscription.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(subscription_arn: @arn)
      resp = @client.unsubscribe(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   subscription.set_attributes({
    #     attribute_name: "attributeName", # required
    #     attribute_value: "attributeValue",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :attribute_name
    #   The name of the attribute you want to set. Only a subset of the
    #   subscriptions attributes are mutable.
    #
    #   Valid values: `DeliveryPolicy` \| `FilterPolicy` \|
    #   `RawMessageDelivery`
    # @option options [String] :attribute_value
    #   The new value for the attribute in JSON format.
    # @return [EmptyStructure]
    def set_attributes(options = {})
      options = options.merge(subscription_arn: @arn)
      resp = @client.set_subscription_attributes(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      { arn: @arn }
    end
    deprecated(:identifiers)

    private

    def extract_arn(args, options)
      value = args[0] || options.delete(:arn)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :arn"
      else
        msg = "expected :arn to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
