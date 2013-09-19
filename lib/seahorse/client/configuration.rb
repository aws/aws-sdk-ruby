# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

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
      # @param [Symbol] name The name of the configuration option.  This will
      #   be used to define a getter by the same name.
      #
      # @param default Specifies the default value used when not set
      #   via the constructor.  You can skip this argument and specify a default
      #   via a block argument.
      #
      # @return [self]
      def add_option(name, default = nil)
        @defaults[name.to_sym] = default
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
        options.inject(default_struct) do |cfg, (name, value)|
          begin
            cfg[name] = value
            cfg
          rescue NameError
            msg = "invalid configuration option `#{name.inspect}'"
            raise ArgumentError, msg
          end
        end.freeze
      end

      private

      def default_struct
        members = @defaults.keys
        raise 'unable to build empty configuration' if members.empty?
        Struct.new(*members).new(*@defaults.values_at(*members))
      end

    end
  end
end
