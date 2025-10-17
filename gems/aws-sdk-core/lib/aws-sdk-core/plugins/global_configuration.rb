# frozen_string_literal: true

module Aws
  module Core
    module Plugins
      # This plugin provides the ability to globally configure all AWS classes or specific ones.
      # @api private
      class GlobalConfiguration < Smithy::Client::Plugin
        @identifiers = Set.new

        def before_initialize(client_class, options)
          apply_service_defaults(client_class, options)
          apply_aws_defaults(client_class, options)
        end

        private

        def apply_service_defaults(client_class, options)
          return unless (defaults = Aws::Core.config[client_class.identifier])

          defaults.each do |option_name, default|
            options[option_name] = default unless options.key?(option_name)
          end
        end

        def apply_aws_defaults(_client_class, options)
          Aws.config.each do |option_name, default|
            next if self.class.identifiers.include?(option_name)
            next if options.key?(option_name)

            options[option_name] = default
          end
        end

        class << self
          # Registers an additional service identifier.
          # @api private
          def add_identifier(identifier)
            @identifiers << identifier
          end

          # @return [Set<String>]
          # @api private
          attr_reader :identifiers
        end
      end
    end
  end
end
