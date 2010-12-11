require 'thor'
require 'thor/actions'

module Rushmore
  class CLI < Thor
    include Thor::Actions
    
    def initialize(*)
      super
      the_shell = (options["no-color"] ? Thor::Shell::Basic.new : shell)
      Rushmore.ui = UI::Shell.new(the_shell)
      Rushmore.ui.debug! if options["verbose"]
    end		
    
    check_unknown_options! unless ARGV.include?("exec") || ARGV.include?("config")
    
    default_task :deploy
    class_option "no-color", :type => :boolean, :banner => "Disable colorization in output"
    class_option "verbose",  :type => :boolean, :banner => "Enable verbose output mode", :aliases => "-V"
        
    desc "deploy", "deploys the project at working directory to a specified server"
    long_desc <<-D
      deploy deploys the project at working directory to a specified server.
    D
    
    # method_option "server", :type => :string, :banner =>
    #        "specification for server. defaults to specification in ./config/deploy"
    #    method_option "groups", :type => :string, :banner =>
    #        "filtered groups for configuration, defaults to production"
   
    def deploy
      
      opts = options.dup
      # opts[:server] ||= '127.0.0.1'
      #       opts[:groups] ||= 'production'
      #       
      Rushmore.ui.info "rushmore rockin like lincoln"
      
    end
   
  end
end