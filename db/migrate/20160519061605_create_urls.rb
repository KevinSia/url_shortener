class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url, null: false
      t.string :short_url, null: false

      t.timestamps null: false
    end
  end
end
