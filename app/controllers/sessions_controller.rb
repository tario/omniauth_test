class SessionsController < ApplicationController
  def create
    
    #require "pry"; binding.pry
    render :text => request.env['rack.auth'].inspect
#    @user = User.find_or_create_from_auth_hash(auth_hash)
 #   self.current_user = @user
  #  redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
