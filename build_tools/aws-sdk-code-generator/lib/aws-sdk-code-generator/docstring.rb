require 'kramdown'

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
            if line == "\n"
              "#\n"
            else
              "##{gap}#{line}"
            end
          end.join
        end
      end

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

    end
  end
end
