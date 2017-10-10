class StaticPagesController < ApplicationController
  def home
    @users = User.all
    @courses = Course.all
  end

  def about

  end

  def login

  end
end
