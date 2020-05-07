class SchoolsStudentMailerPreview < ActionMailer::Preview
  def welcome
    student = ::Schools::Student.first_or_create(name: "David")
    ::Schools::StudentMailer.goodbye(student.id)
  end
end
