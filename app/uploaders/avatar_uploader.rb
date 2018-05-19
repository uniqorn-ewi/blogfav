class AvatarUploader < ImageUploader
#lass AvatarUploader < CarrierWave::Uploader::Base
# include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
# storage :file

  process :resize_to_limit => [150, 150]

# process :convert => 'png'

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
# def store_dir
#   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
# end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_limit: [50, 50]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
# def extension_whitelist
#   %w(jpg jpeg gif png)
# end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
