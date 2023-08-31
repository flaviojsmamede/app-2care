class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
  end

  def account
    @user = current_user
  end

  def dashboard
  end
end
