class ApplicationController < ActionController::Base
  before_action :load_cart

  def load_cart
    unless session[:hunter].nil?
      @cart_hunter = Hunter.find(session[:hunter])
    end
    unless session[:target].nil?
      @cart_target = Target.find(session[:target])
    end
  end

  def update_quantity
    session[:quantity] = params[:quantity]
    # session[:quantity] = ActiveSupport::JSON.decode(CGI.unescapeHTML(params[:quantity]))
  end
end
