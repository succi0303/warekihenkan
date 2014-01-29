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
    return snippet
  end

  def twitter_button_tag
    snippet = <<EOF
<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://warekihenkan.herokuapp.com/">Tweet</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
EOF
    return snippet
  end

  def facebook_button_tag
    snippet = <<EOF
<div class="fb-like" data-href="http://warekihenkan.herokuapp.com/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
EOF
    return snippet
  end

  def facebook_script_tag
    snippet = <<EOF
  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
EOF
    return snippet
  end
end
