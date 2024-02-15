class ApplicationController < ActionController::Base
    
    # #! This is the hello action
    # def hello
    #     #! an empty action, will throw an error saying missing template
    #     render html: 'hello world'
    # end
    
    helper_method :current_user, :logged_in?

    def current_user
        # This || syntax means that we don't have to hit the db each time, we will just store into tha var
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end
    end

    def logged_in?
        # This !! operator will turn it into a boolean
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:alert] = "User must login to perform that operation"
            redirect_to root_path
        end
    end

    def require_same_user_for_article
        if current_user != @article.user && !current_user.admin?
            flash[:alert] = "You can only edit or delete your own articles"
            redirect_to @article
        end
    end

    def require_same_user
        if current_user != @user
            flash[:alert] = "You can only edit or delete users"
            redirect_to user_path(@user)
        end
    end
end
