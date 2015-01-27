module Aws
  module S3
    class ObjectSummary

      alias content_length size

      # @param (see Object#upload_file)
      # @options (see Object#upload_file)
      # @return (see Object#upload_file)
      # @see Object#upload_file
      def upload_file(source, options = {})
        object.upload_file(source, options)
      end

    end
  end
end
