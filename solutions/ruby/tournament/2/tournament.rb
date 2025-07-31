# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.

# Tournament module
module Tournament
  @@teams = []

  def self.tally(input)
    @@teams = []
    input.strip!

    output = <<~TALLY
      Team                           | MP |  W |  D |  L |  P
    TALLY

    matches = input.split("\n")

    unless matches.empty?
      matches.each do |match|
        record_match_details(match.split(';'))
      end
    end

    @@teams.sort! do |team1, team2|
      if team1.points > team2.points
        -1
      elsif team2.points > team1.points
        1
      else
        team1.name <=> team2.name
      end
    end

    @@teams.each do |team|
      output += team.data + "\n"
    end

    output
  end

  def self.record_match_details(match_details)
    team1 = match_details[0]
    team1_outcome = match_details[2]
    add_details_to_team(team1, team1_outcome)

    team2 = match_details[1]
    team2_outcome = complementary_outcome(team1_outcome)
    add_details_to_team(team2, team2_outcome)
  end

  def self.add_details_to_team(team_name, outcome)
    team_index = @@teams.index { |team| team.name == team_name }

    if team_index
      @@teams[team_index].add_outcome(outcome)
    else
      team = Team.new(team_name)
      team.add_outcome(outcome)
      @@teams.push(team)
    end
  end

  def self.complementary_outcome(outcome)
    case outcome
    when 'win'
      'loss'
    when 'loss'
      'win'
    else
      outcome
    end
  end
end

class Team
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @plays = 0
    @wins = 0
    @draws = 0
    @losses = 0
    @points = 0
  end

  def add_outcome(outcome)
    increment_plays

    case outcome
    when 'win'
      @wins += 1
      @points += 3
    when 'loss'
      @losses += 1
    when 'draw'
      @draws += 1
      @points += 1
    end
  end

  def increment_plays
    @plays += 1
  end

  def data
    "#{format('%-31s', @name)}|  #{@plays} |  #{@wins} |  #{@draws} |  #{@losses} |  #{@points}"
  end
end
