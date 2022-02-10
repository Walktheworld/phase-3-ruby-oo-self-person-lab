# your code goes here
require "pry"

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name= name
        @bank_account= 25
        @happiness= 8
        @hygiene= 8

    end
    
    def happiness=(num)
        @happiness= if num > 10
                        10
                    elsif num < 0
                        0
                    else
                     num
                    end
    end

    def hygiene=(num)
        @hygiene=   if num > 10
                        10
                    elsif num < 0
                         0
                     else
                         num
                    end
    end

    def happy?
        if self.happiness >7
            true
        else false
        end
    end

    def clean?
        if self.hygiene >7
            true
        else false
        end
    end

    def get_paid(num)
        self.bank_account += num
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end


end