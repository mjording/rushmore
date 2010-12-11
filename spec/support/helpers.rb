module Spec
  module Helpers
    # def run(cmd, *args)
    #    opts = args.last.is_a?(Hash) ? args.pop : {}
    #    # expect_err = opts.delete(:expect_err)
    #    # env = opts.delete(:env)
    #    groups = args.map {|a| a.inspect }.join(", ")
    #    # setup = "require 'rubygems' ; require 'bundler' ; Bundler.setup(#{groups})\n"
    #    @out = ruby(cmd, :expect_err => expect_err)
    #  end
    # 
    #  def ruby(ruby)
    #    # expect_err = options.delete(:expect_err)
    #    # env = (options.delete(:env) || {}).map{|k,v| "#{k}='#{v}' "}.join
    #    ruby.gsub!(/["`\$]/) {|m| "\\#{m}" }
    #    sys_exec(%{#{Gem.ruby} -I#{lib} -e "#{ruby}"})
    #  end
        # 
        # def sys_exec(cmd, expect_err = false)
        #   Open3.popen3(cmd.to_s) do |stdin, stdout, stderr|
        #     @in_p, @out_p, @err_p = stdin, stdout, stderr
        # 
        #     yield @in_p if block_given?
        #     @in_p.close
        # 
        #     @out = @out_p.read_available_bytes.strip
        #     @err = @err_p.read_available_bytes.strip
        #   end
        # 
        #   # puts @err unless expect_err || @err.empty? || !$show_err
        #   @out
        # end
  end
end
