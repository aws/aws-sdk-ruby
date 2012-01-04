# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'pathname'

module AWS
  class S3
    module DataOptions

      protected
      def data_stream_from options, &block

        validate_data!(options, block)

        # block format
        if block_given?
          buffer = StringIO.new
          yield(buffer)
          buffer.rewind
          return buffer
        end

        # string, pathname, file, io-like object, etc
        data = options[:data]
        file_opts = ["rb"]
        file_opts << { :encoding => "BINARY" } if Object.const_defined?(:Encoding)
        case
        when data.is_a?(String)
          data.force_encoding("BINARY") if data.respond_to?(:force_encoding)
          StringIO.new(data)
        when data.is_a?(Pathname) then File.open(data.to_s, *file_opts)
        when options[:file]       then File.open(options[:file], *file_opts)
        else data
        end

      end

      protected
      def content_length_from options
        data = options[:data]
        case
        when options[:content_length]    then options[:content_length]
        when options[:file]              then File.size(options[:file])
        when data.is_a?(Pathname)        then File.size(data.to_s)
        when data.is_a?(File)            then File.size(data.path)
        when data.respond_to?(:bytesize) then data.bytesize
        when data.respond_to?(:size)     then data.size
        when data.respond_to?(:length)   then data.length
        else raise ArgumentError, 'content_length was not provided ' +
            'and could not be determined'
        end
      end

      protected
      def validate_data! options, block

        data = options[:data]
        filename = options[:file]

        raise ArgumentError, 'data passed multiple ways' if
          [data, filename, block].compact.size > 1

        # accepting block format
        return if block and block.arity == 1

        # accepting file path
        return if filename.kind_of?(String)

        # accepting strings
        return if data.kind_of?(String)

        # accepting pathname
        return if data.kind_of?(Pathname)

        # accepts io-like objects (responds to read and eof?)
        if data.respond_to?(:read) and 
            data.method(:read).arity != 0 and
            data.respond_to?(:eof?) then
          return true
        end

        raise ArgumentError, 'data must be provided as a String, ' +
          'Pathname, file path, or an object that responds to #read and #eof?'

      end

    end
  end
end
