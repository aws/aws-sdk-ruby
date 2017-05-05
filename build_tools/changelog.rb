module BuildTools
  # A utility class for managing a CHANGELOG file.
  class Changelog

    # @option options [String] :path Path to the CHANGELOG.
    def initialize(options)
      @path = options.fetch(:path)
    end

    # @return [String]
    attr_reader :path

    # Inserts an "Unreleased Changes" section at the top of the CHANGELOG.
    def add_unreleased_changes_section
      lines = []
      lines << "Unreleased Changes\n"
      lines << "------------------\n"
      lines << "\n"
      write(lines.join + read)
    end

    # @option options [required, String] :version The version number to apply
    #   to the unreleased changes section at the top of the CHANGELOG.
    #   Should be formatted like "1.0.0".
    #
    # @option options [optional, String<YYYY-MM-DD>] :date Defaults to the
    #   current date.
    #
    def version_unreleased_changes(options)
      version = options.fetch(:version)
      date = options.fetch(:date, Time.now.strftime('%Y-%m-%d'))
      lines = read.lines.to_a
      lines[0] = "#{version} (#{date})\n"
      write(lines.join)
      add_unreleased_changes_section
    end

    # @option options [required, Symbol] :type
    #   Must be one of the following:
    #
    #   * :feature
    #   * :issue
    #
    # @option options [required, String<markdown>] :text
    #   A description of the change. This should be formatted as markdown.
    #
    # @option options [optional, Integer] :issue A related GitHub issue number.
    #
    # @option options [optional, Integer] :pull A related GitHub pull request number.
    #
    def add_entry(options)
      add_unreleased_changes_section unless read.lines.to_a[0].strip == 'Unreleased Changes'
      lines = read.lines.to_a
      lines = lines[0..2] + Entry.new(options).lines + lines[3..-1]
      write(lines.join)
    end

    # @return [ChangeSet, nil]
    def unreleased_changes
      most_recent_changes = change_sets.first
      if most_recent_changes.name == 'Unreleased Changes'
        most_recent_changes
      else
        add_unreleased_changes_section
        unreleased_changes
      end
    end

    # @return [Enumerable<ChangeSet>]
    def change_sets
      Parser.new.parse(read)
    end

    private

    def read
      if File.exists?(path)
        File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
      else
        ''
      end
    end

    def write(changelog)
      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(changelog) }
    end

    class ChangeSet

      # @option options [required, String] :name
      # @option options [required, Array<Entry>] :entries
      def initialize(options)
        @name = options.fetch(:name)
        if @name.match(/^(\d+\.\d+\.\d+) \(\d{4}-\d{2}-\d{2}\)$/)
          @version = $1
          @date = $2
        else
          @version = nil
          @date = nil
        end
        @entries = options.fetch(:entries)
      end

      # @return [String]
      attr_reader :name

      # @return [String, nil]
      attr_reader :version

      # @return [String, nil]
      attr_reader :date

      # @return [Array<Entry>]
      attr_reader :entries

      def to_str
        "#{@name}\n#{'-' * @name.length}\n\n#{entries.map(&:to_s).join}"
      end
      alias to_s to_str

    end

    class Entry

      def initialize(options)
        @type = options[:type]
        case @type
        when :feature, :issue
        else
          raise ArgumentError, "expected :feature or :issue"
        end
        @text = options.fetch(:text).strip
        @issue = options.fetch(:issue, nil)
        @pull = options.fetch(:pull, nil)
      end

      # @return [Symbol]
      attr_reader :type

      # @return [String]
      attr_reader :text

      # @return [Integer, nil]
      attr_reader :issue

      # @return [Integer, nil]
      attr_reader :pull

      # @return [Boolean]
      def point?
        case @type
        when :feature then true
        when :issue then false
        else
          raise "unhandled entry type `#{@type.inspect}'"
        end
      end

      def patch?
        !point?
      end

      def lines
        lines = @text.lines.each.with_index.map do |line, n|
          if n == 0
            "* #{uc_first(@type)} - #{line}"
          else
            "  #{line}"
          end
        end
        lines << "\n"
        lines << issue_reference if issue
        lines << pull_reference if pull
        lines << "\n"
      end

      def to_str
        lines.join
      end
      alias to_s to_str

      private

      def uc_first(str)
        str[0].upcase + str[1..-1]
      end

      def issue_reference
        "\n  See related [GitHub issue ##{issue}](https://github.com/aws/aws-sdk-ruby/issues/#{issue}).\n"
      end

      def pull_reference
        "\n  See related [GitHub pull request ##{pull}](https://github.com/aws/aws-sdk-ruby/issues/#{pull}).\n"
      end

    end

    class Parser

      def parse(changelog)
        Enumerator.new do |y|
          changes = nil
          changelog.lines.each do |line|
            if line.match(/^\d+\.\d+\.\d+/) || line.match(/^Unreleased Changes$/)
              y.yield(close_change_set(changes)) if changes
              changes = {
                name: line.strip,
                entries: [],
                current_entry: nil
              }
            elsif line.match(/^-+$/)
              # diving line of dashes, e.g. "------------------"
              next
            elsif line.match(/^\* (Feature|Issue) - (.*\n)$/)
              # start of the next entry
              close_entry(changes)
              changes[:current_entry] = {
                type: $1 == 'Feature' ? :feature : :issue,
                text: [$2]
              }
            elsif line.match(/^  See related \[GitHub (issue|pull request) #(\d+)/)
              # Reference to github issue or pull request
              reference = $1 == 'issue' ? :issue : :pull
              changes[:current_entry][reference] = $2.to_i
            else
              changes[:current_entry][:text] << line.lstrip if changes[:current_entry]
            end
          end
          y.yield(close_change_set(changes))
        end
      end

      def close_change_set(changes)
        close_entry(changes)
        ChangeSet.new(changes)
      end

      def close_entry(changes)
        if changes[:current_entry]
          entry = changes.delete(:current_entry)
          entry[:text] = entry[:text].join
          changes[:entries] << Entry.new(entry)
        end
      end
    end
  end
end
