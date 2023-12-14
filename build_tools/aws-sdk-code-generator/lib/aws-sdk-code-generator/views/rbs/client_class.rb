# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ClientClass < View
        attr_reader :shape_dictionary

        def initialize(options)
          @options = options
          @shape_dictionary = options.fetch(:shape_dictionary)
          @service = @shape_dictionary.service
          @codegenerated_plugins = options.fetch(:codegenerated_plugins)
          @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
          @plugins = PluginList.new(options)
          @waiters = AwsSdkCodeGenerator::RBS::Waiter.build_list(shape_dictionary: @shape_dictionary)
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @shape_dictionary.service_id
        end

        def client_option
          plugin_options = documented_plugin_options(@plugins) + documented_plugin_options(@codegenerated_plugins)
          build_keyword_arguments(plugin_options).join(", ")
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

        private

        def documented_plugin_options(plugins)
          i = 0
          plugins.map(&:options).flatten.select(&:documented?).sort_by do |opt|
            [opt.required ? 'a' : 'b', opt.name, i += 1]
          end
        end

        def build_keyword_arguments(plugins)
          buffer = plugins.map do |opt|
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
          buffer.uniq! { |b| b[0] }
          buffer.map! { |b| b[1] }
          buffer.concat([
            # from mustache
            "?http_proxy: String",
            "?http_open_timeout: (Float | Integer)",
            "?http_read_timeout: (Float | Integer)",
            "?http_idle_timeout: (Float | Integer)",
            "?http_continue_timeout: (Float | Integer)",
            "?ssl_timeout: (Float | Integer | nil)",
            "?http_wire_trace: bool",
            "?ssl_verify_peer: bool",
            "?ssl_ca_bundle: String",
            "?ssl_ca_directory: String",
            # from object
            "?ssl_ca_store: String",
            "?on_chunk_received: Proc",
            "?on_chunk_sent: Proc",
            "?raise_response_errors: bool",
          ])
          buffer
        end
      end
    end
  end
end
