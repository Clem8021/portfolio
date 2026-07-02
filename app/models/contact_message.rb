class ContactMessage
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name,         :string
  attribute :email,        :string
  attribute :project_type, :string
  attribute :body,         :string

  validates :name,  presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :body,  presence: true
end