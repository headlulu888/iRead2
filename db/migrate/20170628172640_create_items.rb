class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
    	t.float  :number
    	t.string :name
    	t.string :desc
    	t.float  :rating
      t.timestamps
    end
  end
end
