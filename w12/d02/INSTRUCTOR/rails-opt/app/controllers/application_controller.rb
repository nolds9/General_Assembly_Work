class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :activate_profiler

  def activate_profiler
    Rack::MiniProfiler.authorize_request
  end
end