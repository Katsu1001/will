class ColumnsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_item, only: [:show]

  def index
    @columns = Column.all.order("created_at DESC")
  end

  def new
    @column = Column.new
  end

  def create
    @column = Column.new(column_params)
   if @column.save
      redirect_to columns_index_path
    else
     render :new
   end
  end

  def show
  end

  private
  def column_params
    params.require(:column).permit(:name, :introduction, :category_id, :part_id, :image).merge(user_id: current_user.id)
  end

  def set_item
    @column = Column.find(params[:id])
  end
end
