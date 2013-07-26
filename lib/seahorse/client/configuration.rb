
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

require 'uri'

module Seahorse
  module Client

    # Configuration objects are immutable objects that are constructed with a
    # hash of user supplied data.  You can register configuration options 
    # via {#add_option} which defines a getter with a default value.
    #
    # ## Adding Options
    #
    # The {#add_option} method registers a new option.  This adds a getter
    # method and allows you to specify a default value.
    #
    #     config = Seahorse::Client::Configuration.new
    #     config.add_option(:api_key)
    #     config.api_key
    #     #=> defaults to nil
    #
    # Configuration options provide access to values passed into the
    # constructor.
    #
    #     config = Seahorse::Client::Configuration.new(api_key: 'my-api-key')
    #     config.add_option(:api_key)
    #     config.api_key
    #     #=> 'my-api-key'
    #
    # ## Default Values
    #
    # You can specify a default value for configuration options that were
    # not provided to the constructor.
    #
    #     config = Seahorse::Client::Configuration.new
    #     config.add_option(:use_ssl, true)
    #     config.use_ssl
    #     #=> returns the default value of true
    #
    # Values given to the constructor override defaults:
    #
    #     config = Seahorse::Client::Configuration.new(use_ssl: false)
    #     config.add_option(:use_ssl, true)
    #     config.use_ssl
    #     #=> false
    #
    # ## Dynamic Default Values
    #
    # If you prefer for default values to be calculated when the getter is
    # called, you can provide the default value via a block argument.
    #
    #     config.add_option(:current_time) { Time.now }
    #     config.current_time
    #     #=> returns a different value every time #current_time is called.
    #
    # ## Duplicating Configuration Options
    #
    # If you want a copy of a configuration option merged with a new
    # set of data, you can call {#with_options}.  This returns a new
    # object.
    #
    #     config = Seahorse::Client::Configuration.new(:api_key => 'abc')
    #     new_config = config.with_options(:api_key => 'xyz')
    #
    #     config.api_key #=> 'abc'
    #     new_config.api_key #=> 'xyz'
    #
    class Configuration

      # @api private
      def initialize(options = {})
        @options = options
      end

      # Adds a getter method that returns the named option or a default
      # value.  Default values can be passed as a static positional argument
      # or via a block.
      #
      # @param [Symbol] name The name of the configuration option.  This will
      #   be used to define a getter by the same name.
      #
      # @param default (nil) Specifies the default value used when not set
      #   via the constructor.  You can skip this argument and specify a default
      #   via a block argument.
      #
      # @return [void]
      def add_option(*args, &block)
        self.class.add_option(*args, &block)
      end

      # Returns a new configuration that is merged with the given `options`.
      # Returns `self` if `options` are empty.
      # @param [Hash] options ({})
      # @return [Configuration]
      def with_options(options = {})
        if options.empty?
          self
        else
          cfg = self.class.allocate
          cfg.send(:initialize, @options.merge(options))
          cfg
        end
      end

      # @return [String]
      # @api private
      def inspect
        "#<Seahorse::Client::Configuration @options=#{@options.inspect}>"
      end

      class << self

        # @api private
        def new(options = {})
          config = Class.new(self).allocate
          config.send(:initialize, options)
          config
        end

        # Adds a getter method that returns the named option or a default
        # value.  Default values can be passed as a static positional argument
        # or via a block.
        #
        # @param [Symbol] name The name of the configuration option.  This will
        #   be used to define a getter by the same name.
        #
        # @param default (nil) Specifies the default value used when not set
        #   via the constructor.  You can skip this argument and specify a default
        #   via a block argument.
        #
        # @return [void]
        def add_option(name, default = nil, &block)
          define_method(name) do
            case
            when @options.key?(name) then @options[name]
            when block then block.call
            else default
            end
          end
          nil
        end

      end
    end
  end
end
