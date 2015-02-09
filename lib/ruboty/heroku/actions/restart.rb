module Ruboty
  module Heroku
    module Actions
      class Restart < Ruboty::Actions::Base
        def call
          app_name = message[:app]
          @api_key = ENV["HEROKU_API_KEY"]
          @client = PlatformAPI.connect_oauth(@api_key)
          begin
            @client.dyno.restart_all(app_name)
            message.reply("#{app_name} is restarting now.")
          rescue
            message.reply("Failed to restart #{app_name}. Confirm your input.")
          end
        end
      end
    end
  end
end
