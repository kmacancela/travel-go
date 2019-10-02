class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :attendees
    has_many :events, through: :attendees

    def to_s
        self.first_name + " " + self.last_name
    end
    
    # validates_confirmation_of :password

    # <div class="form-group">
    #             <%= f.label :password_confirmation, "Confirmation" %>
    #             <%= f.password_field :password_confirmation, class: 'form-control'%>
    #         </div>
    
    
end
