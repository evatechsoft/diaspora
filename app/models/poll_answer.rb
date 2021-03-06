class PollAnswer < ActiveRecord::Base

  include Diaspora::Federated::Base
  include Diaspora::Guid
  
  belongs_to :poll
  has_many :poll_participations

  xml_attr :answer

  self.include_root_in_json = false

end
