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
  gem.summary = %Q{TODO: one-line summary of your gem}
  gem.description = %Q{extends rush, the ruby shell, for system configuration, and application deployment}
  gem.email = "mjording@opengotham.com"
  gem.homepage = "http://rushmore.failless.com"
  gem.license = "GPL-3"
  gem.summary = %Q{monumental provisioning and deployment}
  gem.description = %Q{TODO: longer description of your gem}
  gem.email = "mjording@opengotham.com"
  gem.authors = ["mjording"]
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

