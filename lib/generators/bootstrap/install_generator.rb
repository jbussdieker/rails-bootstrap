module Bootstrap
  module Generators
    class InstallGenerator < Rails::Generators::Base
      #source_root File.expand_path("../../templates", __FILE__)

      desc "Install bootstrap support to your application."

      def install_stylesheets
        line = " *= require_tree ."
        gsub_file 'app/assets/stylesheets/application.css', /(#{Regexp.escape(line)})/mi do |match|
          " *= require bootstrap\n#{match}"
        end
      end

      def install_javascript
        line = "//= require_tree ."
        gsub_file 'app/assets/javascripts/application.js', /(#{Regexp.escape(line)})/mi do |match|
          "//= require bootstrap\n#{match}"
        end
      end
    end
  end
end
