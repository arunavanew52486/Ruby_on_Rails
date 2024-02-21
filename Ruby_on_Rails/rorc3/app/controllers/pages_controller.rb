class PagesController < ApplicationController
    def home
    end
    def about
    end
    def profile
        if current_user
            @user = current_user
        end
        return @user
    end
end
