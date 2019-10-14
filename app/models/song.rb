class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    result = Artist.all.find{ |artist| artist.id == self.artist_id }
    result.name
  end
end
