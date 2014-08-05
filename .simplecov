if ENV['COVERAGE']

  # purposefully not running wear_merged! ; we are not running integration
  # tests on travis, so its not needed
  require 'coveralls'
  Coveralls.wear!

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]

  SimpleCov.start do
    add_filter 'spec'
    add_filter 'features'
    merge_timeout 60 * 15 # 15 minutes
  end

end
