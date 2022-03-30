class UserMailer < ApplicationMailer
  default from: "rahul.k@gmail.com"

  def welcome_email
    @user = params[:user]
    attachments.inline["image.jpg"] = File.read("app/assets/images/welcome.jpg")
    mail(to: @user.email, subject: "Welcome to my site.") do |format|
      format.html { render layout: "welcome_email" }
      format.text
    end
  end

  def edit_email
    @user = params[:user]
    attachments.inline["image.jpg"] = File.read("app/assets/images/signin.jpeg")
    mail(to: @user.email, subject: "Welcome to my site.") do |format|
      format.html { render layout: "edit_email" }
      format.text
    end
  end
end
