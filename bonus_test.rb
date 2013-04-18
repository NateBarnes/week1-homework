$:.unshift File.join(File.dirname(__FILE__))
require "minitest/autorun"
require "blog.rb"

class HomeworkTest < MiniTest::Unit::TestCase
  def setup
    @blog = Blog.new
  end

  def test_bonus
    @blog.add_post "Content1", "Author1"
    @blog.add_post "Content2", "Author1"
    @blog.add_post "Content3", "Author2"
    assert_equal @blog.authors, ["Author1", "Author2"]
  end
end

