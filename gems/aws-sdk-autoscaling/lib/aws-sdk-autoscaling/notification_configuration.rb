# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class NotificationConfiguration

    extend Aws::Deprecations

    # @overload def initialize(group_name, type, topic_arn, options = {})
    #   @param [String] group_name
    #   @param [String] type
    #   @param [String] topic_arn
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :group_name
    #   @option options [required, String] :type
    #   @option options [required, String] :topic_arn
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @group_name = extract_group_name(args, options)
      @type = extract_type(args, options)
      @topic_arn = extract_topic_arn(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def group_name
      @group_name
    end
    alias :auto_scaling_group_name :group_name

    # @return [String]
    def type
      @type
    end
    alias :notification_type :type

    # @return [String]
    def topic_arn
      @topic_arn
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
    # @return [Types::NotificationConfiguration]
    #   Returns the data for this {NotificationConfiguration}.
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
    #   notification_configuration.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        auto_scaling_group_name: @group_name,
        topic_arn: @topic_arn
      )
      resp = @client.delete_notification_configuration(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   notification_configuration.put()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def put(options = {})
      options = Aws::Util.deep_merge(options,
        auto_scaling_group_name: @name,
        topic_arn: @topic_arn,
        notification_types: [@notification_type]
      )
      resp = @client.put_notification_configuration(options)
      resp.data
    end

    # @!group Associations

    # @return [AutoScalingGroup]
    def group
      AutoScalingGroup.new(
        name: @group_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        group_name: @group_name,
        type: @type,
        topic_arn: @topic_arn
      }
    end
    deprecated(:identifiers)

    private

    def extract_group_name(args, options)
      value = args[0] || options.delete(:group_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :group_name"
      else
        msg = "expected :group_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_type(args, options)
      value = args[1] || options.delete(:type)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :type"
      else
        msg = "expected :type to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_topic_arn(args, options)
      value = args[2] || options.delete(:topic_arn)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :topic_arn"
      else
        msg = "expected :topic_arn to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection

      # @!group Batch Actions

      # @param options ({})
      # @return [void]
      def batch_put(options = {})
        batch_enum.each do |batch|
          params = Aws::Util.copy_hash(options)
          params[:auto_scaling_group_name] = batch[0].name
          params[:topic_arn] = batch[0].topic_arn
          params[:notification_types] ||= []
          batch.each do |item|
            params[:notification_types] << {
              notification_type: item.notification_type
            }
          end
          batch[0].client.put_notification_configuration(params)
        end
        nil
      end

      # @!endgroup

    end
  end
end
