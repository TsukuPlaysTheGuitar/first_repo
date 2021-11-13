Rails.application.routes.draw do

  get "administrator/home" => "administrator#admin_home"
  get "administrator/index" => "administrator#qanda_index"
  get "administrator/addqas" => "administrator#add_qas"
  get "administrator/:id/qandaeditform" => "administrator#qanda_editform"
  post "administrator/:id/qandaedit" => "administrator#qanda_edit"
  post "administrator/create" => "administrator#create"

  get "loginform" => "users#login_form"
  get "signup" => "users#new"
  post "create" => "users#create"
  post "login" => "users#login"
  post "logout" => "users#logout"
  
  get "users/:id/home" => "users#user_home"
  get "users/:id/profile" => "users#user_profile"
  get "users/:id/index" => "users#index"
  get "users/:id/addyourqn" => "users#add_yourqn"
  get "users/:id/giveqas" => "users#give_qas"
  get "users/:id/giveuserqas" => "users#give_userqas"
  post "users/:id/userinfoedit" => "users#userinfo_edit"
  post "users/:id/deleteaccout" => "users#delete_account"
  
  get "qns/:id/editform" => "qns#edit_form"
  get "qns/:id/show" => "qns#show_userqas"
  post "qns/:id/edit" => "qns#edit"
  post "qns/:id/destroy" => "qns#destroy"
  post "qns/create" => "qns#create"

  get "/" => "home#top"
  get "about" => "home#about"

end
