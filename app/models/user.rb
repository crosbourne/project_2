class User < ActiveRecord::Base

  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }


  has_many :groupings
  has_many :groups, through: :groupings
  has_many :proportions

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,:omniauthable, omniauth_providers: [:facebook]
  mount_uploader :user_avatar, UserAvatarUploader

  def self.from_omniauth(auth)
    if user = User.find_by_email(auth.info.email)
      user.provider = auth.provider
      user.uid = auth.uid
      user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
        user.first_name = auth.info.first_name
        user.provider   = auth.provider
        user.uid        = auth.uid
        user.email      = auth.info.email
        user.password   = Devise.friendly_token[0,20]
      end
    end
  end

  def find_grouping(gr)
    Grouping.find_by(user_id: id, group_id: gr.id)
  end

  def find_share(bt, gr)
   sh =Share.find_by(bill_type_id: bt.id, grouping_id: gr.id)
  end

end
