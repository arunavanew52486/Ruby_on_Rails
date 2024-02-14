class SessionsController < ApplicationController
    
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email])

        if user  && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = " logged in Successfully"
            redirect_to user_path(user)
        else
            # redirect_to login_path
            render 'new', status: :unprocessable_entity
            flash[:alert] = "this msg renders"
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "logged out Successfully"
        redirect_to root_path
    end
end




# def create
#     # binding.break
#     user = User.find_by(email: params[:session][:email].downcase)
#     if user
#         if user.authenticate(params[:session][:password])
#             flash[:notice] = "logged in successfully"
#             redirect_to user
#         else
#             flash.now[:alert] = "username or password was incorrect"
#             render 'new'
#         end
#         binding.break
#     else
#         flash.now[:alert] = "username or password was incorrect"
#         render 'new'
#         # redirect_to login_path
#     end
# end