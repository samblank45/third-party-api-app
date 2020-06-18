Rails.application.routes.draw do

  namespace :api do
    get "/weather" => "weather#show"
  end
 
end
