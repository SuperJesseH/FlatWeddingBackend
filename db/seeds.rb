
jesse = User.create([{first_name: 'Jesse', last_name: 'Horwitz', street: 'Bakers Street', username:"jesseHorwitz",  password:"password"}, {first_name: 'Alec', last_name: 'Horwitz', street: 'Bakers Street', username:"alecHorwitz",  password:"password"}, {first_name: 'Melanie', last_name: 'Reschke', street: 'Bakers Street', username:"MelanieRes",  password:"password"}])



event1 = Event.create([{name: 'Ceremony', user_id:1, start_time:'2019-04-13 [12:00:00]',
end_time:'2019-04-13 [1:00:00]' }])
event2 = Event.create([{name: 'Reception', user_id:2, start_time:'2019-04-13 [2:00:00]',
end_time:'2019-04-13 [8:00:00]'}])
event3 = Event.create([{name: 'After Party', user_id:3, start_time:'2019-04-13 [8:00:00]',
end_time:'2019-04-13 [12:00:00]'}])
