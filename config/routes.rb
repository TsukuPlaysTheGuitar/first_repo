Rails.application.routes.draw do

  get "administrator/home" => "administrator#admin_home"
  get "administrator/index" => "administrator#qanda_index"
  get "administrator/addqas" => "administrator#add_qas"
  get "administrator/:id/qandaeditform" => "administrator#qanda_editform"
  post "administrator/:id/qandaedit" => "administrator#qanda_edit"
  post "administrator/create" => "administrator#create"

  get "loginform" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "signup" => "users#new"
  
  get "users/:id/home" => "users#user_home"
  get "users/:id/profile" => "users#user_profile"
  get "users/:id/index" => "users#index"
  get "users/:id/addyourqn" => "users#add_yourqn"
  get "users/:id/giveqas" => "users#give_qas"
  get "users/:id/giveuserqas" => "users#give_userqas"
  post "users/create" => "users#create"
  post "users/:id/profileedit" => "users#profile_edit"
  
  get "qns/:id/editform" => "qns#edit_form"
  get "qns/:id/show" => "qns#show_userqas"
  post "qns/:id/edit" => "qns#edit"
  post "qns/:id/destroy" => "qns#destroy"
  post "qns/create" => "qns#create"

  get "/" => "home#top"
  get "about" => "home#about"

end
