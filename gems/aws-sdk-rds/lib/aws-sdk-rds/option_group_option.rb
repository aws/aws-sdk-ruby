# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module RDS
    class OptionGroupOption

      extend Aws::Deprecations

      # @overload def initialize(name, options = {})
      #   @param [String] name
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :name
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @name = extract_name(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def name
        @name
      end

      # The description of the option.
      # @return [String]
      def description
        data.description
      end

      # The name of the engine that this option can be applied to.
      # @return [String]
      def engine_name
        data.engine_name
      end

      # Indicates the major engine version that the option is available for.
      # @return [String]
      def major_engine_version
        data.major_engine_version
      end

      # The minimum required engine version for the option to be applied.
      # @return [String]
      def minimum_required_minor_engine_version
        data.minimum_required_minor_engine_version
      end

      # Specifies whether the option requires a port.
      # @return [Boolean]
      def port_required
        data.port_required
      end

      # If the option requires a port, specifies the default port for the
      # option.
      # @return [Integer]
      def default_port
        data.default_port
      end

      # List of all options that are prerequisites for this option.
      # @return [Array<String>]
      def options_depended_on
        data.options_depended_on
      end

      # A persistent option cannot be removed from the option group once the
      # option group is used, but this option can be removed from the db
      # instance while modifying the related data and assigning another option
      # group without this option.
      # @return [Boolean]
      def persistent
        data.persistent
      end

      # A permanent option cannot be removed from the option group once the
      # option group is used, and it cannot be removed from the db instance
      # after assigning an option group with this permanent option.
      # @return [Boolean]
      def permanent
        data.permanent
      end

      # Specifies the option settings that are available (and the default
      # value) for each option in an option group.
      # @return [Array<Types::OptionGroupOptionSetting>]
      def option_group_option_settings
        data.option_group_option_settings
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # @raise [Errors::ResourceNotLoadable]
      # @api private
      def load
        msg = "#load is not implemented, data only available via enumeration"
        raise Errors::ResourceNotLoadable, msg
      end
      alias :reload :load

      # @raise [Errors::ResourceNotLoadableError] Raises when {#data_loaded?} is `false`.
      # @return [Types::OptionGroupOption]
      #   Returns the data for this {OptionGroupOption}.
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
        { name: @name }
      end
      deprecated(:identifiers)

      private

      def extract_name(args, options)
        value = args[0] || options.delete(:name)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :name"
        else
          msg = "expected :name to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<OptionGroupOption>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
