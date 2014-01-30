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

  def hatena_bookmark_button_tag
    snippet = <<EOF
<a href="http://b.hatena.ne.jp/entry/http://warekihenkan.herokuapp.com/" class="hatena-bookmark-button" data-hatena-bookmark-title="和暦変換" data-hatena-bookmark-layout="standard-balloon" data-hatena-bookmark-lang="ja" title="このエントリーをはてなブックマークに追加"><img src="http://b.st-hatena.com/images/entry-button/button-only@2x.png" alt="このエントリーをはてなブックマークに追加" width="20" height="20" style="border: none;" /></a><script type="text/javascript" src="http://b.st-hatena.com/js/bookmark_button.js" charset="utf-8" async="async"></script>
EOF
    return snippet.html_safe
  end

  def twitter_button_tag
    snippet = <<EOF
<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://warekihenkan.herokuapp.com/">Tweet</a>
<script src="//platform.twitter.com/widgets.js"></script>
EOF
    return snippet.html_safe
  end

end
