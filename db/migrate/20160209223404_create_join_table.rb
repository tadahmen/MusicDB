class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :artists, :songs do |t|
      t.index [:artist_id, :song_id]
      t.index [:song_id]
    end
  end
end
