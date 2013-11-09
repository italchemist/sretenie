# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "request@sreteniespb.ru"

  def request_email(params)
  	mail(to: "request@sreteniespb.ru", subject: "Заявка")
  end
end
