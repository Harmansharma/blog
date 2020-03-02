class Comment < ApplicationRecord
 self.table_name = "my_commenters"

  belongs_to :article
end
