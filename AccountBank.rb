class User
    attr_reader :accounts
    def initialize(name, accounts)
        @name = name
        valid_accounts(accounts)
    end

    def valid_accounts(accounts)
        if accounts.class != Array || accounts.empty?
            raise "\nDebes ingresar una cuenta válida\nIngresaste: #{accounts}"
        else
            @accounts = accounts
        end
    end

    def total_balance
        self.accounts.map {|a| a.balance}.sum
    end
end

class BankAccount
    attr_accessor :balance
    attr_reader :bank_name, :account
    def initialize(bank_name, account, balance = 0)
        @bank_name = bank_name
        @account = account
        @balance = balance
    end

    def transfer(account2, balance2)
        self.balance -= self.balance
        account2.balance += balance2
    end
    def to_s
        self.balance
    end
end

account1 = BankAccount.new('Santander', 'Ahorro', 5000)
account2 = BankAccount.new('Santander', 'Corriente', 5000)
account1.transfer(account2, 5000)

user = User.new('juan', [account1, account2])

puts "Banco: #{account1.bank_name}, Cta: #{account1.account}, Saldo: #{account1.to_s}"
puts "Banco: #{account2.bank_name}, Cta: #{account2.account}, Saldo: #{account2.to_s}"
puts "El saldo del usuario es: #{user.total_balance}"