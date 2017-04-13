require '../lib/fighter'


RSpec.describe Fighter do

# #Test one (see example of what it would look like on fighter.rb)	
#   it '.new creates a new fighter' do
#     expect(Fighter.new(name: "Roman Gonzalez", health: 100, power: 30)).to be_an_instance_of Fighter
#   end

# #Test two (see example of what it would look like on fighter.rb)
#   it '#name returns the name of the instance Fighter' do
#   		expect(Fighter.new(name:"Roman Gonzalez", health: 100, power: 30).name).to eql("Roman Gonzalez")
#   end	

# #Test three (see example of what it would look like on fighter.rb)
#   it '#health returns the health of the instance Fighter' do
#   		expect(Fighter.new(name: "Roman Gonzalez", health: 100, power: 30).health).to eql(100)
#   end	
# #Test four (see example of what it would look like on fighter.rb)
#   it '#power returns the power of the instance Fighter' do
#   		expect(Fighter.new(name: "Roman Gonzalez", health: 100, power: 30).power).to eql(30)
#   end	

#'let' allows us to set up the instance variable once, and call it throughout our tests.
let(:fighter1){Fighter.new(name: "Roman Gonzalez", health: 100, power: 30)}
let(:fighter2){Fighter.new(name: "Herman Gonzalez", health: 100, power: 30)}

#refractored test 1
	it '.new creates a new fighter' do
    expect(fighter1).to be_an_instance_of Fighter
  end

#refractored test 2
  it '#name returns the name of the instance Fighter' do
  		expect(fighter1.name).to eql("Roman Gonzalez")
  end	

#refractored test 3
  it '#health returns the health of the instance Fighter' do
  		expect(fighter1.health).to eql(100)
  end	

  it '#power returns the power of the instance Fighter' do
  		expect(fighter1.power).to eql(30)
  end	

  it '#attacks another fighter' do
    fighter1.attack(fighter2)
    expect(fighter2.health).to eql(130)
  end

end

