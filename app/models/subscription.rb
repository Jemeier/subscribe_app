class Subscription < ActiveRecord::Base
  require 'open-uri'

  belongs_to  :products
  has_many    :user_subscriptions
  has_many    :users, through: :user_subscriptions

  has_attached_file :image, :default_url => "/images/missing.png", :styles => { :medium => "300x300>"}
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  private
     
      def image_provided?
        !self.image.blank?
      end
       
      def download_remote_image
        self.image = do_download_remote_image
        self.image_remote_url = image_url
      end
       
      def do_download_remote_image
        io = open(URI.parse(image_url))
        def io.original_filename; base_uri.path.split('/').last  io.original_filename.blank? ? nil : io
      rescue # catch url errors with validations instead of exceptions (Errno::ENOENT, OpenURI::HTTPError, etc...)
      end
     
   end
end

