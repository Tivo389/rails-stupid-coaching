Rails.application.routes.draw do
  # The request for 'ask.html' is intercepted and linked to the QuestionsController's ask method ('questions#ask').
  get 'ask', to: 'questions#ask'
  #Just by convention it goes to questionsController
  get 'answer', to: 'questions#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end