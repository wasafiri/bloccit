class FavoriteMailer < ActionMailer::Base
  default from: "dbahar@gwu.edu"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = ""
    headers["In-Reply-To"] = ""
    headers["References"] = ""

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
