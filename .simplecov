require 'coveralls'
Coveralls.wear_merged!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter 'spec'
  add_filter 'features'
  merge_timeout 60 * 15 # 15 minutes
end
