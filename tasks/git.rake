task 'git:require-clean-workspace' do
  # Ensure the git repo is free of unstaged or untracked files prior
  # to building / testing / pushing a release.
  unless `git diff --shortstat 2> /dev/null | tail -n1` == ''
    warn('workspace must be clean to release')
    exit(1)
  end
end

task 'git:tag' do
  sh("git commit -m \"Bumped version to v#{$VERSION}\"")
  sh("git tag -a -m \"$(rake git:tag_message)\" v#{$VERSION}")
end

task 'git:tag_message' do
  issues = `git log $(git describe --tags --abbrev=0)...HEAD -E --grep '#[0-9]+' 2>/dev/null`
  issues = issues.scan(/((?:\S+\/\S+)?#\d+)/).flatten
  msg = "Tag release v#{$VERSION}"
  msg << "\n\n"
  unless issues.empty?
    msg << "References: #{issues.uniq.sort.join(', ')}"
    msg << "\n\n"
  end
  msg << `rake changelog:latest`
  puts msg
end

task 'git:push' do
  sh('git push origin')
  sh('git push origin --tags')
end
