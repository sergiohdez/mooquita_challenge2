class InfoMailer < ApplicationMailer
    default from: "sergioluisha@gmail.com", subject: "Info from sergiohdez"
    
    def echo_mail(email)
        @email = email
        mail(to: @email)
    end
end
