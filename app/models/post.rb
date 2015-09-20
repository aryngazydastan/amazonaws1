class Post < ActiveRecord::Base
	has_attached_file :file
	do_not_validate_attachment_file_type :file, :storage => :s3,
            :bucket  => ENV['amazonaws1']
end
