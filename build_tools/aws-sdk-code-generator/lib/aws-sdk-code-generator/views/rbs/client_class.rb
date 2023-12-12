# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ClientClass < View
        attr_reader :shape_dictionary

        def initialize(shape_dictionary:)
          @shape_dictionary = shape_dictionary
          @waiters = AwsSdkCodeGenerator::RBS::Waiter.build_list(shape_dictionary: shape_dictionary)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @shape_dictionary.service_id
        end

        def client_option
          require_relative "../../../../../../gems/aws-sdk-#{@shape_dictionary.identifier}/lib/aws-sdk-#{@shape_dictionary.identifier}"
          client_class = Aws.const_get(@shape_dictionary.service_id)::Client
          public_options = client_class.plugins.map(&:options).flatten.select(&:documented?)
          # see also client_constructor.rb
          ordered_public_options = public_options.sort_by.with_index do |opt, i|
            [opt.required ? 'a' : 'b', opt.name, i]
          end
          buffer = ordered_public_options.map do |opt|
            type = case opt.name
              when :retry_mode
                '("legacy" | "standard" | "adaptive")'
              when :retry_jitter
                "(:none | :equal | :full | ^(Integer) -> Integer)"
              when :stub_responses, :endpoint, :credentials, :log_formatter, :client_side_monitoring_publisher, :logger, :endpoint_provider, :token_provider, :express_credentials_provider
                # TODO: Just not supported yet
                "untyped"
              else
                case opt.doc_type
                when "Boolean"
                  "bool"
                when nil
                  raise opt.inspect
                else
                  opt.doc_type
                end
              end
              [opt.name, "?#{opt.name}: #{type}", opt.doc_type]
          end
          # Find duplicated key
          grouped = buffer.group_by { |name, _| name }
          grouped.transform_values(&:count).find_all { |_, c| 1 < c }.each do |name,|
            # :endpoint is duprecated in all client
            case name
            when :endpoint, :endpoint_provider
            else
              warn("Duprecate client option: `#{grouped[name].map { |g| g.values_at(0, 2) }}`", uplevel: 0)
            end
          end
          buffer.uniq { |b| b[0] }.map { |b| b[1] }.join(", ")
        end

        def operations
          @shape_dictionary.service.api["operations"].map do |key, body|
            arguments = body.dig("input", "shape")&.then {
              @shape_dictionary[_1].find(&:input?).as_keyword_arguments(from: :operations)
            }
            include_required = @shape_dictionary.service.api["shapes"][body.dig("input", "shape")]&.[]("required")&.empty?&.!
            if AwsSdkCodeGenerator::Helper.operation_streaming?(body, @shape_dictionary.service.api)
              block = " ?{ (*untyped) -> void }"
            end
            returns = body.dig("output", "shape")&.then { "Types::#{_1}" } || "::Aws::EmptyStructure"

            method_name = Underscore.underscore(body.fetch("name"))
            AwsSdkCodeGenerator::RBS::MethodSignature.new(
              method_name: method_name,
              overloads: [
                "(#{arguments})#{block} -> #{returns}",
                "(#{include_required ? "" : "?"}Hash[Symbol, untyped] params, ?Hash[Symbol, untyped] options)#{block} -> #{returns}",
              ],
            )
          end
        end

        def waiters?
          @waiters.size > 0
        end

        def waiters_first
          [@waiters.first]
        end

        def waiters_others
          @waiters[1..-1]
        end
      end
    end
  end
end
