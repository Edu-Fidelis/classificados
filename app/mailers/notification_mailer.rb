class NotificationMailer < ApplicationMailer
    def welcome(name, email)
        @name = name
        @email = email

        mail to: email
    end
end