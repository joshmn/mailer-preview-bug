module Schools
  class StudentMailer < ApplicationMailer
    def welcome
      @student = Student.find(params[:student_id])
      mail(to: "test@test.com", subject: "Welcome to class")
    end
  end
end
