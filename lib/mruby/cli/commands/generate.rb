require 'mruby/cli/generators'

module MRuby::CLI
  module Commands
    class Generate < Thor
      register(
        Generators::Build, 'build',
        'build NAME', "Generates a MRuby build project")
    end
  end
end
