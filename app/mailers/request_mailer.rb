# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "me@italchemist.org"

  def request_email(params)
  	mail(to: "braincube@yandex.ru", subject: "Заявка")
  end
end
