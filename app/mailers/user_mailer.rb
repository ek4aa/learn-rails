class UserMailer < ApplicationMailer
  default from: "sgr0220@outlook.com"

  def contact_email(contact)
    @contact = contact
    mail(to: Rails.application.secrets.owner_email, from: @contact.email, :subject => "Website Contact")
  end
end
