# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form("juan@berlinbikes.com", "Juan", "Thank you for contacting Berlin Bikes. Your request will be answered shortly.")
  end
end
