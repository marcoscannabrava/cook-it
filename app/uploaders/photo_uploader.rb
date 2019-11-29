class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  cloudinary_transformation crop: :fill

end
