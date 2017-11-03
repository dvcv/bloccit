module UsersHelper
    def user_have_any_posts?(user)
        user.posts.any?
    end
    def user_have_any_comments?(user)
       user.comments.any?
    end
end
