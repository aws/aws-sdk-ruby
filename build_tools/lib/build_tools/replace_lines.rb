require 'json'

module BuildTools
  class << self

    # @return [Boolean] Returns `true` if the target file was changed.
    #   Returns `false` otherwise.
    def replace_lines(filename:, start:, stop:, new_lines:, padding: false)

      orig_file = File.open(filename, 'rb') { |file| file.read }

      skip = false
      lines = []
      orig_file.lines.each do |line|
        if line.match(start)
          lines << line
          lines << "\n" if padding
          if Array === new_lines
            lines += new_lines
          else
            lines << new_lines
          end
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
      if new_file != orig_file
        File.open(filename, 'wb') { |file| file.write(new_file) }
        true
      else
        false
      end

    end
  end
end
