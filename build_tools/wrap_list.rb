# frozen_string_literal: true

require 'json'

module BuildTools
  class << self

    # @option options [required, Array] :items
    # @option options [required, String] :indent
    # @option options [Integer] :max_length (80)
    # @return [String]
    def wrap_list(options = {})
      items = options.fetch(:items)
      indent = options.fetch(:indent)
      max_length = options.fetch(:max_length, 80)
      lines = [indent]
      items.each.with_index do |item, n|
        if n == 0
          lines[-1] += "#{item},"
        elsif (lines[-1] + " #{item}#{comma(n, items)}").length < max_length
          lines[-1] += " #{item}#{comma(n, items)}"
        else
          lines[-1] += "\n"
          lines << indent
          lines[-1] += "#{item}#{comma(n, items)}"
        end
      end
      lines.join.rstrip
    end

    private

    def comma(n, items)
      n < items.length - 1 ? ',' : ''
    end

  end
end
