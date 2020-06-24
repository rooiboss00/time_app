class BeginPagesController < ApplicationController
  def home
    @micropost = current_user.posts.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact

  end
end
