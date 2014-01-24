module ApplicationHelper
  def full_title(page_title)
    base_title = "和暦変換"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def my_twitter_path
    "https://twitter.com/succi0303"
  end

  def my_blog_path
    "http://succi.jp/blog/"
  end

  def my_repository_path
    "https://github.com/succi0303/warekihenkan"
  end
end
