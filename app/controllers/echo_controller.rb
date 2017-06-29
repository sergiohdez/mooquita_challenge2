class EchoController < ApplicationController
    def index
        flash[:notice] = ""
        flash[:error] = ""
        if params[:email]
            @email = params[:email]
            result = @email.match(/(^[a-zA-Z0-9_.+\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-.]+$)/) if @email
            if result == nil
                flash[:error] = "Email address invalid"
            else
                InfoMailer.echo_mail(@email).deliver_now
                flash[:notice] = "Email send to #{@email}"
            end
        end
    end
end
