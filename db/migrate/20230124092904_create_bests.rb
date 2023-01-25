class CreateBests < ActiveRecord::Migration[5.2]
  def change
    create_table :bests do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
