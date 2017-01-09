# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class PendingMaintenanceAction

    extend Aws::Deprecations

    # @overload def initialize(target_arn, name, options = {})
    #   @param [String] target_arn
    #   @param [String] name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :target_arn
    #   @option options [required, String] :name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @target_arn = extract_target_arn(args, options)
      @name = extract_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def target_arn
      @target_arn
    end

    # @return [String]
    def name
      @name
    end
    alias :action :name

    # The date of the maintenance window when the action will be applied.
    # The maintenance action will be applied to the resource during its
    # first maintenance window after this date. If this date is specified,
    # any `next-maintenance` opt-in requests are ignored.
    # @return [Time]
    def auto_applied_after_date
      data.auto_applied_after_date
    end

    # The date when the maintenance action will be automatically applied.
    # The maintenance action will be applied to the resource on this date
    # regardless of the maintenance window for the resource. If this date is
    # specified, any `immediate` opt-in requests are ignored.
    # @return [Time]
    def forced_apply_date
      data.forced_apply_date
    end

    # Indicates the type of opt-in request that has been received for the
    # resource.
    # @return [String]
    def opt_in_status
      data.opt_in_status
    end

    # The effective date when the pending maintenance action will be applied
    # to the resource. This date takes into account opt-in requests received
    # from the ApplyPendingMaintenanceAction API, the
    # `AutoAppliedAfterDate`, and the `ForcedApplyDate`. This value is blank
    # if an opt-in request has not been received and nothing has been
    # specified as `AutoAppliedAfterDate` or `ForcedApplyDate`.
    # @return [Time]
    def current_apply_date
      data.current_apply_date
    end

    # A description providing more detail about the maintenance action.
    # @return [String]
    def description
      data.description
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
    # @return [Types::PendingMaintenanceAction]
    #   Returns the data for this {PendingMaintenanceAction}.
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
    #   pending_maintenance_action.apply_immediately()
    # @param [Hash] options ({})
    # @return [ResourcePendingMaintenanceActionList]
    def apply_immediately(options = {})
      options = options.merge(
        apply_action: @name,
        resource_identifier: @target_arn,
        opt_in_type: "immediate"
      )
      resp = @client.apply_pending_maintenance_action(options)
      ResourcePendingMaintenanceActionList.new(
        arn: resp.data.resource_pending_maintenance_actions.resource_identifier,
        data: resp.data.resource_pending_maintenance_actions,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   pending_maintenance_action.undo_opt_in()
    # @param [Hash] options ({})
    # @return [ResourcePendingMaintenanceActionList]
    def undo_opt_in(options = {})
      options = options.merge(
        apply_action: @name,
        resource_identifier: @target_arn,
        opt_in_type: "undo-opt-in"
      )
      resp = @client.apply_pending_maintenance_action(options)
      ResourcePendingMaintenanceActionList.new(
        arn: resp.data.resource_pending_maintenance_actions.resource_identifier,
        data: resp.data.resource_pending_maintenance_actions,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   pending_maintenance_action.apply_on_next_maintenance()
    # @param [Hash] options ({})
    # @return [ResourcePendingMaintenanceActionList]
    def apply_on_next_maintenance(options = {})
      options = options.merge(
        apply_action: @name,
        resource_identifier: @target_arn,
        opt_in_type: "next-maintenance"
      )
      resp = @client.apply_pending_maintenance_action(options)
      ResourcePendingMaintenanceActionList.new(
        arn: resp.data.resource_pending_maintenance_actions.resource_identifier,
        data: resp.data.resource_pending_maintenance_actions,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        target_arn: @target_arn,
        name: @name
      }
    end
    deprecated(:identifiers)

    private

    def extract_target_arn(args, options)
      value = args[0] || options.delete(:target_arn)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :target_arn"
      else
        msg = "expected :target_arn to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_name(args, options)
      value = args[1] || options.delete(:name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :name"
      else
        msg = "expected :name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
