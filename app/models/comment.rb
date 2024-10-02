class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  include Visible
  
  field :commenter, type: String
  field :body, type: String
  belongs_to :article
end
