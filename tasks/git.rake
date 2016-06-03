task 'git:require-clean-workspace' do
  # Ensure the git repo is free of unstaged or untracked files prior
  # to building / testing / pushing a release.
  unless `git status --porcelain` == ''
    warn('workspace must be clean to execute this task')
    exit(1)
  end
end

task 'git:tag' do
  issues = `git log $(git describe --tags --abbrev=0)...HEAD -E --grep '#[0-9]+' 2>/dev/null`
  issues = issues.scan(/((?:\S+\/\S+)?#\d+)/).flatten
  msg = "Tag release v#{$VERSION}"
  msg << "\n\n"
  unless issues.empty?
    msg << "References:\n"
    msg << "  #{issues.uniq.sort.join(', ')}"
    msg << "\n\n"
  end

  sh("git commit -m \"#{msg}\"")
  sh("git tag -a -m \"#{msg}\" v#{$VERSION}")
end

task 'git:push' do
  sh('git push origin')
  sh('git push origin --tags')
end
