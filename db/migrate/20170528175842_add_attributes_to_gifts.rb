class AddAttributesToGifts < ActiveRecord::Migration[5.1]
  def change
  	change_table :gifts do |t|
  		t.string :title
  		t.string :url
  		t.text :description
  	end
  end
end
