# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "larisa_1956@mail.ru"

  def request_email(params)
  	@params = params
  	mail(to: "braincube@yandex.ru", subject: "Заявка")
  end
end
