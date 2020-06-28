module ApplicationHelper
  def default_avatar(user1)
    result = @users.map { |user| user if user == user1 }.compact
    if result.first.photo.attached?
      image_tag(result.first.photo, width: 64, height: 64, class: 'avatar')
    else
      image_tag('http://www.gravatar.com/avatar/?d=retro', class: 'avatar')
    end
  end

  def default_cover(user1)
    result = @users.map { |user| user if user == user1 }.compact
    if result.first.cover_image.attached?
      image_tag(result.first.cover_image, width: 720, height: 240, class: 'cover-photo')
    else
      image_tag('https://picsum.photos/id/0/720/240', class: 'cover-photo')
    end
  end

  # rubocop:disable Layout/LineLength
  def like_or_dislike_btn(rantt)
    result = @likes.map { |like| like if like.user == current_user && like.rant == rantt }.compact
    if !result.empty?
      link_to('<i class="fa fa-heart" aria-hidden="true"></i>'.html_safe, rant_like_path(id: result.first.id, rant_id: rantt.id), method: :delete, class: 'dislike')
    else
      link_to('<i class="far fa-heart" aria-hidden="true"></i>'.html_safe, rant_likes_path(rant_id: rantt.id), method: :post, class: 'like')
    end
  end

  def delete_or_retweet_btn(rant)
    if current_user.id == rant.author_id
      link_to '<i class="fas fa-trash-alt" aria-hidden="true"></i>'.html_safe, rant, method: :delete, data: { confirm: 'Are you sure you want to delete this rant?' }, class: 'level-item icon'
    else
      link_to '<i class="fa fa-retweet" aria-hidden="true"></i>'.html_safe, '#', class: 'icon'
    end
  end

  def follow_plus(user)
    return if user == current_user

    if followed_users(current_user).include?(user)
      link_to('<div class="icon"><i class="fas fa-times"></i></div>'.html_safe, user_unfollow_path(user.id), method: 'DELETE', class: 'follow-ex')
    else
      link_to('<div class="icon"><i class="fas fa-plus"></i></div>'.html_safe, user_follow_path(user.id), method: 'POST', class: 'follow-plus')
    end
  end

  def list_icon(user)
    '<div class="icon"><i class="fas fa-list-ul"></i></div>'.html_safe if user != current_user
  end

  def follow_plus2(user)
    return unless !followed_users(current_user).include?(user) && current_user != user

    link_to('<div class="icon"><i class="fas fa-plus"></i></div>'.html_safe, user_follow_path(user.id), method: 'POST', class: 'follow-er')
  end

  def followed_users(user)
    @followingz.map { |f| f.followed if f.follower == user }.compact
  end

  def users_following(user)
    @followingz.map { |f| f.follower if f.followed == user }.compact
  end

  def who_to_follow
    @users.map { |user| user if user != current_user && !followed_users(current_user).include?(user) }.compact
  end
  # rubocop:enable Layout/LineLength
end
