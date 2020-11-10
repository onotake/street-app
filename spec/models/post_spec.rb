require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'postのバリデーションテスト' do

    before do
      @post = FactoryBot.build(:post)
    end

    context '値が空ではDBに保存できない' do
      it "imageとcaptionが存在すれば登録できること" do
        expect(@post).to be_valid
      end
      it "imageが空では登録できないこと" do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
      it "captionが空では登録できないこと" do
        @post.caption = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Caption can't be blank")
      end
    end

    context 'captionの文字数テスト' do
      it 'captionが1000文字以上だと登録できない' do
        @post.caption = "#{print 'a' * 1001}"
        @post.valid?
        expect(@post.errors.full_messages).to include("Caption can't be blank")
      end
    end
  end
end
