require 'coveralls'
Coveralls.wear_merged!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do

  project_name 'AWS SDK for Ruby'

  add_filter '/spec/'
  add_filter '/features/'
  add_filter '/aws-sdk-core/lib/aws/api/docs'
  add_filter '/aws-sdk-resources/lib/aws/resource/documenter'
  add_filter '/aws-sdk-resources/lib/aws/resource/source.rb'

  %w(aws-sdk aws-sdk-resources aws-sdk-core).each do |group_name|
    add_group(group_name, "/#{group_name}/lib")
  end

  merge_timeout 60 * 15 # 15 minutes

end
