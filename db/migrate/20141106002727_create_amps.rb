class CreateAmps < ActiveRecord::Migration
  def change
    create_table :amps do |t|
      t.string :name
      t.string :category
      t.string :yelpid
      t.string :image_url
      t.string :url
      t.string :mobile_url
      t.string :display_phone
      t.integer :review_count
      t.integer :rating
      t.string :rating_img_url
      t.string :rating_img_url_small
      t.string :snippet_text
      t.string :snippet_image_url
      t.string :location_display_address
      t.string :location_address
      t.string :location_city
      t.string :location_state_code
      t.string :location_postal_code
      t.string :reviews_rating_image_url
      t.string :review_rating_image_small_url
      t.string :reviews_excerpt
      t.string :reviews_user_image_url
      t.string :reviews_user_name

      t.timestamps
    end
  end
end
