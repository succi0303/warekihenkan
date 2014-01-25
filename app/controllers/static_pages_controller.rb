class StaticPagesController < ApplicationController
  def index
    @notice ||= nil
    @alert ||= nil
    @years = nil
  end

  def about
  end

  def contact
  end

  def search
    search_word = URI.decode(params[:q])

    unless search_word.empty?
      if search_word.gsub(/\d/,'') == ''
        if search_word.to_i >= 1868 && search_word.to_i <= 2014
          @years = Year.where(christian_era: search_word)
          @notice = '変換が成功しました'
        else
          @alert = '西暦は 1868 〜 2014 の範囲で入力してください'
        end
      else
        @alert = '西暦は半角数字で入力してください'
      end
    end

    render 'index'
  end
end
