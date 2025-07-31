module ETL
  def self.transform(scores)
    transformed_scores = {}

    scores.each_pair do |score, letters|
      letters.each do |letter|
        transformed_scores[letter.downcase] = score
      end
    end

    transformed_scores
  end
end
