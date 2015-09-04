module MRuby::CLI
  class App < Thor
    class_option(:build_config, {
      desc: 'The build configuration file to load.',
      default: './build_config.rb',
      aliases: '-c',
      group: 'rake',
      type: :string
    })

    class_option(:build_dir, {
      desc: 'The directory where things will be built',
      default: './build',
      aliases: '-o',
      group: 'rake',
      type: :string
    })

    desc "minirake [ARGS...]", "Execute MRuby's minirake"
    def minirake(*args)
      Rake[args: args]
    end

    desc "rake [COMMAND]", "Runs a rake command"
    def rake(command=nil)
      Rake[{
        args: [
          '--rakefile',
          Source.path.join('RakeFile').to_s
        ] + Array(command),
        env: {
          'MRUBY_CONFIG' => options[:build_config],
          'MRUBY_BUILD_DIR' => options[:build_dir]
        }
      }]
    end

    desc "build", "Builds all MRuby build targets from"
    def build
      rake('all')
    end

    desc "test", "Build and execute tests"
    def test
      rake('test')
    end

    def help
      Description.print(shell)
      super
    end
  end
end
