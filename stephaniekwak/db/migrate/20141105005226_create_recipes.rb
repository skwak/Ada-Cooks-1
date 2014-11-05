class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :yield
      t.string :time
      t.text :directions

      t.timestamps
    end
  end
end
