module MRuby::CLI
  module Generators
    class Gem < Base

      def generate_mrbgem_description
        template('mrbgem.rake.erb', "#{path}/mrbgem.rake")
      end

      def generate_source_files
        template('mrblib.rb.erb', "#{path}/mrblib/#{short_name}.rb")
        template('src.c.erb', "#{path}/src/#{short_name}.c")
      end

      def generate_test_files
        template('test.rb.erb', "#{path}/test/#{short_name}.rb")
        template('build_config.rb.erb', "#{path}/build_config.rb")
        template('travis.yml.erb', "#{path}/.travis.yml")
      end

    end
  end
end
