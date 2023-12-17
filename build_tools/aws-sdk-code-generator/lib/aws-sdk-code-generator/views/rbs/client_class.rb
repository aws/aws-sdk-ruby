# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class ClientClass < View
        def initialize(options)
          @options = options
          @service_name = options.fetch(:service_name)
          @api = options.fetch(:api)
          @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
          @plugins = PluginList.new(options)
          @codegenerated_plugins = options.fetch(:codegenerated_plugins)
          @waiters = AwsSdkCodeGenerator::RBS::Waiter.build_list(api: @api, waiters:options.fetch(:waiters))
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @service_name
        end

        def client_option
          plugin_options = documented_plugin_options(@plugins) + documented_plugin_options(@codegenerated_plugins)
          build_keyword_arguments(plugin_options).join(", ")
        end

        def operations
          shapes = @api["shapes"]
          @api["operations"].map do |name, body|
            method_name = Underscore.underscore(body.fetch("name"))
            indent = " " * (12 + method_name.length)
            input_shape_name = body.dig("input", "shape")
            arguments = nil
            include_required = false
            if input_shape_name
              input_shape = shapes[input_shape_name]
              builder = AwsSdkCodeGenerator::RBS::KeywordArgumentBuilder.new(
                api: @api,
                shape: input_shape,
                newline: true,
              )
              arguments = builder.format(indent: indent)
              include_required = input_shape["required"]&.empty?&.!
            end
            if AwsSdkCodeGenerator::Helper.operation_streaming?(body, @api)
              block = " ?{ (*untyped) -> void }"
            end
            returns = body.dig("output", "shape")&.then { "Types::#{_1}" } || "::Aws::EmptyStructure"

            AwsSdkCodeGenerator::RBS::MethodSignature.new(
              method_name: method_name,
              overloads: [
                "(#{arguments})#{block} -> #{returns}",
                "(\n#{indent}  #{include_required ? "" : "?"}Hash[Symbol, untyped] params,\n#{indent}  ?Hash[Symbol, untyped] options\n#{indent})#{block} -> #{returns}",
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
                  "untyped"
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
