require "minitest/autorun"
require "./blog.rb"

class HomeworkTest < MiniTest::Unit::TestCase
  def setup
    @blog = Blog.new
  end

  def test_total_posts
    @blog.add_post "Content1", "Author"
    @blog.add_post "Content2", "Author"
    assert_equal @blog.total_posts, 2
  end

  def test_authors
    @blog.add_post "Content1", "Author1"
    @blog.add_post "Content2", "Author2"
    assert_equal @blog.authors, ["Author1", "Author2"]
  end

  def test_posts
    @blog.add_post "Content1", "Author"
    @blog.add_post "Content2", "Author"
    assert_equal @blog.posts, ["Content1", "Content2"]
  end
end

