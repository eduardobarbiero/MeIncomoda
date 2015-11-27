Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1679729312239058'], ENV['96d71d681aacc408dd5ae9456e44fc98'],
           :scope => 'email,user_birthday,read_stream', :display => 'popup'
end