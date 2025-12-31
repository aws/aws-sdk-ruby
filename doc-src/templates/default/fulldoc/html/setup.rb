def class_list(root = Registry.root, tree = TreeContext.new)
  out = String.new('')
  children = run_verifier(root.children)
  if root == Registry.root
    children += @items.select {|o| o.namespace.is_a?(CodeObjects::Proxy) }
  end
  service_children = Registry.at('Aws').children.select { |c| c.group == 'service' }

  # non-service classes
  out << "<li class='#{tree.classes.join(' ')} nolink'>"
  out << "<div class='item' style='padding-left:#{tree.indent}'>"
  out << "Non-Service classes"
  out << "</div><ul>"
  tree.nest do
    out << class_list_children(children, tree, skip_services: true)
  end
  out << '</ul></li>'

  # service classes
  out << "<li class='#{tree.classes.join(' ')} nolink'>"
  out << "<div class='item' style='padding-left:#{tree.indent}'>"
  out << "Service Classes"
  out << "</div><ul>"
  tree.nest do
    out << class_list_children(service_children, tree)
  end
  out << '</ul></li>'
  out
end

def class_list_children(children, tree, options = {})
  skip_services = options[:skip_services]
  out = String.new("")
  children.compact.sort_by(&:path).each do |child|
    next unless child.is_a?(CodeObjects::NamespaceObject)
    next if skip_services && child.group == 'service'

    name = child.namespace.is_a?(CodeObjects::Proxy) ? child.path : child.name
    grand_children = run_verifier(child.children)
    is_parent = grand_children.any? {|o| o.is_a?(CodeObjects::NamespaceObject) }
    out << "<li id='object_#{child.path}' class='#{tree.classes.join(' ')}'>"
    out << "<div class='item' style='padding-left:#{tree.indent}'>"
    accessible_props = "aria-label='#{name} child nodes' aria-expanded='false' aria-controls='object_#{child.path}'"
    out << "<a tabindex='0' class='toggle' role='button' #{accessible_props}></a> " if is_parent
    out << linkify(child, name)
    out << " &lt; #{child.superclass.name}" if child.is_a?(CodeObjects::ClassObject) && child.superclass
    if child.group == 'service'
      if name.downcase == :sts || name.downcase == :sso || name.downcase == :ssooidc || name.downcase == :signin
        out << " (aws-sdk-core)"
      else
        out << " (aws-sdk-#{name.downcase})"
      end
    end
    out << "<small class='search_info'>"
    out << child.namespace.title
    out << "</small>"
    out << "</div>"
    if is_parent
      tree.nest do
        labeled_by = "aria-labelledby='object_#{child.path}'"
        out << "<div #{labeled_by}><ul>#{class_list_children(grand_children, tree, options)}</ul></div>"
      end
    end
    out << "</li>"
  end
  out
end
