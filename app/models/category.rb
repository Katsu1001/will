class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '増量・筋肥大テクニック' },
    { id: 2, name: '減量テクニック' },
    { id: 3, name: 'サプリメント' },
    { id: 4, name: '体づくりの新常識' },
    { id: 5, name: 'ボディメイクを成功するための思考法' },
    { id: 6, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :columns

  end