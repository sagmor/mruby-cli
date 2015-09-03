module MRuby::CLI
  class Rake

    def initialize(options)
      @options = options
    end

    def environment
      @options.fetch(:env,{})
    end

    def command
      Source.path.join('minirake').to_s
    end

    def arguments
      Array(@options[:args])
    end

    def exec
      args = [self.environment,self.command,*self.arguments]
      puts args.inspect
      Kernel.exec(*args)
    end

    class << self
      # Alias to exec a rake process
      def [](options)
        self.new(options).exec
      end
    end

  end
end
