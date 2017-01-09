# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScaling
  class Activity

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :activity_id :id

    # The name of the Auto Scaling group.
    # @return [String]
    def auto_scaling_group_name
      data.auto_scaling_group_name
    end

    # A friendly, more verbose description of the activity.
    # @return [String]
    def description
      data.description
    end

    # The reason the activity began.
    # @return [String]
    def cause
      data.cause
    end

    # The start time of the activity.
    # @return [Time]
    def start_time
      data.start_time
    end

    # The end time of the activity.
    # @return [Time]
    def end_time
      data.end_time
    end

    # The current status of the activity.
    # @return [String]
    def status_code
      data.status_code
    end

    # A friendly, more verbose description of the activity status.
    # @return [String]
    def status_message
      data.status_message
    end

    # A value between 0 and 100 that indicates the progress of the activity.
    # @return [Integer]
    def progress
      data.progress
    end

    # The details about the activity.
    # @return [String]
    def details
      data.details
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Activity}.
    # Returns `self` making it possible to chain methods.
    #
    #     activity.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_scaling_activities(activity_ids: [@id])
      @data = resp.activities[0]
      self
    end
    alias :reload :load

    # @return [Types::Activity]
    #   Returns the data for this {Activity}. Calls
    #   {Client#describe_scaling_activities} if {#data_loaded?} is `false`.
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

    # @!group Associations

    # @return [AutoScalingGroup, nil]
    def group
      if data.auto_scaling_group_name
        AutoScalingGroup.new(
          name: data.auto_scaling_group_name,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
