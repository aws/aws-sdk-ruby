require 'thread'

module Aws
  module S3
    # @api private
    class ObjectCopier

      # @param [S3::Objecst] object
      def initialize(object, options = {})
        @object = object
        @options = options.merge(client: @object.client)
      end

      def copy_from(source, options = {})
        copy_object(source, @object, merge_options(source, options))
      end


      def copy_to(target, options = {})
        copy_object(@object, target, merge_options(target, options))
      end

      private

      def copy_object(source, target, options)
        target_bucket, target_key = copy_target(target)
        options[:bucket] = target_bucket
        options[:key] = target_key
        options[:copy_source] = copy_source(source)
        if options.delete(:multipart_copy)
          ObjectMultipartCopier.new(@options).copy(options)
        else
          @object.client.copy_object(options)
        end
      end

      def copy_source(source)
        case source
        when String then escape(source)
        when Hash then "#{source[:bucket]}/#{escape(source[:key])}"
        when S3::Object then "#{source.bucket_name}/#{escape(source.key)}"
        else
          msg = "expected source to be an Aws::S3::Object, Hash, or String"
          raise ArgumentError, msg
        end
      end

      def copy_target(target)
        case target
        when String then target.match(/([^\/]+?)\/(.+)/)[1,2]
        when Hash then target.values_at(:bucket, :key)
        when S3::Object then [target.bucket_name, target.key]
        else
          msg = "expected target to be an Aws::S3::Object, Hash, or String"
          raise ArgumentError, msg
        end
      end

      def merge_options(source_or_target, options)
        if Hash === source_or_target
          source_or_target.inject(options.dup) do |opts, (key, value)|
            opts[key] = value unless [:bucket, :key].include?(key)
            opts
          end
        else
          options.dup
        end
      end

      def escape(str)
        Seahorse::Util.uri_path_escape(str)
      end

    end
  end
end
