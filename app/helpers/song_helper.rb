module SongHelper 
  def link_to_edit( song )
    link_to(edit_song_path(song), class: "song-action btn-discreet") do
      render partial: "components/icons/edit"
    end
  end
end