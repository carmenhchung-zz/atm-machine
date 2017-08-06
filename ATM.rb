# Greet the user
puts "Hello. Thank you for using the Carme Bank ATM."

# Set balance to be $100 at the start of the programme
@balance = 100
run = 1

# Method to show the account balance
def accountbalance
		puts "Your account balance is #{@balance}."
		run = 1
end

# Method to allow the user to enter an amount to withdraw
def withdraw
		puts "How much would you like to withdraw?"
		@withdrawal = gets.chomp.to_i

		loop do
				if @withdrawal > @balance
						puts "You do not have sufficient funds in your account. Please enter a smaller amount."
						@withdrawal = gets.chomp.to_i

				elsif @withdrawal <= @balance
						puts "Please press y to confirm that you would like to withdraw #{@withdrawal} dollars; otherwise enter n."
						@yorn = gets.chomp.downcase

						if @yorn == "n"
								withdraw

						elsif @yorn == "y"
								@balance = @balance - @withdrawal
								puts "You have withdrawn #{@withdrawal} dollars. Your current account balance is #{@balance}."
								run = 1
								break
						end
				end
		end
end

# Method to allow the user to enter an amount to deposit
def deposit
		puts "How much would you like to deposit?"
		@depositamount = gets.chomp.to_i
		puts "Please press y to confirm that you are depositing #{@depositamount} dollars into your account; otherwise press n."
		@yorn2 = gets.chomp.downcase

		if @yorn2 == "n"
				deposit

		elsif @yorn2 == "y"
				@balance = @balance + @depositamount
				puts "You have deposited #{@depositamount} dollars into your account. Your current balance is #{@balance}."
				run = 1
		end
end

# Method to allow the user to exit the programme
def stop
		puts "Please press y to exit, otherwise press n."
		@option = gets.chomp.downcase

		if @option == "n"
				run = 1

		elsif @option == "y"
				exit
		end
end

# Looped menu so that the user can choose to view their account balance, withdraw money, deposit money, and exit the programme. Does not yet allow them to do this at any time.

while run == 1
		loop do
				puts "Press A for your account balance, W for withdrawal, D for deposit, and E for exit at any time."
				menu = gets.chomp.downcase

				break if
				case menu
				when "a"
						accountbalance
				when "w"
						withdraw
				when "d"
						deposit
				when "e"
						stop
				end
		end
end
