class Person
    # a new person is instantiated with a name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # returns the name the person was initialized with
    # returns the name the person was initialized with

    def name
        @name
    end

    # a new person instance is initialized with a bank_account balance of $25

    def some_new_name
        @name
    end

    # allows a person to change their happiness
    # does not allow a person to change their happiness above 10
    # does not allow a person to change their happiness below 0
    
    def happiness=(point) 
        @happiness = point
        if @happiness > 10 
           @happiness = 10 
        elsif @happiness < 0 
           @happiness = 0 
        end 
    end

		# allows a person to change their hygiene
    # does not allow a person to change their hygiene above 10
    # does not allow a person to change their hygiene below 0

    def hygiene=(point) 
        @hygiene = point 
        if @hygiene > 10 
           return @hygiene = 10 
        elsif @hygiene < 0 
           return @hygiene = 0 
        end 
    end 

		# returns true if happiness is greater than seven, else false
    # returns false if happiness is not greater than seven

    def happy?
			if @happiness > 7
					true
				else false
			end
    end

		# returns true if hygiene is greater than seven
    # returns false if hygiene is not greater than seven

		def clean?
			if @hygiene > 7
				true
				else false
			end
		end

		# accepts an argument of amount
    # increments bank_account by the amount
    # returns "all about the benjamins"

		def get_paid(amount)
			@bank_account += amount
			return "all about the benjamins"
		end

		# makes the person cleaner by 4 points
		# returns a song
		# can't make a person cleaner by 10 points (hint: use the custom #hygiene= method)
		# calls on the #hygiene= method to increment hygiene

		def take_bath
			self.hygiene = @hygiene + 4
			return '♪ Rub-a-dub just relaxing in the tub ♫'
		end

		def work_out
			self.hygiene = @hygiene - 3
			self.happiness = @happiness + 2
			return '♪ another one bites the dust ♫'
		end

		def call_friend(friend)
			self.happiness = @happiness + 3
			friend.happiness = friend.happiness + 3
			return "Hi #{friend.name}! It's #{self.name}. How are you?"
		end

		def start_conversation(friend, topic)
			if topic == "politics"
				self.happiness= @happiness - 2
				friend.happiness= friend.happiness - 2
				return 'blah blah partisan blah lobbyist'
			elsif topic == "weather"
				self.happiness= @happiness + 1
				friend.happiness= friend.happiness + 1
				return 'blah blah sun blah rain'
			else 
				return 'blah blah blah blah blah'
			end
		end

end

