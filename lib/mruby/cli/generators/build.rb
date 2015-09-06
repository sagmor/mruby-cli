module MRuby::CLI
  module Generators
    class Build < Thor::Group
      include Thor::Actions

      argument :name

      def self.source_root
        File.expand_path('../build', __FILE__)
      end

      def generate_build_config
        template('build_config.rb.erb', "#{name}/build_config.rb")
      end

      def generate_gemfile
        template('gemfile.erb', "#{name}/Gemfile")
      end

      def generate_gitignore
        template('gitignore.erb', "#{name}/.gitignore")
      end
    end
  end
end
