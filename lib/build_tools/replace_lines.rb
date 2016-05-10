require 'json'

module BuildTools
  class << self

    def replace_lines(filename:, start:, stop:, new_lines:, padding: false)
      skip = false
      lines = []
      File.open(filename, 'rb') { |f| f.read }.lines.each do |line|
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
      File.open(filename, 'wb') { |file| file.write(lines.join) }
    end

  end
end
