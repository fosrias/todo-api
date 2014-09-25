class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :uuid
      t.string :title

      t.timestamps
    end
  end
end
