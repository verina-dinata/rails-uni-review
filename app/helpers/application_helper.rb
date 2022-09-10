module ApplicationHelper
  def user_avatar(user)
    if user.photo.attached?
      user.photo
    else
      "https://image.shutterstock.com/image-vector/person-icon-on-white-background-260nw-1699358734.jpg"
    end
  end
end
