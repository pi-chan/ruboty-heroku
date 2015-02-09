require "ruboty/heroku/actions/restart"

module Ruboty
  module Handlers
    class Heroku < Base

      env :HEROKU_API_KEY, "Heroku api key"
      
      on /heroku restart (?<app>.+)\z/, name: 'restart', description: 'Restart the Heroku application'

      def restart(message)
        Ruboty::Heroku::Actions::Restart.new(message).call
      end
    end
  end
end
