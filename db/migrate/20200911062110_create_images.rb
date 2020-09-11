class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.integer :task_id
      t.integer :image_url

      t.timestamps
    end
  end
end
