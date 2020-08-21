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
  children = Registry.at('Aws').children.select { |c| c.group == 'service' }
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
      next if child.group == 'service' if skip_services
      name = child.namespace.is_a?(CodeObjects::Proxy) ? child.path : child.name
      grand_children = run_verifier(child.children)
      is_parent = grand_children.any? {|o| o.is_a?(CodeObjects::NamespaceObject) }
      out << "<li id='object_#{child.path}' class='#{tree.classes.join(' ')}'>"
      out << "<div class='item' style='padding-left:#{tree.indent}'>"
      out << "<a class='toggle'></a> " if is_parent
      out << linkify(child, name)
      out << " &lt; #{child.superclass.name}" if child.is_a?(CodeObjects::ClassObject) && child.superclass
      if child.group == 'service'
        if name.downcase == :sts
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
          out << "<ul>#{class_list_children(grand_children, options)}</ul>"
        end
      end
      out << "</li>"
    end
  end
  out
end
