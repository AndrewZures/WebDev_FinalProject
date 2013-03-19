ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "andrew.zures@gmail.com",
  :user_name            => "andrew.zures",
  :password             => "Omicron1@",
  :authentication       => "plain",
  :enable_starttls_auto => true
}