require 'minitest/autorun'
require_relative '7-2'

class TestHierarchy < Minitest::Test

  def test_word_hierarchy
    word_obj = Word.new("Пример")
    assert_instance_of(Word, word_obj)
  end

  def test_digit_word_hierarchy
    digit_word_obj = DigitWord.new("Кот")
    assert_instance_of(DigitWord, digit_word_obj)
    assert_instance_of(Word, digit_word_obj) 
  end
  
  def test_word_instance
    word = Word.new('hello')
    assert_kind_of Word, word
  end
  
  def test_digit_word_instance
    digit_word = DigitWord.new('world')
    assert_kind_of Word, digit_word
    assert_kind_of DigitWord, digit_word
  end
end