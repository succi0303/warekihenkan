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
