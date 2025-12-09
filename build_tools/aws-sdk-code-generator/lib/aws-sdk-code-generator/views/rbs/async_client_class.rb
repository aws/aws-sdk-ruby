# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    module RBS
      class AsyncClientClass < View
        # Delegated methods on response/output
        # so would not be included in the rbs
        SKIP_MEMBERS = Set.new(
          %w[
            context
            data
            error
            checksum_validated
            on
            on_success
          ]
        )

        def initialize(options)
          @options = options
          @service_name = options.fetch(:service_name)
          @api = options.fetch(:api)
          @aws_sdk_core_lib_path = options.fetch(:aws_sdk_core_lib_path)
          @plugins = PluginList.new(options)
          @codegenerated_plugins = options.fetch(:codegenerated_plugins)
          @protocol_settings = options.fetch(:protocol_settings, {})
        end

        # @return [String|nil]
        def generated_src_warning
          GENERATED_SRC_WARNING
        end

        def service_name
          @service_name
        end

        def client_option(indent: ' ' * 20)
          plugin_options = documented_plugin_options(@plugins) + documented_plugin_options(@codegenerated_plugins)
          [
            '',
            "#{indent}  #{build_keyword_arguments(plugin_options).join(",\n#{indent}  ")}",
            indent
          ].join("\n")
        end

        def operations
          shapes = @api['shapes']
          @api['operations'].map do |name, body|
            next unless async_operation?(body)

            method_name = Underscore.underscore(name)
            indent = ' ' * (12 + method_name.length)
            input_shape_name = body.dig('input', 'shape')
            arguments = nil
            include_required = false
            if input_shape_name
              input_shape = shapes[input_shape_name]
              options =
                if AwsSdkCodeGenerator::Helper.operation_bidirectional_eventstreaming?(body, @api)
                  { bidirectional_eventstreaming: true }
                else
                  {}
                end

              builder = AwsSdkCodeGenerator::RBS::KeywordArgumentBuilder.new(
                api: @api,
                shape: input_shape,
                newline: true,
                options: options
              )
              arguments = builder.format(indent: indent)
              include_required = input_shape['required']&.empty?&.!
            end
            block = ' ?{ (*untyped) -> void }' if AwsSdkCodeGenerator::Helper.operation_streaming?(body, @api)
            if (output_shape_name = body.dig('output', 'shape'))
              output_shape = shapes[output_shape_name]
              data = AwsSdkCodeGenerator::RBS.to_type(body.fetch('output'), @api)
              interface = "_#{name}ResponseSuccess"
            else
              output_shape = nil
              data = '::Aws::EmptyStructure'
              interface = '::Seahorse::Client::_ResponseSuccess[::Aws::EmptyStructure]'
            end
            returns_members = output_shape&.[]('members')&.inject([]) do |a, (member_name, member_ref)|
              member_name_underscore = Underscore.underscore(member_name)
              next a if SKIP_MEMBERS.include?(member_name_underscore)

              a << {
                method_name: member_name_underscore,
                returns: AwsSdkCodeGenerator::RBS.to_type(member_ref, @api)
              }
            end

            {
              method_name: method_name,
              signature: AwsSdkCodeGenerator::RBS::MethodSignature.new(
                method_name: method_name,
                overloads: [
                  "(#{arguments})#{block} -> #{interface}",
                  "(#{include_required ? '' : '?'}Hash[Symbol, untyped] params, ?Hash[Symbol, untyped] options)#{block} -> #{interface}",
                ]
              ).signature,
              interface: interface,
              data: data,
              returns_members: returns_members,
              empty_structure: output_shape.nil?
            }
          end.compact
        end

        def label_value(input, label, params)
          name = nil
          input.members.each do |member_name, member_shape|
            next unless member_shape.traits.include?('smithy.api#hostLabel')
            next unless member_shape.name == label

            name = member_name
          end
          raise ArgumentError, "#{label} is not a valid host label" if name.nil?
          raise ArgumentError, "params[#{name}] must not be nil or blank" if params[name].nil? || params[name].empty?

          params[name]
        end

        private

        def async_operation?(operation)
          return unless (h2 = @protocol_settings['h2'])

          case h2
          when 'eventstream', 'required'
            AwsSdkCodeGenerator::Helper.operation_eventstreaming?(operation, @api)
          when 'optional'
            AwsSdkCodeGenerator::Helper.operation_bidirectional_eventstreaming?(operation, @api)
          else
            raise 'Unsupported protocol setting'
          end
        end

        def documented_plugin_options(plugins)
          i = 0
          plugins.map(&:options).flatten.select(&:documented?).sort_by do |opt|
            [opt.required ? 'a' : 'b', opt.name, i += 1]
          end
        end

        def build_keyword_arguments(plugins)
          buffer = plugins.map do |opt|
            rbs_type =
              opt.rbs_type ||
              (
                case opt.doc_type
                when 'Boolean' then 'bool'
                when nil then 'untyped'
                else
                  opt.doc_type.to_s
                end
              )
            rbs_type.yield_self do |type|
              [opt.name, "?#{opt.name}: #{type}", opt.doc_type]
            end
          end
          # Find duplicated key
          grouped = buffer.group_by { |name, _| name }
          grouped.transform_values(&:count).find_all { |_, c| c > 1 }.each do |name,|
            case name
            when :endpoint, :endpoint_provider, :retry_backoff, :retry_limit, :retry_base_delay, :disable_s3_express_session_auth, :account_id, :account_id_endpoint_mode
              # ok
            else
              warn("Duplicate client option in #{@service_name}: `#{grouped[name].map { |g| g.values_at(0, 2) }}`", uplevel: 0)
            end
          end
          buffer.uniq! { |b| b[0] }
          buffer.map! { |b| b[1] }
          buffer.concat(
            [
              '?connection_read_timeout: (Float | Integer)',
              '?connection_timeout: (Float | Integer)',
              '?enable_alpn: bool',
              '?max_concurrent_streams: (Float | Integer)',
              '?read_chunk_size: (Float | Integer)',
              '?http_wire_trace: bool',
              '?ssl_verify_peer: bool',
              '?ssl_ca_bundle: String',
              '?ssl_ca_directory: String',
              '?ssl_ca_store: String',
              '?raise_response_errors: bool'
            ]
          )
          buffer
        end
      end
    end
  end
end
