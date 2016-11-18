class ApplicationController < ActionController::Base
	require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'
require 'pry'
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected	
  # vishal

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
  end
end
end
