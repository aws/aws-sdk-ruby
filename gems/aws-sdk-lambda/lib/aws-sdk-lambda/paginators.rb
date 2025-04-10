# frozen_string_literal: true

# This is generated code!

module Aws
  module Lambda
    # @api private
    module Paginators
      # @api private
      class ListAliases
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.aliases
        end
      end

      # @api private
      class ListCodeSigningConfigs
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.code_signing_configs
        end
      end

      # @api private
      class ListEventSourceMappings
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.event_source_mappings
        end
      end

      # @api private
      class ListFunctionEventInvokeConfigs
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.function_event_invoke_configs
        end
      end

      # @api private
      class ListFunctionUrlConfigs
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.function_url_configs
        end
      end

      # @api private
      class ListFunctions
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.functions
        end
      end

      # @api private
      class ListFunctionsByCodeSigningConfig
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.function_arns
        end
      end

      # @api private
      class ListLayerVersions
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.layer_versions
        end
      end

      # @api private
      class ListLayers
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.layers
        end
      end

      # @api private
      class ListProvisionedConcurrencyConfigs
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.provisioned_concurrency_configs
        end
      end

      # @api private
      class ListVersionsByFunction
        def next_tokens(data)
          next_token = data.next_marker
          return {} if next_token.nil? || next_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = next_token
          tokens
        end

        def prev_tokens(params)
          prev_token = params[:marker]
          return {} if prev_token.nil? || prev_token.empty?

          tokens = Hash.new { |h, k| h[k] = {} }
          tokens[:marker] = prev_token
          tokens
        end

        def items(data)
          data.versions
        end
      end
    end
  end
end
