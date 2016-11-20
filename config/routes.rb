Rails.application.routes.draw do

  scope ':account_id' do 
    mount Internal::Engine => '/interno'
  end
end
