require 'rushmore/application'
require 'rushmore/files'


module Rushmore
  ORIGINAL_ENV = ENV.to_hash
  
  autoload :UI, 'rushmore/ui'
  
  
  class << self
    attr_writer :ui
    
    def ui
      @ui ||= UI.new
    end
    
    
    
  end
end