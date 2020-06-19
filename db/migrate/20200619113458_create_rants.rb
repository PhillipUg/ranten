class CreateRants < ActiveRecord::Migration[6.0]
  def change
    create_table :rants do |t|
      t.integer :author_id
      t.text :content

      t.timestamps
    end
  end
end
