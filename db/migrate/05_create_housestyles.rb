require 'pry'
class CreateHousestyles < ActiveRecord::Migration[5.0]
  binding.pry
  def change
    create_table :housestyles do |t|
      t.integer :house_id
      t.integer :style_id
    end
  end

end