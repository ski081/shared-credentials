class SessionsController < ApplicationController
  def create
    Rails.logger.debug("Email: #{params[:email]}")
    Rails.logger.debug("Password: #{params[:password]}")

    if params[:email] && params[:password]
      Rails.logger.debug("Found username and password")
      log_in(params[:email], params[:password])
      redirect_to root_url
    else
      render 'new'
    end
  end

  def new; end

  def destroy
    log_out
    redirect_to root_url
  end
end
