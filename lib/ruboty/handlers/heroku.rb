require "ruboty/heroku/actions/restart"

module Ruboty
  module Handlers
    class Heroku < Base
      on /heroku restart/, name: 'restart', description: 'TODO: write your description'

      def restart(message)
        Ruboty::Heroku::Actions::Restart.new(message).call
      end
    end
  end
end
