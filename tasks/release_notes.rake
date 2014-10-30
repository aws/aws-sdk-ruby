task 'release_notes:html' do

  require 'erb'
  require 'rdiscount'

  labels = {
    'Upgrading' => 'Upgrading Notes',
    'Feature' => 'New Features',
    'Issue' => 'Resolved Issues',
  }

  categories = {
    'Upgrading Notes' => [],
    'New Features' => [],
    'Resolved Issues' => [],
  }

  entries = []
  `rake changelog:latest`.lines.map.each do |line|
    if line.match(/^\*/)
      entries << line.sub(/\* /, '')
    else
      entries.last.concat(line)
    end
  end

  entries.each do |entry|
    label, changed, description = entry.split(' - ')
    changed = changed.gsub('`', '')
    description = RDiscount.new(description).to_html
    description = description.gsub(/<pre><code class="``ruby">(.*?)<\/code><\/pre>/m) do |code|
      "<pre>#{$1.strip}</pre>"
    end.gsub(/\n  /m, "\n")
    categories[labels[label]] << [changed, description]
  end

  services = {}
  Aws::SERVICE_MODULE_NAMES.each do |svc_name|
    client_class = Aws.const_get(svc_name).const_get(:Client)
    name = client_class.api.metadata('serviceFullName')
    services[name] = client_class.api.version
  end

  services = services.keys.sort_by(&:downcase).inject({}) do |h,k|
    h[k] = services[k]
    h
  end

  template = File.read('tasks/release-notes-template.html.erb')
  puts ERB.new(template, false, '<>').result(binding)

end
