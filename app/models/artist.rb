class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    songs.count
  end

  def pretty_song_count
    songs.count.to_s + " song".pluralize(songs.count)
  end
end
