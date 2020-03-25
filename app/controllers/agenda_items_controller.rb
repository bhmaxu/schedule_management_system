class AgendaItemsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def create
    @agenda_item = current_user.agenda_items.build(agenda_item_params)
    if @agenda_item.save
      flash[:success] = "日程创建成功!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @agenda_item.destroy
    flash[:success] = "日程成功删除！"
    redirect_to request.referrer || root_url
  end

  def edit
    @agenda_item = AgendaItem.find(params[:id])
  end

  def update
    @agenda_item = AgendaItem.find(params[:id])
    if @agenda_item.update_attributes(agenda_item_params)
      flash[:success] = "编辑成功！"
      redirect_to root_path
    else
      render 'edit'
    end

  end

  private

  def agenda_item_params
    params.require(:agenda_item).permit(:content, :time)
  end

  def correct_user
    @agenda_item = current_user.agenda_items.find_by(id: params[:id])
    redirect_to root_url if @agenda_item.nil?
  end
end
