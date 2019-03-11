require_relative './base_filter'

class SublimeFilter < IdeFilter
  class << self
    # def cli_is_exist?
    #   return File.exist? '/usr/local/bin/subl'
    # end

    def app_is_not_installed?
      Dir.glob('/Applications/Sublime Text*.app*').empty?
    end

    def get_cli_missing_output
      return {
        :title => "Can't find `sublime` in Application.",
        :subtitle => "press SHIFT+ENTER go to offical install doc.",
        :arg => "https://www.sublimetext.com/3",
        :autocomplete => "https://www.sublimetext.com/3"
      }
    end
  end
end