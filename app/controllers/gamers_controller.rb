class GamersController < ApplicationController
  def index
    @gamers = HTTP
      .headers({
        "twinschen55-User-Email" => Rails.application.credentials.aws[:email]},
        "Authorization" => "Bearer #{Rails.application.credentials.news_api[:api_key]}"
      })
      .get("http://localhost:3000/v1/gamers")
      .parse
    render "index.html.erb"
  end
end
