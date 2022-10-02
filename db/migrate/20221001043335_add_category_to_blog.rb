class AddCategoryToBlog < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs , :category ,index: true
  end
end
