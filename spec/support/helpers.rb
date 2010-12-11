module Spec
  module Helpers
    attr_reader :out, :err, :exitstatus
    def run(cmd, *args)
      opts = args.last.is_a?(Hash) ? args.pop : {}
      env = opts.delete(:env)
      @out = %x{#{cmd}}.strip
      
    end
  end
end