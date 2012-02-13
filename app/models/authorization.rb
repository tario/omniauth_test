class Authorization < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id, :provider

  validate :developer_provider_or_uid, :on => :create
  def developer_provider_or_uid
    unless uid
      unless provider.to_s == 'developer'
        errors.add(:uid, "can't be blank unless provider is 'developer'")
      end
    end
  end
  
  def self.find_from_hash(hash)
    find_by_provider_and_uid(hash['provider'], hash['uid'])
  end
  
  def self.create_from_hash(hash, user = nil)
    user ||= User.create_from_hash!(hash)
    Authorization.create(:user => user, :uid => hash['uid'], :provider => hash['provider'])
  end    
end
