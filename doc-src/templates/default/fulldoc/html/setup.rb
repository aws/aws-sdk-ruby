def class_list(root = Registry.root)

  out = ""
  children = run_verifier(root.children)
  if root == Registry.root
    children += @items.select {|o| o.namespace.is_a?(CodeObjects::Proxy) }
  end

  if root == Registry.root
    out << '<li class="expander"><a class="toggle"></a> Non-Service Classes</li><ul>'
  end

  children.reject {|c| c.nil? }.sort_by {|child| child.path }.map do |child|
    if child.is_a?(CodeObjects::NamespaceObject)
      name = child.namespace.is_a?(CodeObjects::Proxy) ? child.path : child.name
      next if child.tag(:service)
      has_children = run_verifier(child.children).any? {|o| o.is_a?(CodeObjects::NamespaceObject) }
      out << "<li>"
      out << "<a class='toggle'></a> " if has_children
      out << linkify(child, name)
      out << " &lt; #{child.superclass.name}" if child.is_a?(CodeObjects::ClassObject) && child.superclass
      out << "<small class='search_info'>"
      out << child.namespace.title
      out << "</small>"
      out << "</li>"
      out << "<ul>#{class_list(child)}</ul>" if has_children
    end
  end

  out << '</ul>' if root == Registry.root

  if root == Registry.root
    out << '<li class="expander"><a class="toggle"></a> Services</li><ul>'
    svcs = Registry.at('Aws').children.select {|c| c.has_tag?(:service) }

    services = Registry.at('Aws').children.select { |c| c.has_tag?(:service) }

    services.sort_by(&:name).each do |svc|
      out << "<li><a class='toggle'></a>"
      out << linkify(svc, svc.name)
      out << " &lt; Service"
      out << "<small class='search_info'>"
      out << svc.namespace.title
      out << "</small>"
      out << "</li>"
      out << "<ul>"
      sorted_service_classes(svc) do |child|
        name = child.namespace.is_a?(CodeObjects::Proxy) ? child.path : child.name
        has_children = run_verifier(child.children).any? {|o| o.is_a?(CodeObjects::NamespaceObject) }
        out << "<li>"
        out << "<a class='toggle'></a> " if has_children
        out << linkify(child, name)
        out << " &lt; #{child.superclass.name}" if child.is_a?(CodeObjects::ClassObject) && child.superclass
        out << "<small class='search_info'>"
        out << child.namespace.title
        out << "</small>"
        out << "</li>"
        out << "<ul>#{class_list(child)}</ul>" if has_children
      end
      out << "</ul>"
    end
    out << '</ul>'
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
