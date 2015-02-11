desc 'Builds the developer guide to developer_guide/output'
task 'guide' do
  Dir.chdir('developer_guide') do
    sh('bundle exec nanoc')
  end
end

desc 'Rebuilds the guide when content changes'
task 'guide:guard' do
  Dir.chdir('developer_guide') do
    sh('bundle exec guard')
  end
end

desc 'Serves the developer guide at http://localhost:3000/'
task 'guide:serve' do
  Dir.chdir('developer_guide') do
    sh('bundle exec nanoc view')
  end
end
