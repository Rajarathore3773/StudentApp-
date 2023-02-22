Rails.application.routes.draw do
  # get "/students" , to:"students#index"
  # get "/students/:id", to:"students#show"
  # post "/students", to:"students#create"
  # put "/students/:id", to:"students#update"
  # delete "/students/:id", to:"students#destroy"

  # get "/exams" , to:"exams#index"
  # get "/exams/:id", to:"exams#show"
  # post "/exams", to:"exams#create"
  # put "/exams/:id", to:"exams#update"
  # delete "/exams/:id", to:"exams#destroy"

  resources :students do 
    resources :exams
    resources :results
  end

end
