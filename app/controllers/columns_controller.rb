class ColumnsController < ApplicationController
  def index
  end

  private
  def column_params
    params.require(:column).permit(:name, :introduction, :category_id, :part_id, :image).merge(user_id: current_user.id)
  end
end
