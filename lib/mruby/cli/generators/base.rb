module MRuby::CLI
  module Generators
    class Base < Thor::Group
      include Thor::Actions

      argument :path

      def self.generator_name
        self.name.split('::').last.downcase
      end

      def self.source_root
        File.expand_path(File.join('..', self.generator_name), __FILE__)
      end

      def generate_gemfile
        template('../base/gemfile.erb', "#{path}/Gemfile")
      end

      def generate_gitignore
        template('../base/gitignore.erb', "#{path}/.gitignore")
      end

      def name
        File.basename(path)
      end

      def short_name
        self.name.gsub(/^mruby-/,'')
      end

      def module_name
        short_name.split('-').map(&:capitalize).join('')
      end

      def c_function_prefix
        self.name.gsub(/-/,'_')
      end
    end
  end
end

