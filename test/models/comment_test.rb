require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(body: 'Title Example', user_id:1, post_id:1)
  end

  test 'should be valid' do
    assert @comment.valid?
  end

  test 'body should be present' do
    @post.body = '    '
    assert_not @comment.valid?
  end

  test 'user id should be present' do
    @post.body = '    '
    assert_not @comment.valid?
  end

  test 'post id should be present' do
    @post.body = '    '
    assert_not @comment.valid?
  end
end
