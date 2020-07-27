class ApplicationMailer < ActionMailer::Base
  default from: %{"TestGuru" <brillertv@gmail.com>}
  layout 'mailer'
end
