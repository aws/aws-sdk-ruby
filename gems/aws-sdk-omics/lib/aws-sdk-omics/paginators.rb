# frozen_string_literal: true

# This is generated code!

module Aws::Omics
  # @api private
  module Paginators

    # @api private
    class ListAnnotationImportJobs
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
        data.annotation_import_jobs
      end
    end

    # @api private
    class ListAnnotationStoreVersions
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
        data.annotation_store_versions
      end
    end

    # @api private
    class ListAnnotationStores
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
        data.annotation_stores
      end
    end

    # @api private
    class ListBatch
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListConfigurations
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListMultipartReadSetUploads
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
        data.uploads
      end
    end

    # @api private
    class ListReadSetActivationJobs
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
        data.activation_jobs
      end
    end

    # @api private
    class ListReadSetExportJobs
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
        data.export_jobs
      end
    end

    # @api private
    class ListReadSetImportJobs
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
        data.import_jobs
      end
    end

    # @api private
    class ListReadSetUploadParts
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
        data.parts
      end
    end

    # @api private
    class ListReadSets
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
        data.read_sets
      end
    end

    # @api private
    class ListReferenceImportJobs
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
        data.import_jobs
      end
    end

    # @api private
    class ListReferenceStores
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
        data.reference_stores
      end
    end

    # @api private
    class ListReferences
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
        data.references
      end
    end

    # @api private
    class ListRunCaches
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListRunGroups
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListRunTasks
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListRuns
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListRunsInBatch
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.runs
      end
    end

    # @api private
    class ListSequenceStores
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
        data.sequence_stores
      end
    end

    # @api private
    class ListShares
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
        data.shares
      end
    end

    # @api private
    class ListVariantImportJobs
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
        data.variant_import_jobs
      end
    end

    # @api private
    class ListVariantStores
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
        data.variant_stores
      end
    end

    # @api private
    class ListWorkflowVersions
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

    # @api private
    class ListWorkflows
      def next_tokens(data)
        next_token = data.next_token
        return {} if next_token.nil? || next_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = next_token
        tokens
      end

      def prev_tokens(params)
        prev_token = params[:starting_token]
        return {} if prev_token.nil? || prev_token.empty?

        tokens = Hash.new { |h, k| h[k] = {} }
        tokens[:starting_token] = prev_token
        tokens
      end

      def items(data)
        data.items
      end
    end

  end
end
