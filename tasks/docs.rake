desc 'Delete the locally generated docs' if ENV['ALL']
task 'docs:clobber' do
  rm_rf '.yardoc'
  rm_rf 'api-docs'
  rm_rf 'api-docs.zip'
end

desc 'Generates api-docs.zip'
task 'docs:zip' => 'docs' do
  sh('zip -9 -r -q api-docs.zip api-docs/')
end

desc 'Generate the API documentation.'
task 'docs' => ['docs:clobber', 'docs:update_readme'] do
  env = {}
  env['SITEMAP_BASEURL'] = 'http://docs.aws.amazon.com/AWSRubySDK/latest/'
  sh(env, 'bundle exec yard')
end

namespace :docs do
  task :update_readme => :update_region do

    require 'aws/core'

    supported = {}

    AWS::SERVICES.values.each do |svc|
      apis = Dir.glob("./lib/aws/api_config/#{svc.class_name}*.yml")
      apis = apis.map{|api| api.match(/\d{4}-\d{2}-\d{2}/)[0] }
      supported[svc.class_name] = apis
    end
    supported['S3'] = ['2006-03-01']

    rows = []
    supported.sort_by{|svc,api| svc.downcase }.each do |(class_name,apis)|
      rowspan = apis.length > 1 ? " rowspan=\"#{apis.length}\"" : ''
      rows << "    <tr>"
      rows << "      <td#{rowspan}>AWS::#{class_name}</td>"
      rows << "      <td>#{apis.first}</td>"
      rows << "      <td#{rowspan}>#{AWS::SERVICES[class_name].full_name}</td>"
      rows << "    </tr>"
      apis[1..-1].each do |api|
        rows << "    <tr>"
        rows << "      <td>#{api}</td>"
        rows << "    </tr>"
      end
    end
    rows = rows.join("\n")

    table = <<-HTML
  <table class="supported-services" border="1">
    <thead>
      <th>Class</th>
      <th>API Version</th>
      <th>AWS Service Name</th>
    </thead>
    <tbody>
  #{rows}
    </tbody>
  </table>
  HTML

    update_file(
      'README.md',
      table,
      /class="supported-services"/,
      /<\/table>/
    )
  end

  task :update_region do

    require 'aws/core'

    svcs = []
    AWS::SERVICES.values.sort_by(&:method_name).each do |svc|
      svcs << "    # @attr_reader [#{svc.class_name}] #{svc.method_name}"
    end

    start = '    # Regions provide helper methods for each service.'
    stop = '    class Region'

    update_file(
      'lib/aws/core/region.rb',
      "#{start}\n    #\n#{svcs.join("\n")}\n    #\n#{stop}\n",
      /^#{start}/,
      /^#{stop}/
    )

  end

end

def update_file filename, content, start_pattern, stop_pattern

  lines = []
  skip = false

  File.read(filename).lines.each do |line|

    if line.match(start_pattern)
      lines << content
      skip = true
    end

    lines << line unless skip

    if line.match(stop_pattern)
      skip = false
    end
  end

  File.open(filename, 'w') {|f| f.write(lines.join) }

end
