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
    
    # copier/coller depuis Stack Overflow© ça fait (souvent) parti du Job, mais sur ce point là
    # désolé, c'est un hors sujet :-/
    # La méhode "authenticate_user" est fournie par devise et se suffisait à elle même pour ce qu'il fallait faire
    # Aucun besoin de faire quoi que ce soit de plus.

end
