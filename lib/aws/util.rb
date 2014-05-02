require 'cgi'

module Aws
  # @api private
  module Util

    # @api private
    IRREGULAR_INFLECTIONS = {
      'ARNs' => 'arns',
      'CNAMEs' => 'cnames',
      'Ec2' => 'ec2',
      'ElastiCache' => 'elasticache',
      'ETag' => 'etag',
      'iSCSI' => 'iscsi',
    }

    # @api private
    IRREGULAR_REGEX = Regexp.new(IRREGULAR_INFLECTIONS.keys.join('|'))

    # @param [String] string
    # @return [String] Returns the underscored version of the given string.
    def underscore(string)
        string.
          gsub(IRREGULAR_REGEX) { |word| '_' + IRREGULAR_INFLECTIONS[word] }.
          gsub(/([A-Z0-9]+)([A-Z][a-z])/, '\1_\2').
          scan(/[a-z0-9]+|\d+|[A-Z0-9]+[a-z]*/).
          join('_').downcase
    end
    module_function :underscore

    def uri_escape(string)
      CGI::escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
    end
    module_function :uri_escape

    def ini_parse(string)
      current_section = {}
      map = {}
      string.split(/\r?\n/).each do |line|
        line = line.split(/^|\s;/).first # remove comments
        section = line.match(/^\s*\[([^\[\]]+)\]\s*$/) unless line.nil?
        if section
          current_section = section[1]
        elsif current_section
          item = line.match(/^\s*(.+?)\s*=\s*(.+)\s*$/) unless line.nil?
          if item
            map[current_section] = map[current_section] || {}
            map[current_section][item[1]] = item[2]
          end
        end
      end
      map
    end
    module_function :ini_parse

  end
end
