module MRuby::CLI
  # Wrapper around MRuby::Source module to stop execution if MRuby's source is not available
  module Source
    def self.path
      require 'mruby/source'

      MRuby::Source.path
    rescue LoadError
      puts "To execute this action you need a copy of MRuby's source!"
      exit 1
    end
  end
end
