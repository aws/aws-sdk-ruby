# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # @api private
  module Paginators

    # @api private
    class AddLayerVersionPermission
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class AddPermission
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CheckpointDurableExecution
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateAlias
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateCapacityProvider
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateEventSourceMapping
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateFunction
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class CreateFunctionUrlConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteAlias
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteCapacityProvider
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteEventSourceMapping
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteFunction
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteFunctionCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteFunctionConcurrency
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteFunctionEventInvokeConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteFunctionUrlConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteLayerVersion
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteProvisionedConcurrencyConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class DeleteResourcePolicy
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetAccountSettings
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetAlias
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetCapacityProvider
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetDurableExecution
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetDurableExecutionHistory
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
        data.events
      end
    end

    # @api private
    class GetDurableExecutionState
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
        data.operations
      end
    end

    # @api private
    class GetEventSourceMapping
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunction
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionConcurrency
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionConfiguration
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionEventInvokeConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionRecursionConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionScalingConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetFunctionUrlConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetLayerVersion
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetLayerVersionByArn
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetLayerVersionPolicy
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetPolicy
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetProvisionedConcurrencyConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetResourcePolicy
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class GetRuntimeManagementConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class Invoke
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class InvokeAsync
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class InvokeWithResponseStream
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

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
    class ListCapacityProviders
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
        data.capacity_providers
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
    class ListDurableExecutionsByFunction
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
        data.durable_executions
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
    class ListFunctionVersionsByCapacityProvider
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
        data.function_versions
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
    class ListTags
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
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

    # @api private
    class PublishLayerVersion
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PublishVersion
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutFunctionCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutFunctionConcurrency
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutFunctionEventInvokeConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutFunctionRecursionConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutFunctionScalingConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutProvisionedConcurrencyConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutResourcePolicy
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class PutRuntimeManagementConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class RemoveLayerVersionPermission
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class RemovePermission
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SendDurableExecutionCallbackFailure
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SendDurableExecutionCallbackHeartbeat
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class SendDurableExecutionCallbackSuccess
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class StopDurableExecution
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class TagResource
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UntagResource
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateAlias
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateCapacityProvider
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateCodeSigningConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateEventSourceMapping
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateFunctionCode
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateFunctionConfiguration
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateFunctionEventInvokeConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

    # @api private
    class UpdateFunctionUrlConfig
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
        raise NotImplementedError, 'item iteration is not implemented for this operation'
      end
    end

  end
end
