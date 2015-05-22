class TagPost < ActiveRecord::Migration
  def change
  	create_table :tag_post do |t|
    	t.integer	:tag_id
    	t.integer	:post_id
      t.timestamps null: false
  end
  end
end
