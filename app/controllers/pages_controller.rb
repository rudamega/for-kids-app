class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

  end

  def index
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update

  end
end
