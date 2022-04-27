#methods in concern module will be related to visibility of a model
#can also include class methods

module Visible
    extend ActiveSupport::Concern
  
    VALID_STATUSES = ['public', 'private', 'archived']
  
    included do
      validates :status, inclusion: { in: VALID_STATUSES }
    end
  
    class_methods do
        def public_count
          where(status: 'public').count
        end
      end
      
    def archived?
      status == 'archived'
    end
  end