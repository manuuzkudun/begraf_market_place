module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, attr_hash)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, class: attr_hash[:class], id: attr_hash[:id],
      "data-toggle" => attr_hash["data-toggle"])
  end
end
