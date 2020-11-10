require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'commentのバリデーションテスト' do

    before do
      @comment = FactoryBot.build(:comment)
    end

    context '値が空ではDBに保存できない' do
      it "commentが存在すれば登録できること" do
        expect(@comment).to be_valid
      end
      it "commentが空では登録できないこと" do
        @comment.comment = ""
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment can't be blank")
      end
    end

    context 'commentの文字数テスト' do
      it 'commentが1000文字以上だと登録できない' do
        @comment.comment = "#{print 'a' * 1001}"
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment can't be blank")
      end
    end
  end
end
