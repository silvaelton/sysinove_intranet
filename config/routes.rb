Rails.application.routes.draw do

  scope ':scope_id' do 
    mount Internal::Engine => '/interno'
  end
end
