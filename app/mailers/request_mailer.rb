# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "larisa_1956@mail.ru"

  def request_email(params)
  	mail(to: "larisa_1956@mail.ru", subject: "Заявка")
  end
end
