class SessionsController < ApplicationController
  def create
    auth = auth_hash()
    require "pry"; binding.pry
    unless @auth = Authorization.find_from_hash(auth)
      # Create a new user or add an auth to existing user, depending on
      # whether there is already a user signed in.
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    # Log the authorizing user in.
    self.current_user = @auth.user
  
    render :text => "Welcome, #{current_user.name}."
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
