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

  require 'aws/core'
  services = {}
  AWS.api_versions.each_pair do |svc,api_versions|
    api_versions.each do |api_version|
      services[svc] ||= []
      services[svc] << api_version
    end
  end

  services = services.keys.sort_by(&:downcase).inject({}) do |h,k|
    h[k] = services[k]
    h
  end

  template = File.read('tasks/release-notes-template.html.erb')
  puts ERB.new(template, false, '<>').result(binding)

end
