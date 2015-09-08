module MRuby::CLI
  module Generators
    class Gem < Base

      def generate_mrbgem_description
        template('mrbgem.rake.erb', "#{path}/mrbgem.rake")
        template('license.txt.erb', "#{path}/LICENSE.txt")
        template('readme.md.erb', "#{path}/README.md")
        template('code_of_conduct.md.erb', "#{path}/CODE_OF_CONDUCT.md")
      end

      def generate_source_files
        template('mrblib.rb.erb', "#{path}/mrblib/#{short_name}.rb")
        template('src.c.erb', "#{path}/src/#{short_name}.c")
      end

      def generate_documentation_files
        template('yardopts.erb', "#{path}/.yardopts")
        template('inch.yml.erb', "#{path}/.inch.yml")
      end

      def generate_test_files
        template('test.rb.erb', "#{path}/test/#{short_name}_spec.rb")
        template('build_config.rb.erb', "#{path}/build_config.rb")
        template('travis.yml.erb', "#{path}/.travis.yml")
      end

    end
  end
end
