user = User.where(email: "jpgiodevelopments@gmail.com").first_or_initialize 
user.update!(
    password: Rails.application.credentials.dig(:login, :password),
    password_confirmation: Rails.application.credentials.dig(:login, :passwordconf)
)