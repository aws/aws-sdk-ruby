namespace :release_notes do
  task :html do

    require 'erb'
    require 'rdiscount'

    entries = ['']
    changelog = File.open('CHANGELOG.md', 'r', encoding: 'UTF-8') { |f| f.read }
    changelog.lines.each.with_index do |line,n|
      next if n < 3
      break if line.match(/^\d\.\d+\.\d+/)
      if line.match(/^\*/)
        entries << ''
      end
      entries.last.concat(line)
    end

    entries.delete('')
    entries = entries.map { |e| e[2..-1].strip }

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

    entries.each do |entry|
      label, changed, description = entry.split(' - ')
      changed = changed.gsub('`', '')
      description = RDiscount.new(description).to_html
      categories[labels[label]] << [changed, description]
    end

    version = changelog.lines.first.split(/\s+/).first

    services = {}
    Aws.services.each do |_, svc_module, _|
      client_class = svc_module.const_get(:Client)
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
end
