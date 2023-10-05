class Person
  def initialize(id, age:, name: 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id,
  attr_accessor :name, :age

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(1, name: 'Fatuma', age: 24)
puts person.name
puts person.age
puts person.can_use_services?
