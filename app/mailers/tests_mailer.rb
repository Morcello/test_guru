class TestsMailer < ApplicationMailer
  def completed_test(test_passage)
    @user = test_passage.user
    @test = test_passage.test

    mail to: %{#{@user.first_name} <#{@user.email}>}, subject: "You completed test!"
  end
end
