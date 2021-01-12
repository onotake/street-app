require 'rails_helper'

RSpec.describe PostTag, type: :model do
  describe 'post_tagのバリデーションテスト' do

    before do
      @post_tag = FactoryBot.build(:post_tag)
      @post_tag.image = fixture_file_upload('public/images/test_image.png')
    end

    context '値が存在すると保存できる' do
      it "imageとcaptionが存在すれば登録できること" do
        expect(@post_tag).to be_valid
      end
    end

    context '値が空ではDBに保存できない' do
      it "imageが空では登録できないこと" do
        @post_tag.image = nil
        @post_tag.valid?
        expect(@post_tag.errors.full_messages).to include("Image can't be blank")
      end
      it "captionが空では登録できないこと" do
        @post_tag.caption = ''
        @post_tag.valid?
        expect(@post_tag.errors.full_messages).to include("Caption can't be blank")
      end
    end

    context 'captionの文字数テスト' do
      it 'captionが1000文字以上だと登録できない' do
        @post_tag.caption = "#{print 'a' * 1001}"
        @post_tag.valid?
        expect(@post_tag.errors.full_messages).to include("Caption can't be blank")
      end
    end
  end
end