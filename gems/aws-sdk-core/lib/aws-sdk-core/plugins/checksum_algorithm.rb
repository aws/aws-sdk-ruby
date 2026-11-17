# frozen_string_literal: true

require_relative '../checksums'

module Aws
  module Core
    module Plugins
      # @api private
      class ChecksumAlgorithm < Smithy::Client::Plugin
        DEFAULT_CHECKSUM = Checksums::DEFAULT_ALGORITHM

        option(
          :request_checksum_calculation,
          doc_default: 'when_supported',
          doc_type: 'String',
          docstring: <<~DOCS) do |config|
            Determines when a checksum is calculated for request payloads. Values are:

            * `when_supported` - (default) A checksum is calculated for operations
              modeled with the `httpChecksum` trait when `requestChecksumRequired`
              is `true` or a `requestAlgorithmMember` is modeled.
            * `when_required` - A checksum is calculated only when
              `requestChecksumRequired` is `true`, or when the caller supplies a
              modeled `requestAlgorithmMember`.
          DOCS
          resolve_mode(
            ENV.fetch('AWS_REQUEST_CHECKSUM_CALCULATION', nil),
            profile_value(config, 'request_checksum_calculation'),
            option: :request_checksum_calculation,
            environment: 'AWS_REQUEST_CHECKSUM_CALCULATION'
          )
        end

        option(
          :response_checksum_validation,
          doc_default: 'when_supported',
          doc_type: 'String',
          docstring: <<~DOCS) do |config|
            Determines when checksum validation is performed for response payloads.
            Values are:

            * `when_supported` - (default) Validation is enabled for operations
              modeled with a `requestValidationModeMember` and at least one
              `responseAlgorithms` value supported by the client.
            * `when_required` - Validation is performed only when the caller sets
              the modeled `requestValidationModeMember` to `ENABLED`.
          DOCS
          resolve_mode(
            ENV.fetch('AWS_RESPONSE_CHECKSUM_VALIDATION', nil),
            profile_value(config, 'response_checksum_validation'),
            option: :response_checksum_validation,
            environment: 'AWS_RESPONSE_CHECKSUM_VALIDATION'
          )
        end

        class << self
          def profile_value(config, name)
            profile = config.profile || ENV['AWS_PROFILE'] || 'default'
            Aws.shared_config.profiles.fetch(profile, {})[name]
          end

          def resolve_mode(*values, option:, environment:)
            value = values.compact.first || 'when_supported'
            value = value.to_s.downcase
            return value if %w[when_supported when_required].include?(value)

            raise ArgumentError,
                  "expected :#{option} or ENV['#{environment}'] to be " \
                  '`when_supported` or `when_required`'
          end
        end

        def after_initialize(client)
          config = client.config
          config.request_checksum_calculation = ChecksumAlgorithm.resolve_mode(
            config.request_checksum_calculation,
            option: :request_checksum_calculation,
            environment: 'AWS_REQUEST_CHECKSUM_CALCULATION'
          )
          config.response_checksum_validation = ChecksumAlgorithm.resolve_mode(
            config.response_checksum_validation,
            option: :response_checksum_validation,
            environment: 'AWS_RESPONSE_CHECKSUM_VALIDATION'
          )
        end

        def add_handlers(handlers, _config)
          handlers.add(ChecksumDefaultsHandler, step: :initialize)
          handlers.add(ChecksumHandler, step: :build, priority: 15)
        end

        # Applies modeled defaults before protocol serialization.
        class ChecksumDefaultsHandler < Smithy::Client::Handler
          def call(context)
            context[:http_checksum] ||= {}
            checksum = Extension.http_checksum(context.operation)
            apply_request_algorithm_default(context, checksum)
            apply_validation_mode_default(context, checksum)
            @handler.call(context)
          end

          private

          def apply_request_algorithm_default(context, checksum)
            return unless checksum
            return unless (member = checksum[:request_algorithm_member])
            return if context.params.key?(member)
            return unless checksum[:request_checksum_required] ||
                          context.config.request_checksum_calculation == 'when_supported'

            context.params[member] = DEFAULT_CHECKSUM
            context[:http_checksum][:defaulted_request_algorithm] = true
          end

          def apply_validation_mode_default(context, checksum)
            return unless checksum
            return unless context.config.response_checksum_validation == 'when_supported'
            return unless (member = checksum[:request_validation_mode_member])

            context.params[member] ||= 'ENABLED'
          end
        end

        # Coordinates flexible checksum request and response processing.
        class ChecksumHandler < Smithy::Client::Handler
          def call(context)
            checksum = Extension.http_checksum(context.operation)
            algorithm = apply_request_checksum(context, checksum)
            validator = Checksums::ResponseValidator.new(context, checksum).register
            response = track_features(context.config, algorithm) { @handler.call(context) }
            validator.raise_if_failed
            response
          end

          private

          def apply_request_checksum(context, checksum)
            return unless checksum

            Checksums::RequestChecksum.new(context, checksum).apply
          end

          def track_features(config, algorithm, &)
            features = [
              request_config_feature(config.request_checksum_calculation),
              response_config_feature(config.response_checksum_validation),
              algorithm_feature(algorithm)
            ].compact
            Smithy::Client::Features.track(features, &)
          end

          def request_config_feature(mode)
            "FLEXIBLE_CHECKSUMS_REQ_#{mode.upcase}"
          end

          def response_config_feature(mode)
            "FLEXIBLE_CHECKSUMS_RES_#{mode.upcase}"
          end

          def algorithm_feature(algorithm)
            return unless algorithm

            "FLEXIBLE_CHECKSUMS_REQ_#{algorithm}"
          end
        end
      end
    end
  end
end
