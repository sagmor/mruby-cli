module MRuby::CLI
  module Generators
    class Build < Thor::Group
      include Thor::Actions

      argument :directory

      def self.source_root
        File.expand_path('../build', __FILE__)
      end

      def generate_build_config
        template('build_config.rb.erb', "#{directory}/buld_config.rb")
      end

      def generate_gemfile
        template('gemfile.erb', "#{directory}/Gemfile")
      end
    end
  end
end
