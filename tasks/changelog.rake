# frozen_string_literal: true

task 'changelog:add' do
  Dir.glob('gems/*').each do |gem_dir|
    path = "#{gem_dir}/CHANGELOG.md"
    File.open(path, 'w') do |file|
      file.write(<<-TEXT)
Unreleased Changes
------------------

      TEXT
    end
    changelog = BuildTools::Changelog.new(path: path)
    changelog.add_entry(
      type: :feature,
      text: "Initial preview release of the `#{File.basename(gem_dir)}` gem."
    )
    changelog.version_unreleased_changes(
      version: File.read("#{gem_dir}/VERSION").strip,
    )
    changelog.add_unreleased_changes_section
  end
end

task 'changelog:sigv4' do
  path = 'gems/aws-sigv4/CHANGELOG.md'
  changelog = BuildTools::Changelog.new(path: path)
  changelog.add_unreleased_changes_section
  #changelog.version_unreleased_changes(
  #  version: '1.0.0',
  #  date: '2016-11-08',
  #)
end

task 'changelog:version' do
  Dir.glob('gems/*').each do |gem_dir|
    next if File.basename(gem_dir) == 'aws-sigv4'
    puts File.basename(gem_dir).inspect
  end
end

task 'changelog:unreleased' do
  path = 'gems/aws-sigv4/CHANGELOG.md'
  changelog = BuildTools::Changelog.new(path: path)
  puts changelog.unreleased_changes
end
