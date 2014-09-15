describe PalindromeFinder do

  # simple
  let(:simple_letter_palindrome)  {PalindromeFinder.new("racecar")}
  let(:simple_mirror_palindrome)  {PalindromeFinder.new("hannah")}

  # none
  let(:no_palindrome)             {PalindromeFinder.new("erisrekl")}
  let(:empty_string)              {PalindromeFinder.new("")}
  let(:too_short_for_palindrome)  {PalindromeFinder.new("a")}

  # complex
  let(:complex_letter_palindrome) {PalindromeFinder.new("erisracecarrekl")}
  let(:complex_mirror_palindrome) {PalindromeFinder.new("acecarrehannahkl")}

  describe '#get_longest_palindrome' do

    it 'finds a palindrome mirrored around a letter' do
      expect(simple_letter_palindrome.get_longest_palindrome).to eq("racecar")
    end

    it 'finds a palindrome mirrored around the space between two letters' do
      expect(simple_mirror_palindrome.get_longest_palindrome).to eq("hannah")
    end

    it "returns 'no palindromes found' when imput contains no palindrome" do
      expect(no_palindrome.get_longest_palindrome).to eq("no palindromes found")
    end

    it "returns 'no palindromes found' when imput is an empty string" do
      expect(empty_string.get_longest_palindrome).to eq("no palindromes found")
    end

    it "returns 'no palindromes found' when imput is only one letter" do
      expect(too_short_for_palindrome.get_longest_palindrome).to eq("no palindromes found")
    end

    it "returns the longest palindrome in a string when the string contains multiple palindromes" do
      expect(complex_letter_palindrome.get_longest_palindrome).to eq("racecar")
    end

    it "returns the longest palindrome in a string when the string contains multiple palindromes" do
      expect(complex_mirror_palindrome.get_longest_palindrome).to eq("hannah")
    end  

  end

end
