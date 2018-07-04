module ApplicationHelper
  def public_image_tag(path, *image_tag_params)
    image_tag "#{ENV['PUBLIC_IMAGE_URL']}/#{path}", image_tag_params[0]
  end
end
