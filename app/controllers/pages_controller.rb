class PagesController < ApplicationController
    def home
        if signed_in?
            @email = current_user.email
        end
    end

    def destroy      
        session[:user_id] = nil     
        redirect_to root 
    end 
end  