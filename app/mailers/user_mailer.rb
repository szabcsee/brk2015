class UserMailer < ActionMailer::Base
  default :from => "becske2015course@gmail.com"
  helper ApplicationHelper

  def confirmation_email(user)
    @user = user
    @meals = user.meals.all
    @children = user.children.all
    @url  = "http://www.buddhizmusma.hu/uncategorized/programvaltozas/"
    mail(:to => user.email_address, :subject => "Becske Course 2015 - Confirmation")
  end

end
