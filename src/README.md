# St. Dia

ST-DIA stands for [[SmallTalk]]- Do It Again. But for now I'm pronouncing it "Saint Dia". 

## Why 
Some tasks need to be done _on_ a specific day at a specific time. We call those "*appointments*."
Some things need to be done _by_ a specific time. I call these "*due dates*". 

Some things need to be done on a specific *interval*, we don't need to be too precise within that interval. Consider the following:

- If you have a dog you have to feed them every day. Some dogs turn this into an _appointment_. They have to be fed at 9:00am every morning. Some dogs are less habituated to a specific time; as long as you feed them between, say, 7:00 AM and 8:00 AM they're fine. So you could say "I'll feed my dog once every 24 hour period". But it doesn't make sense to feed your dog at midnight, and then again at 12:30AM, even though _technically_ that fits the pattern. We can define a more sensible _interval_ based pattern. In this case, the interval is "roughly 24 hours, give or take an hour".
- Some breeds of snake only need to eat once every two weeks. Defining this on the calendar doesn't make sense, feeding your snake on the 13th of the month and the 15th of the month isn't sensible. If you feed them on the 1st of the month, they're good if they get fed again sometime around the 14th. So this interval is "roughly every fortnight, give or take two days." Furthermore, if we feed our snake on the 16th, we want to start our _new_ interval using the 16th as the base, so the new window is "somewhere between the 30th and the 2nd of next month", instead of "somewhere between the 26th and the 30th". 

None of this is too surprising to humans. We get it. But it's surprisingly hard to get most task managers to get it. 

Incidentally most "due date" tasks are also open to this kind of management. If you have a bill that falls due on the 14th, you can usually pay it a few days early, but it has a hard cut-off date. 

So to recap, there are three kinds of events that we're keeping track of. Events that have a very specific setting in time, which we'll call _appointments_. Events that can be handled early, but not late, which we'll call _due dates_, and events which can happen in a hazily defined period, which we'll call _intervals._

St. Dia's goal is to manage all of them, and teach me a little [[SmallTalk]] in the process. When you use St. Dia you should be able to get a sense of what recurring events need your attention soonest, which ones are due now, which ones are amenable to being finished early, and which ones are late.

## Design Goals

The first goal is to handle _intervals_ correctly, because nothing I use does. Second comes _due dates_, because they can be handled better; they can and should come into "view" a few days before the date, and that "in view" time should be definable. 

We need a way to represent this kind of event. 
### Minimum Product/First Milestone
The first goal is to present the user with an interactive box that lets them choose answers from drop downs. So they could say "this is an appointment" and the form would populate with a way to choose a date and time. If they said it was an interval we would populate it with an interval specification "every X [time units]" and a place for a leeway specification. A due date gets a way to specify a date and the lead time. When the user looks at their list of events they should see each one that is currently in view for the current date. 
This milestone should also ensure our architecture is designed correctly before we start iterating on the UI portion of the application. 

### Second Milestone
The second goal is to do some NLP so that the user can simply enter a sentence like "Feed the sand boa every fourteen days, give or take two days" and have the system populate the fields appropriately.

## Architecture

## Specifications
### Sample Events
#### Interval
- **Title**: Feed the sand boa
- **Every**: 14 days
- **Leeway**: give or take two days
#### Due Date
* **Title**: Pay the water bill
* **By**: the 1st of each month
* **Lead Time**: 7 days before
#### Appointment
**Title**: Meet with Bob
**On**: the 2nd of Jan, 20XX. 
**Leeway**: nil

### Interval Specification
An Interval is defined in a phrase such as "Feed the sand boa every 14 days give or take two days." When the event occurs the date for the next occurrence is calculated off of the previous one. There is no firm attachment to the calendar beyond the range in which the current iteration is "in view". If you complete the "feed the sand boa" event on the first, it won't enter view until the 12th, and no future occurrences will be scheduled until this one is marked complete. If you mark it complete on the 16th, the next occurrence won't enter view until the 28th. 

### Due Date Specification
A Due Date is defined in a phrase such as "Pay the water bill on or before the first." A due date will be assumed to be tied to a calendar date. If something happens twice a month it could be defined as "pay the water bill on or before the first and twenty-first of the month". Due dates do not change based on the completion of the previous occurrence. 

### Appointment Specification
An Appointment is defined in a phrase such as "Meet with Bob on the 7th at 4:30 PM." It should be in view during the current calendar day, and viewable on a longer-term calendar when we get around to implementing such a feature. 
