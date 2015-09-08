require 'mruby/cli/generators'

module MRuby::CLI
  module Commands
    class Generate < Thor
      register(
        Generators::Build, 'build',
        'build PATH', "Generates a MRuby build project")

      register(
        Generators::Gem, 'gem',
        'gem PATH', "Generates a MRuby gem project")
    end
  end
end
