# frozen_string_literal: true

require 'aws-sdk-core'
require 'smithy'

require_relative 'services'
require_relative 'welds'

# @api private
module BuildTools
  class << self
    # @option [String] :filename
    # @option [String] :start
    # @option [String] :stop
    # @option [Array<String>] :new_lines
    # @option [required, Boolean] :padding (false)
    # @return [Boolean] Returns `true` if the target file was changed, `nil` otherwise.
    def replace_lines(options = {}) # rubocop:disable Metrics
      filename = options.fetch(:filename)
      start = options.fetch(:start)
      stop = options.fetch(:stop)
      new_lines = options.fetch(:new_lines)
      padding = options.fetch(:padding, false)

      orig_file = File.binread(filename)

      skip = false
      lines = []
      orig_file.lines.each do |line|
        if line.match(start)
          lines << line
          lines << "\n" if padding
          lines += new_lines
          skip = true
        elsif line.match(stop)
          lines << "\n" if padding
          lines << line
          skip = false
        elsif !skip
          lines << line
        end
      end

      new_file = lines.join
      return nil if new_file == orig_file

      File.binwrite(filename, new_file)
      true
    end
  end
end
