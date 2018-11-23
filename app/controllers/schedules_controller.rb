class SchedulesController < ApplicationController

  def create_order
    @provinces = Province.all
    # redirect_to '/species'
  end

  def confirm
    unless params[:start_date].nil?
      session[:location] = params[:cart_location]
      session[:quantity] = params[:target]['quantity']
      session[:province] = params[:cart_province]
      session[:start] = "#{params[:start_date]['year']}-#{params[:start_date]['month']}-#{params[:start_date]['day']}"
      session[:end] = "#{params[:end_date]['year']}-#{params[:end_date]['month']}-#{params[:end_date]['day']}"
    end
      s = Date.parse(session[:start])
      e = Date.parse(session[:end])
      # @weeks = Date.parse(e).step(s, 7).count
      # # @weeks = s - e
      @province = Province.find(session[:province])
      @weeks = ((s..e).count - 1) / 7
      @cost = (@cart_hunter.cost * @weeks) + (20 * session[:quantity].to_i)
      taxes = @cost.to_f * (@province.tax.to_f / 100)
      @taxes = taxes.round(2)
      @total = @cost + @taxes
      session[:total_cost] = @total

  end
  def checkout
    Schedule.create(
      hunter: Hunter.find(session[:hunter]),
      vehicle: Vehicle.find(1),
      target: Target.find(session[:target]),
      location: Location.find(session[:location]),
      total_cost: session[:total_cost].to_f,
      start_date: session[:start],
      end_date: session[:end]
    )

    reset_session
    redirect_to '/schedules/order_message'
  end

  def remove_target
    session.delete(:target)
    redirect_to '/targets'
  end

  def remove_hunter
    session.delete(:hunter)
    redirect_to '/hunters'
  end

end
