class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog


  def move_to_cache
    false
  end

  def move_to_store
    true
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}" #else it save it in post/2/images/pic.jpg
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))

    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
    "https://via.placeholder.com/1000x160?text=Your+Banner+Here"

  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  # process scale: [200, 300]
  #
  # def scale (width, height)
  #   process resize_to_fill width,height
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb , if: is_post? do  #i think it is for defoult
  version :thumb do
    process resize_to_fit: [50, 50]
  end
  # Create different versions of your uploaded files:
  version :large do
    process resize_to_fit: [100, 100]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  def filename
    "something.jpg" if original_filename
  end

  def is_post
    model.class.to_s == 'Post'
  end

end
