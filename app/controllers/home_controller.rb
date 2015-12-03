#encoding: utf-8

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
    @problemas = Problema.all.order('created_at desc')
    respond_to do |format|
      format.html
      format.js
      format.json
    end
  end
end
