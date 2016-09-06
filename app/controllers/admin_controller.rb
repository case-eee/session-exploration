class AdminController < ApplicationController

  def wahoo
    cookies[:hola] = 'hola'
    session[:user_id] = 5460
    # require 'pry'; binding.pry
  end


  def test

  end

  def secret
    redirect '/wahoo' unless session[:user_id] == 5460
  end
end
