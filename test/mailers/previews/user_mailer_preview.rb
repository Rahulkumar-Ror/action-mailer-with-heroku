class UserMailerPreview < ActionMailer::Preview
  def welcome_email
    UserMailer.with(user: User.last).welcome_email
  end

  def edit_email
    UserMailer.with(user: User.last).edit_email
  end
end
