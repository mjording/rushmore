require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rushmore"
  gem.summary = %Q{monumental provisioning and deploy tool}
  gem.description = %Q{monumental provisioning and deploy tool. Extends rush, the ruby shell, for system configuration, and application deployment}
  gem.email = "mjording@opengotham.com"
  gem.homepage = "http://rushmore.failless.com"
  gem.license = "GPL-3"
  gem.add_dependency 'thor'
  gem.authors = ["mjording"]
  gem.files = Dir.glob('lib/**/*.rb')
  gem.executables = %w(rushmore)
  gem.default_executable = "rushmore"
  gem.require_paths = ["lib"]
  # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new

