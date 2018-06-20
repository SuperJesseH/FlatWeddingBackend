jesse = User.create([{first_name: 'Jesse', last_name: 'Horwitz', street: 'Bakers Street'}])
alec = User.create([{first_name: 'Alec', last_name: 'Horwitz', street: 'Bakers Street'}])
bob = User.create([{first_name: 'Bob', last_name: 'Horwitz', street: 'Bakers Street', username: "BobHorwitz"}])


first = Post.create([{name: 'first', body: 'hyyyeeee', user_id:1}])
second = Post.create([{name: 'second', body: 'hyyyeeeeoooo', user_id:2}])
third = Post.create([{name: 'third', body: 'hyyyeeeeaaaahhh', user_id:3}])


event1 = Event.create([{name: 'eventone', user_id:1}])
event2 = Event.create([{name: 'eventtwo', user_id:2}])
event3 = Event.create([{name: 'eventthree', user_id:3}])
