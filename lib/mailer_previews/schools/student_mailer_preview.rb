module Schools
  class StudentMailerPreview < ActionMailer::Preview
    def welcome
      student = ::Schools::Student.first_or_create(name: "David")
      ::Schools::StudentMailer.with(student_id: student.id).welcome
    end
  end
end
