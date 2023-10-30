require 'minitest/autorun'
require_relative '5-3' 

class MyProgramTest < MiniTest::Unit::TestCase
  def test_random
    russian_alphabet = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя '
    result = ''
    rand(0..15).times do
        random_index = rand(0..31) # Индексы от 0 до 31 для русских букв
    result << russian_alphabet[random_index]
    end
    assert_equal count_characters(result), count_characters(result)
  end
  def test_known
    line='еее, меня зовут Иван, и я хочу домой'
    myhash={е: 4, т: 1, ',': 2, м: 2, н: 2, я: 2, з: 1, о: 4, у: 2, И: 1, а: 1, х: 1, ч: 1, д: 1, й: 1}
  end
end