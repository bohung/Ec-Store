class ApplicationMailer < ActionMailer::Base
  default from: "service@messmaker.com"
  layout 'mailer'
end
