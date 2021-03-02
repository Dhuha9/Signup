class SignupsController < ApplicationController
    def new
        @signup= Signup.new
    end
    def create
        @signup= Signup.new(params_signup)
        p "hellooooooooooooooooooooooo"
        p @signup.id
        if @signup.save
            redirect_to "/signups/show/#{@signup.id}"
        end
    end

    def show
        @signup=Signup.find(params[:id])
    end

    private
    def params_signup
        params.require(:signup).permit(:firstname,:lastname,:email,:password)
    end
end
