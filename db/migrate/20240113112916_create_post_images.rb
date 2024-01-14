class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      #5-7行目は自分で付け足した分で、rails db:migrationした後に書き足したためおそらくテーブル内に反映されていないです。
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
