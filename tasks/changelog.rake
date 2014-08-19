task 'changelog:version' do
  # updates the CHANGELOG next release with the actual release version
  changelog = File.open('CHANGELOG.md', 'r', encoding: 'UTF-8') { |f| f.read }
  changelog = changelog.lines
  changelog[0] = "#{version} (#{Time.now.strftime('%Y-%m-%d')})\n"
  changelog = changelog.join
  File.open('CHANGELOG.md', 'w', encoding: 'UTF-8') { |f| f.write(changelog) }
  sh("git add CHANGELOG.md")
end

task 'changelog:new_release' do
  # updates the CHANGELOG next release with the actual release version
  lines = []
  lines << "Next Release (TBD)\n"
  lines << "------------------\n"
  lines << "\n"
  changelog = File.open('CHANGELOG.md', 'r', encoding: 'UTF-8') { |f| f.read }
  changelog = lines.join + changelog
  File.open('CHANGELOG.md', 'w', encoding: 'UTF-8') { |f| f.write(changelog) }
  sh("git add CHANGELOG.md")
  sh("git commit -m 'Added next release section to the changelog.'")
end

task 'changelog:latest' do
  changelog = File.open('CHANGELOG.md', 'r', encoding: 'UTF-8') { |f| f.read }
  lines = []
  changelog.lines[8..-1].each do |line|
    if line.match(/^v\d/)
      break
    else
      lines << line
    end
  end
  puts lines[0..-2].join
end
