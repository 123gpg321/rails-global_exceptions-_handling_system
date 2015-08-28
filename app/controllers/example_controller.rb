class ExampleController < ApplicationController
  rescue_from Exceptions::Handler, :with => :rescue_known_exceptions, :only => [:create]

  def create
  end

  def rescue_known_exceptions
    render :status => $!.http_error_code, :json => {:message => "#{$!}"}
  end
end