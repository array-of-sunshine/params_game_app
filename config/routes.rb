Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/show_your_name' => 'params#name'
    get '/guess_a_number' => 'params#guess'
  end
end
