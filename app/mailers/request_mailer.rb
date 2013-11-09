# encoding: utf-8

class RequestMailer < ActionMailer::Base
  default from: "request@sreteniespb.ru"

  def request_email(params)
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	@params = params
  	mail(to: "request@sreteniespb.ru", subject: "Заявка")
  end
end
