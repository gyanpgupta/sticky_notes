module NotesHelper
  def avatar_image_for(note)
    if note.avatar?
      image_tag note.avatar.thumb.url
    elsif note.email?
      gravatar_id = Digest::MD5::hexdigest(note.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag gravatar_url
    else
      nil
    end
  end
end
