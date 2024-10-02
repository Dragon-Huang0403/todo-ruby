class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  include Visible

  has_many :comments, dependent: :destroy

  field :title, type: String
  field :body, type: String

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
