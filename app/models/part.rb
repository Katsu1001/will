class Part < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '胸' },
    { id: 2, name: '背中' },
    { id: 3, name: '肩' },
    { id: 4, name: '腕' },
    { id: 5, name: '前腕' },
    { id: 6, name: '腹筋' },
    { id: 7, name: 'お尻' },
    { id: 8, name: 'お腹' },
    { id: 9, name: '脚' },
    { id: 10, name: '脹脛' },
    { id: 11, name: 'その他' },
    { id: 12, name: '特になし' },
  ]

  include ActiveHash::Associations
  has_many :columns

  end