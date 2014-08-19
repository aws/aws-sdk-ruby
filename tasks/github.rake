task 'github:release' do
  require 'octokit'

  version = '2.0.0.rc15'
  access_token = `rake secrets:github_access_token`.strip
  repo = 'aws/aws-sdk-core-ruby'

  gh = Octokit::Client.new(access_token: access_token)
  release = gh.releases(repo).find { |r| r.tag_name.match(version) }

  tag_ref_sha = `git show-ref v#{version}`.split(' ').first
  tag = gh.tag(repo, tag_ref_sha)

  gh.update_release(release.url, {
    name: 'Release v' + version + ' - ' + tag.tagger.date.strftime('%Y-%m-%d'),
    body: tag.message.lines[2..-1].join,
    prerelease: version.match('rc') ? true : false,
  })

  gh.upload_asset(release.url, 'api-docs.tgz')

  Dir.glob('*.gem').each do |path|
    gh.upload_asset(release.url, path, name: File.basename(path))
  end

end
