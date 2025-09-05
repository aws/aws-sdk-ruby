# frozen_string_literal: true

# This is generated code!

module Aws::LookoutVision
  # @api private
  module Paginators

    # @api private
    class ListDatasetEntries
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.dataset_entries
      end
    end

    # @api private
    class ListModelPackagingJobs
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.model_packaging_jobs
      end
    end

    # @api private
    class ListModels
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.models
      end
    end

    # @api private
    class ListProjects
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:next_token]
        return {} if prev_token.nil? || prev_token.empty?
        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:next_token] = prev_token
        tokens
      end

      def items(data)
        data.projects
      end
    end

  end
end
