module ApplicationHelper

  def default_avatar(user)
    if user.photo.attached?
      image_tag(user.photo, width: 64, height: 64, class: 'avatar')
    else
      image_tag('http://www.gravatar.com/avatar/?d=retro', class: 'avatar')
    end
  end


  def default_cover(user)
    if user.cover_image.attached?
      image_tag(user.cover_image, width: 720, height: 240, class: 'cover-photo')
    else
      image_tag('https://picsum.photos/id/0/720/240', class: 'cover-photo')
    end
  end
  
end
