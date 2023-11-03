require 'minitest/autorun'
require_relative '7-1'

class TestFileHandling < Minitest::Test

  def test_foo_with_nonexistent_file
    result = foo("nonexistent_file.txt")
    assert_equal [-1, "Файл не существует"], result  # Ожидаем, что функция вернет [0, "Файл не существует"]
  end

end
