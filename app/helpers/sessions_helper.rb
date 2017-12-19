module SessionsHelper
  def log_in(email, password)
    Rails.logger.debug('Logging in')
    Rails.logger.debug("User email: #{email}")
    Rails.logger.debug("User password: #{password}")

    session[:email] = email

    Rails.logger.debug("Session email: #{session[:email]}")
  end

  def current_user
    if !session[:email].nil?
      @current_user = session[:email]
    else
      @current_user = nil
    end
  end
    
  def logged_in?
    !session[:email].nil?
  end

  def log_out
    session.delete(:email)
    @current_user = nil
  end
end
