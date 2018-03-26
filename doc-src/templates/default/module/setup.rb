# frozen_string_literal: true

def groups(list, type = "Method")
  if groups_data = object.groups
    list.each {|m| groups_data |= [m.group] if m.group && owner != m.namespace }
    others = list.select {|m| !m.group || !groups_data.include?(m.group) }
    groups_data = groups_data.sort_by { |n| n == 'Constructor' ? '' : n }
    groups_data.each do |name|
      items = list.select {|m| m.group == name }
      yield(items, name) unless items.empty?
    end
  else
    raise 'not implemented'
    # see implementation from base template
  end

  scopes(others) {|items, scope| yield(items, "#{scope.to_s.capitalize} #{type} Summary") }
end
