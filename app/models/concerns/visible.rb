module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived'].freeze

  included do
    field :status, type: String, default: "public"

    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(:status.in => [nil, 'public']).count
    end
  end

  def archived?
    status == 'archived'
  end
end