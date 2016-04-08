class StudentMailer < ApplicationMailer
  default from: 'notification@lib.ncsu.edu'

  def welcome_email(student)
    @student = student
    #@url  = 'http://example.com/login'
    mail(to: @student.email, subject: 'Welcome to My Awesome Site')
  end
end
