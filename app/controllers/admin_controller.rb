class AdminController < ApplicationController
    def login
      if request.post?
        if params[:username] == "admin" && params[:password] == "password"
          session[:admin] = 'admin'
          redirect_to :controller=>'employees'
        else
          flash[:notice] = "Invalid Username/Password"
          redirect_to :action => :login
        end
      end
    end
    def logout
      session[:admin] = nil
      flash[:notice] = "logged out"
      redirect_to :action => :login
    end
  end