#encoding: utf-8

class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
    respond_to do |format|
      format.html
      format.json
      format.js { render 'problemas/partials/index' }
    end
  end
end
