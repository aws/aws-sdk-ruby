# frozen_string_literal: true

task 'repl' do
  Dir['gems/*'].each do |gem_path|
    $LOAD_PATH.unshift(File.expand_path('lib', gem_path))
    require File.basename(gem_path)
  end

  require 'pry'
  Aws.pry
end
