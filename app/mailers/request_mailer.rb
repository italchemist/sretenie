# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "sretenie@italchemist.org"

  def request_email(params)
  	mail(to: "sretenie@italchemist.org", subject: "Заявка")
  end
end
