require 'set'

module Seahorse
  module Client

    # Configuration is used to define possible configuration options and
    # then build read-only structures with user-supplied data.
    #
    # ## Adding Configuration Options
    #
    # Add configuration options with optional default values.  These are used
    # when building configuration objects.
    #
    #     configuration = Configuration.new
    #
    #     configuration.add_option(:max_retries, 3)
    #     configuration.add_option(:use_ssl, true)
    #
    #     cfg = configuration.build!
    #     #=> #<struct max_retires=3 use_ssl=true>
    #
    # ## Building Configuration Objects
    #
    # Calling {#build!} on a {Configuration} object causes it to return
    # a read-only (frozen) struct.  Options passed to {#build!} are merged
    # on top of any default options.
    #
    #     configuration = Configuration.new
    #     configuration.add_option(:color, 'red')
    #
    #     # default
    #     cfg1 = configuration.build!
    #     cfg1.color #=> 'red'
    #
    #     # supplied color
    #     cfg2 = configuration.build!(color: blue)
    #     cfg2.color #=> 'blue'
    #
    # ## Accepted Options
    #
    # If you try to {#build!} a {Configuration} object with an unknown
    # option, an `ArgumentError` is raised.
    #
    #     configuration = Configuration.new
    #     configuration.add_option(:color)
    #     configuration.add_option(:size)
    #     configuration.add_option(:category)
    #
    #     configuration.build!(price: 100)
    #     #=> raises an ArgumentError, :price was not added as an option
    #
    class Configuration

      # @api private
      def initialize
        @defaults = {}
      end

      # Adds a getter method that returns the named option or a default
      # value.  Default values can be passed as a static positional argument
      # or via a block.
      #
      #    # defaults to nil
      #    configuration.add_option(:name)
      #
      #    # with a string default
      #    configuration.add_option(:name, 'John Doe')
      #
      #    # with a dynamic default value, evaluated once when calling #build!
      #    configuration.add_option(:name, 'John Doe')
      #    configuration.add_option(:username) do |config|
      #       config.name.gsub(/\W+/, '').downcase
      #    end
      #    cfg = configuration.build!
      #    cfg.name #=> 'John Doe'
      #    cfg.username #=> 'johndoe'
      #
      # @param [Symbol] name The name of the configuration option.  This will
      #   be used to define a getter by the same name.
      #
      # @param default The default value for this option.  You can specify
      #   a default by passing a value, a `Proc` object or a block argument.
      #   Procs and blocks are evaluated when {#build!} is called.
      #
      # @return [self]
      def add_option(name, default = nil, &block)
        @defaults[name.to_sym] = block_given? ?
          UnresolvedOption.new(Proc.new) :
          default
        self
      end

      # Constructs and returns a configuration structure.
      # Values not present in `options` will default to those supplied via
      # add option.
      #
      #     configuration = Configuration.new
      #     configuration.add_option(:enabled, true)
      #
      #     cfg1 = configuration.build!
      #     cfg1.enabled #=> true
      #
      #     cfg2 = configuration.build!(enabled: false)
      #     cfg2.enabled #=> false
      #
      # If you pass in options to `#build!` that have not been defined,
      # then an `ArgumentError` will be raised.
      #
      #     configuration = Configuration.new
      #     configuration.add_option(:enabled, true)
      #
      #     # oops, spelling error for :enabled
      #     cfg = configuration.build!(enabld: true)
      #     #=> raises ArgumentError
      #
      # The object returned is a frozen `Struct`.
      #
      #     configuration = Configuration.new
      #     configuration.add_option(:enabled, true)
      #
      #     cfg = configuration.build!
      #     cfg.enabled #=> true
      #     cfg[:enabled] #=> true
      #     cfg['enabled'] #=> true
      #
      # @param [Hash] options ({}) A hash of configuration options.
      # @return [Struct] Returns a frozen configuration `Struct`.
      def build!(options = {})
        struct = default_struct
        options.each do |opt, value|
          begin
            struct[opt] = value
          rescue NameError
            msg = "invalid configuration option `#{opt.inspect}'"
            raise ArgumentError, msg
          end
        end
        OptionBlockResolver.new(struct).struct.freeze
      end

      private

      def default_struct
        Struct.new(*@defaults.keys).new(*@defaults.values_at(*@defaults.keys))
      end

      # @api private
      class UnresolvedOption

        def initialize(block)
          @block = block
        end

        attr_reader :block

      end

      # @api private
      class OptionBlockResolver

        def initialize(struct)
          @struct = struct
          @members = Set.new(@struct.members)
          @struct.members.each do |opt|
            if struct[opt].is_a?(UnresolvedOption)
              struct[opt] = struct[opt].block.call(self)
            end
          end
        end

        attr_reader :struct

        def respond_to?(method_name)
          @members.include?(method_name.to_sym) || super
        end

        private

        def method_missing(method_name, *args)
          if @members.include?(method_name)
            resolve_blocks(method_name)
          else
            super
          end
        end

        def resolve_blocks(member)
          if @struct[member].is_a?(UnresolvedOption)
            @struct[member] = @struct[member].block.call(self)
          end
          @struct[member]
        end

      end
    end
  end
end
