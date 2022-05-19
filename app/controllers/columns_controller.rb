class ColumnsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @column = Column.new
  end

  def create
    @column = Column.new(column_params)
   if @column.save
      redirect_to root_path
    else
     render :new
   end
  end

  private
  def column_params
    params.require(:column).permit(:name, :introduction, :category_id, :part_id, :image).merge(user_id: current_user.id)
  end
end
