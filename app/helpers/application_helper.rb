module ApplicationHelper
	def default_avatar(user)
		if user.photo.attached?
			image_tag(user.photo, width: 64, height: 64, class: "avatar")
		else
			image_tag("https://bulma.io/images/placeholders/64x64.png", class: "avatar")
		end
	end

	def default_cover(user)
		if user.cover_image.attached?
			image_tag(user.cover_image, width: 720, height: 240)
		else
			image_tag("https://bulma.io/images/placeholders/720x240.png")
		end
	end
end
