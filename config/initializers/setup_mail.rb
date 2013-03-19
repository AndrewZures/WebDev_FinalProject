ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "name@example.com",
  :user_name            => "name@example.com",
  :password             => "password",
  :authentication       => "plain",
  :enable_starttls_auto => true
}