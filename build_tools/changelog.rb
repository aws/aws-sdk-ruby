module BuildTools
  class Changelog

    def initialize(options)
      @path = options.fetch(:path)
    end

    def bump_version
      lines = read.lines.to_a
      lines[0] = "#{$VERSION} (#{Time.now.strftime('%Y-%m-%d')})\n"
      write(lines.join)
    end

    def add_unreleased_changes_section
      lines = []
      lines << "Unreleased Changes\n"
      lines << "------------------\n"
      lines << "\n"
      write(lines.join + read)
    end

    def lastest_changes
      lines = []
      read.lines.to_a[3..-1].each do |line|
        if line.match(/^\d+\.\d+\.\d+/)
          break
        else
          lines << line
        end
      end
      lines[0..-2].join
    end

    private

    def read
      File.open(@path, 'r', encoding: 'UTF-8') { |f| f.read }
    end

    def write(changelog)
      File.open(@path, 'w', encoding: 'UTF-8') { |f| f.write(changelog) }
    end

  end
end
