class DemosController < ApplicationController
before_action :hide_nav

  def hide_nav
    @hide_nav = true
  end

  def new
    @demo = Demo.new
  end

  def create
    # @demo = demo.new
    email = params[:demo][:email]
    name = params[:demo][:name]
    company = params[:demo][:company]

    UserMailer.demo_request(email, name, company).deliver_now
    redirect_to "/", notice: "We're going to contact you soon"
  end

end
