module MRuby::CLI
  # Wrapper around MRuby::Source module to stop execution if MRuby's source is not available
  module Source
    ERROR_MESSAGE = <<-EOM

Error:
      To execute this action you need a copy of MRuby's source.

      Add this to your Gemfile:

          gem "mruby-source", github: 'mruby/mruby'

      Run bundle install and re-run your last command

    EOM

    def self.path
      require 'mruby/source'

      MRuby::Source::ROOT
    rescue LoadError
      puts ERROR_MESSAGE
      exit 1
    end
  end
end
