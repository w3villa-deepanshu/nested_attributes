class CreateBlogtags < ActiveRecord::Migration[7.0]
  def change
    create_table :blogtags do |t|
      t.references :blog, null: false, forgien_key: true
      t.references :tag, null: false, forgien_key: true
      t.timestamps
    end
  end
end
