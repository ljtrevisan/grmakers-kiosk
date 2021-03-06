module Authentication
  def authenticate!
    redirect "/?referrer=#{request.env['PATH_INFO']}" unless authenticated?
  end

  def authenticated?
    return true unless session[:user].nil?
    return false unless !session[:user]
  end
end
