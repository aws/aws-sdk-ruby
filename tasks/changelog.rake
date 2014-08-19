task 'changelog:version' do
  # updates the CHANGELOG next release with the actual release version
  changelog = File.open('CHANGELOG.md', 'r', encoding: 'UTF-8') { |f| f.read }
  changelog = changelog.lines
  changelog = changelog[0..4] + [nil, nil, nil] + changelog[5..-1]
  changelog[5] = "v#{version} (#{Time.now.strftime('%Y-%m-%d')})\n"
  changelog[6] = '-' * (changelog[5].chars.count) + "\n"
  changelog[7] = "\n"
  changelog = changelog.join
  File.open('CHANGELOG.md', 'w', encoding: 'UTF-8') { |f| f.write(changelog) }
  sh("git add CHANGELOG.md")
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
