class ApplicationController < ActionController::Base
  before_action :load_cart
  skip_before_action :verify_authenticity_token
  def load_cart
    # unless params[:rem_hunter].nil?
    #   session.delete(:hunter)
    #   # redirect_to 'hunters'
    # end

    # unless params[:rem_target].nil?
    #   session.delete(:target)
    #   # redirect_to 'targets'
    # end

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
