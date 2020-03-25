class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @agenda_item = current_user.agenda_items.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
