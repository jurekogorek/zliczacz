class AddTitleUniquenessToCategory < ActiveRecord::Migration
  def change
    add_index :categories, :title,:unique=>true
  end
end
