# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  class Message

    extend Aws::Deprecations

    # @overload def initialize(queue_url, receipt_handle, options = {})
    #   @param [String] queue_url
    #   @param [String] receipt_handle
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :queue_url
    #   @option options [required, String] :receipt_handle
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @queue_url = extract_queue_url(args, options)
      @receipt_handle = extract_receipt_handle(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def queue_url
      @queue_url
    end

    # @return [String]
    def receipt_handle
      @receipt_handle
    end

    # A unique identifier for the message. A `MessageId`is considered unique
    # across all AWS accounts for an extended period of time.
    # @return [String]
    def message_id
      data[:message_id]
    end

    # An MD5 digest of the non-URL-encoded message body string.
    # @return [String]
    def md5_of_body
      data[:md5_of_body]
    end

    # The message's contents (not URL-encoded).
    # @return [String]
    def body
      data[:body]
    end

    # `SenderId`, `SentTimestamp`, `ApproximateReceiveCount`, and/or
    # `ApproximateFirstReceiveTimestamp`. `SentTimestamp` and
    # `ApproximateFirstReceiveTimestamp` are each returned as an integer
    # representing the [epoch time][1] in milliseconds.
    #
    #
    #
    # [1]: http://en.wikipedia.org/wiki/Unix_time
    # @return [Hash<String,String>]
    def attributes
      data[:attributes]
    end

    # An MD5 digest of the non-URL-encoded message attribute string. You can
    # use this attribute to verify that Amazon SQS received the message
    # correctly. Amazon SQS URL-decodes the message before creating the MD5
    # digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    # [1]: https://www.ietf.org/rfc/rfc1321.txt
    # @return [String]
    def md5_of_message_attributes
      data[:md5_of_message_attributes]
    end

    # Each message attribute consists of a `Name`, `Type`, and `Value`. For
    # more information, see [Message Attribute Items and Validation][1] in
    # the *Amazon Simple Queue Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation
    # @return [Hash<String,Types::MessageAttributeValue>]
    def message_attributes
      data[:message_attributes]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::Message]
    #   Returns the data for this {Message}.
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
    #   message.change_visibility({
    #     visibility_timeout: 1, # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, Integer] :visibility_timeout
    #   The new value for the message's visibility timeout (in seconds).
    #   Values values: `0` to `43200`. Maximum: 12 hours.
    # @return [EmptyStructure]
    def change_visibility(options = {})
      options = options.merge(
        queue_url: @queue_url,
        receipt_handle: @receipt_handle
      )
      resp = @client.change_message_visibility(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   message.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        queue_url: @queue_url,
        receipt_handle: @receipt_handle
      )
      resp = @client.delete_message(options)
      resp.data
    end

    # @!group Associations

    # @return [Queue]
    def queue
      Queue.new(
        url: @queue_url,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        queue_url: @queue_url,
        receipt_handle: @receipt_handle
      }
    end
    deprecated(:identifiers)

    private

    def extract_queue_url(args, options)
      value = args[0] || options.delete(:queue_url)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :queue_url"
      else
        msg = "expected :queue_url to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_receipt_handle(args, options)
      value = args[1] || options.delete(:receipt_handle)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :receipt_handle"
      else
        msg = "expected :receipt_handle to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @param options ({})
      # @return [void]
      def batch_delete!(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:queue_url] = batch[0].queue_url
          params[:entries] ||= []
          batch.each do |item|
            params[:entries] << {
              id: item.message_id,
              receipt_handle: item.receipt_handle
            }
          end
          batch[0].client.delete_message_batch(params)
        end
        nil
      end

      # @!endgroup

    end
  end
end
