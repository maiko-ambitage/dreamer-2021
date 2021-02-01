class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '受験・資格' },
    { id: 3, name: 'スポーツ' },
    { id: 4, name: '仕事・就職・起業' },
    { id: 5, name: '結婚・恋人' },
    { id: 6, name: '貯金・年収' },
    { id: 7, name: '欲しい物' },
    { id: 8, name: '行きたい場所' },
    { id: 9, name: '世の中変える・社会問題' },
    { id: 10, name: '〜でみんなを幸せに' },
    { id: 11, name: 'その他' },
    
  ]
  include ActiveHash::Associations
  has_many :users
end