class User < ApplicationRecord
    has_many :Posts, dependent: :destroy
    # dependentの記述によって、
    # userが削除されると関連付いたpostsも全て削除される
end
