class CreateDragons < ActiveRecord::Migration[6.0]
  def change
    create_table :dragons do |t|
      t.string :name

      t.timestamps
    end
  end
end
