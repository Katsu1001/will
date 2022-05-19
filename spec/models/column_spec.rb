require 'rails_helper'

RSpec.describe Column, type: :model do
  before do
    @column = FactoryBot.build(:column)
  end
  describe "新規情報を登録" do
    context '情報を登録できないとき' do
      it "nameが空だと登録できない" do
        @column.name = ''
        @column.valid?
        expect(@column.errors.full_messages).to include("タイトルを入力してください")
      end
      it "introductionが空だと登録できない" do
        @column.introduction = ''
        @column.valid?
        expect(@column.errors.full_messages).to include("詳細を入力してください")
      end
      it "category_idが--だと登録できない" do
        @column.category_id = 0
        @column.valid?
        expect(@column.errors.full_messages).to include("ジャンルは0以外の値にしてください")
      end
      it "part_idが--だと登録できない" do
        @column.part_id = 0
        @column.valid?
        expect(@column.errors.full_messages).to include("トレーニングの部位は0以外の値にしてください")
      end
      it "ユーザー情報がないと出品できない" do
        @column.user = nil
        @column.valid?
        expect(@column.errors.full_messages).to include("Userを入力してください")
      end
    end
  
    context '情報を登録できるとき' do
      it "nameとintroduction、category_id、part_idが存在すれば登録できる" do
        expect(@column).to be_valid
      end
    end    
  end
end
