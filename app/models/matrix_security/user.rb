module MatrixSecurity
  class User < ActiveRecord::Base
    devise :database_authenticatable, :recoverable, :rememberable,
           :trackable, :validatable, :lockable

    def to_s
      email
    end
  end
end
