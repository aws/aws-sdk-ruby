module Aws
  class IniParser

    def self.ini_parse(raw)
      current_profile = nil
      current_prefix = nil
      raw.lines.inject({}) do |acc, line|
        line = line.split(/^|\s;/).first # remove comments
        profile = line.match(/^\[([^\[\]]+)\]\s*(#.+)?$/) unless line.nil?
        if profile
          current_profile = profile[1]
          named_profile = current_profile.match(/^profile\s+(.+?)$/)
          current_profile = named_profile[1] if named_profile
        elsif current_profile
          unless line.nil?
            item = line.match(/^(.+?)\s*=\s*(.+?)\s*$/)
            prefix = line.match(/^(.+?)\s*=\s*$/)
          end
          if item && item[1].match(/^\s+/)
            # Need to add lines to a nested configuration.
            inner_item = line.match(/^\s*(.+?)\s*=\s*(.+?)\s*$/)
            acc[current_profile] ||= {}
            acc[current_profile][current_prefix] ||= {}
            acc[current_profile][current_prefix][inner_item[1]] = inner_item[2]
          elsif item
            current_prefix = nil
            acc[current_profile] ||= {}
            acc[current_profile][item[1]] = item[2]
          elsif prefix
            current_prefix = prefix[1]
          end
        end
        acc
      end
    end

    def self.ini_parse_ignore_ws(raw)
      current_profile = nil
      raw.lines.inject({}) do |acc, line|
        line = line.split(/^|\s;/).first # remove comments
        profile = line.match(/^\s*\[([^\[\]]+)\]\s*(#.+)?$/) unless line.nil?
        if profile
          current_profile = profile[1]
          named_profile = current_profile.match(/^profile\s+(.+?)$/)
          current_profile = named_profile[1] if named_profile
        elsif current_profile
          item = line.match(/^\s*(.+?)\s*=\s*(.+?)\s*$/) unless line.nil?
          if item
            acc[current_profile] ||= {}
            acc[current_profile][item[1]] = item[2]
          end
        end
        acc
      end
    end

    def self.old_ini_parse(file)
      current_section = {}
      map = {}
      file.lines.each do |line|
        line = line.split(/^|\s;/).first # remove comments
        section = line.match(/^\s*\[([^\[\]]+)\]\s*(#.+)?$/) unless line.nil?
        if section
          current_section = section[1]
        elsif current_section
          item = line.match(/^\s*(.+?)\s*=\s*(.+?)\s*$/) unless line.nil?
          if item
            map[current_section] = map[current_section] || {}
            map[current_section][item[1]] = item[2]
          end
        end
      end
      map
    end

  end
end
