require 'rubygems'
require 'rake'
require 'rake/testtask'
require File.expand_path('../lib/base62/version', __FILE__)

Rake::TestTask.new(:test) do |test|
  test.libs      << 'lib' << 'test'
  test.pattern   = 'test/{functional,unit}/**/test_*.rb'
end

namespace :test do
  Rake::TestTask.new(:lint) do |test|
    test.libs      << 'lib' << 'test'
    #test.pattern   = 'test/test_active_model_lint.rb'
  end

  task :all => ['test', 'test:lint']
end

task :default => 'test:all'

desc 'Builds the gem'
task :build do
  sh "gem build base62.gemspec"
end

desc 'Builds and installs the gem'
task :install => :build do
  sh "gem install base62-#{Base62::VERSION}"
end

desc 'Tags version, pushes to remote, and pushes gem'
task :release => :build do
  sh "git tag v#{Base62::VERSION}"
  sh "git push origin master"
  sh "git push origin v#{Base62::VERSION}"
  sh "gem push base62-#{Base62::VERSION}.gem"
end
