ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "justlikepinterest@gmail.com",
  :user_name            => "justlikepinterest",
  :password             => "fireworks1@",
  :authentication       => "plain",
  :enable_starttls_auto => true
}