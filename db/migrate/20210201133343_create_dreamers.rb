class CreateDreamers < ActiveRecord::Migration[6.0]
  def change
    create_table :dreamers do |t|
      t.string :dream_title,          null:false
      t.text   :declaration,          null:false
      t.string :period,               null:false
      t.string :reward,               null:false
      t.integer :genre_id,            null:false
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
      

