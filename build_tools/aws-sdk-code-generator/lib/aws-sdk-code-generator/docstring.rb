# kramdown
require 'kramdown'
# end kramdown

module AwsSdkCodeGenerator
  module Docstring
    class << self

      # Prefixes each line of `text` with a pound sign. Given the string
      #
      #     Hello
      #     World
      #
      # The following string would be returned:
      #
      #     # Hello
      #     # World
      #
      # @param [String, nil] text
      # @option options [String] :gap (' ')
      # @return [String, nil]
      def block_comment(text, options = {})
        if text
          gap = options.fetch(:gap, ' ')
          text.lines.map do |line|
            line = line.rstrip
            if line == ''
              "#"
            else
              "##{gap}#{line}"
            end
          end.join("\n")
        end
      end

      # Joins multiple doc strings into a single doc block. Each entry
      # in the given `docstrings` array can be a string, nil, or an another array.
      # Arrays are flattened, and nils are compacted out.
      #
      # Given the following `docstrings`:
      #
      #     [
      #       "First doc block",
      #       nil,
      #       "Second doc block\nthat contains\nmultiple lines\n",
      #       [
      #         "Third doc block\n",
      #         "Last doc block\n",
      #       ],
      #     ]
      #
      # The following joined doc block would be returned:
      #
      #     # First doc block
      #     #
      #     # Second doc block
      #     # that contains
      #     # multiple lines
      #     #
      #     # Third doc block
      #     #
      #     # Last doc block
      #
      # @param [Array<String>] docstrings
      #
      # @option options [Boolean] :block_comment (true)
      #   By default, each docstring is commented by passing
      #   it to {Docstring.block_comment}. Setting `:block_comment` to
      #   false disables this behavior.
      #
      # @option options [String] :gap (' ')
      #   This option is given to {Docstring.block_comment} when
      #   `:block_comment` is `true`.
      #
      # @option options [String] :separator (true)
      #   When `true`, a blank line is inserted between
      #   each documentation section.
      #
      # @return [String, nil] If the given `docstrings` is empty,
      #   then a `nil` is returned.
      #
      def join_docstrings(docstrings, options = {})
        docs = docstrings.flatten.inject([]) do |sections, section|
          if section.nil? || section.size == 0
            sections
          else
            sections << (options.fetch(:block_comment, true) ?
              block_comment(section, options) :
              section)
            sections << (options.fetch(:separator, true) ? "\n#\n" : "\n")
            sections
          end
        end
        if docs.empty?
          nil
        else
          docs[-1] = docs[-1].rstrip
          docs.join
        end
      end

      # @param [String]
      # @return [String]
      def escape_html(string)
        string.to_s.encode(:xml => :text)
      end

      # kramdown html
      # @param [String<HTML>, nil] html
      # @option options [Integer] :line_width (70)
      # @return [String<Markdown>, nil]
      def html_to_markdown(html, options = {})
        line_width = options.fetch(:line_width, 70)
        # TODO : this section of code is **very slow** and runs many times
        #   while building a service.
        if html
          html = "<p>#{html}</p>" unless html.match(/<\w+>/)

          # unescaped curly braces cause YARD errors, they are interpreted
          # as code links.
          html = html.gsub('{', "\\{").gsub('}', "\\}")

          # Kramdown generates invalid markup when there are attributes
          # on the code tag, have to reduce these down to get the proper markdown.
          html = html.gsub(/<code.*?>(.+?)<\/code>/) { "<code>#{$1}</code>" }

          # Kramdown creates invalid markup with target="_blank" attributes.
          html = html.gsub(' target="_blank"', '')

          # There are quite a few empty <a> tags. These appear to be code names,
          # such as structure member names, or structure type names. We should
          # investigate if it is possible to inflect these properly and then
          # turn them into YARD links.
          html = html.gsub(/<a>(.+?)<\/a>/) { $1 }

          # For span tags, it can contain customized attributes, e.g. data-target
          # keeping text context only for now
          html = html.gsub(/<span.*?>(.+?)<\/span>/) { $1 }

          # <important> tag doesn't render well
          html = html.gsub(/<important>(.+?)<\/important>/){ "<p>#{$1}</p>" }

          markdown = Kramdown::Document.new(
            html,
            input: 'html',
            line_width: line_width,
            auto_ids: false
          ).to_kramdown.strip

          # remove extra escape
          markdown.gsub(/\\(\*|`|'|")/, '\1')
        end
      end
      # end kramdown html

      # @param [Array<Array<String>>]
      def markdown_table(table)
        # compute the width of each column by scanning for longest values
        column_width = lambda do |col|
          table.map { |row| row[col].size }.max
        end
        widths = [
          column_width.call(0),
          column_width.call(1),
          column_width.call(2),
          column_width.call(3),
        ]

        # insert a dashed line after the header row
        table = [
          table[0],
          ['-' * widths[0], '-' * widths[1], '-' * widths[2], '-' * widths[3]]
        ] + table[1..-1]

        # build the final table
        line = "| #{widths.map{|n| "%-#{n}s" }.join(' | ')} |"
        table.map { |row| line % row }.join("\n")
      end

      def ucfirst(string)
        if string
          string[0].upcase + string[1..-1]
        end
      end

      def indent(string, space = '  ')
        string.lines.map do |line|
          "#{space}#{line}"
        end.join.lstrip
      end

    end
  end
end
