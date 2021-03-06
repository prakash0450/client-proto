class FfEngage::YourCostController < ApplicationController
  layout 'first_engage'
  respond_to :html, :js, :json

  def index
    session[:building_name] = "ponderosa_high_school"
    @building_name = session[:building_name]
    respond_with()
  end

  def usage
    @building_name = session[:building_name]
    @content_id = params[:id]
    @chart = params[:chart]
    @url = "ff_engage/your_electric/usage/#{@chart}"
    puts "----------------------"
    puts "content ID = #{@content_id}"
    puts "url = #{@url}"
    puts "----------------------"

    respond_with()

  end

  def weather
    @building_name = session[:building_name]
    @content_id = params[:id]
    respond_with()

  end
  def schedule
    @building_name = session[:building_name]
    @content_id = params[:id]
    respond_with()

  end

end
