class Post < ActiveRecord::Base
	has_attached_file :file
    

	do_not_validate_attachment_file_type :file, 
			:storage => :s3,
            :bucket  => ENV['MY_BUCKET_NAME'],
            :s3_credentials => {
                    :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                },
                :s3_permissions => 'private',
                :url => ":s3_domain_url"
end
