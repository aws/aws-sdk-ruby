def javascripts_full_list
  super + ['js/nolink.js']
end

def class_list(root = Registry.root, tree = TreeContext.new)
  out = ''
  # non-service classes
  out << "<li class='#{tree.classes.join(' ')} nolink'>"
  out << "<div class='item' style='padding-left:#{tree.indent}'>"
  out << "<a class='toggle'></a> Non-Service Classes"
  out << "</div><ul>"
  children = run_verifier(root.children)
  tree.nest do
    out << class_list_children(children, tree:tree, skip_services:true)
  end
  out << '</ul></li>'

  # service classes
  out << "<li class='#{tree.classes.join(' ')} nolink'>"
  out << "<div class='item' style='padding-left:#{tree.indent}'>"
  out << "<a class='toggle'></a> Service Gems"
  out << "</div><ul>"
  children = Registry.at('Aws').children.select { |c| c.has_tag?(:service) }
  tree.nest do
    out << class_list_children(children.sort_by(&:name), tree:tree)
  end
  out << '</ul></li>'
  out
end

def class_list_children(children, options)
  tree = options[:tree]
  skip_services = options[:skip_services]
  out = ''
  children.compact.sort_by(&:path).each do |child|
    if child.is_a?(CodeObjects::NamespaceObject)
      next if child.has_tag?(:service) if skip_services
      name = child.namespace.is_a?(CodeObjects::Proxy) ? child.path : child.name
      grand_children = run_verifier(child.children)
      is_parent = grand_children.any? {|o| o.is_a?(CodeObjects::NamespaceObject) }
      out << "<li id='object_#{child.path}' class='#{tree.classes.join(' ')}'>"
      out << "<div class='item' style='padding-left:#{tree.indent}'>"
      out << "<a class='toggle'></a> " if is_parent
      out << linkify(child, name)
      out << " &lt; #{child.superclass.name}" if child.is_a?(CodeObjects::ClassObject) && child.superclass
      out << " (aws-sdk-#{name.downcase})" if child.has_tag?(:service)
      out << "<small class='search_info'>"
      out << child.namespace.title
      out << "</small>"
      out << "</div>"
      if is_parent
        tree.nest do
          out << "<ul>#{class_list_children(grand_children, options)}</ul>"
        end
      end
      out << "</li>"
    end
  end
  out
end

def sorted_service_classes(svc, &block)
  children = svc.children.each.with_object([]) do |child, list|
    next unless child.respond_to?(:children)
    next if child.tag(:api) and child.tag(:api).text == 'private'
    list << child
  end
  fixed = [:Client, :Resource, :Errors]
  children = children.sort do |a, b|
    a_pos = fixed.index(a.name) || 4
    b_pos = fixed.index(b.name) || 4
    if a_pos < 4 || b_pos < 4
      a_pos <=> b_pos
    else
      a.name <=> b.name
    end
  end
  children.each(&block)
end
