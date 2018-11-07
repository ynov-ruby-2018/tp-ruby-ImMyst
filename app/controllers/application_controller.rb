include Devise::Controllers::Helpers

class ApplicationController < ActionController::Base
    protected
    def authenticate_user!
        if user_signed_in?
        super
        else
        redirect_to new_user_session_url, :notice => 'You need to be login'
        ## if you want render 404 page
        ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
        end
    end
    helper_method :authenticate_user!

end
