---
title: "Behavioural Interviews"
created: 2024-06-24
modified: 2024-07-25
---

# Behavioural Interviews

## Background Study (Reconnaissance)

Similar to the [[Phone Interview|Phone Interview]], you need to study the company first to get a sense of what it is like to work at the company:

1. Go through the website to get a sense of **values and culture**.
2. Familiarise yourself with the **lingo** that the company uses to describe the product, the team and culture;
3. Review the social media, LinkedIn profiles, and job description;

Questions you can ask yourself about the company: [[Getting to Know the Company and the Role]]

## Experience Bank

1. **Situation**: describe the circumstance;
2. **Task**: explain the task/assignment/issue;
3. **Action**: walkthrough the actions you have taken;
4. **Results**: summarise the results;
5. **Takeaways**: end with something positive;

---
- *Give me an example of a time you <mark style="background: #FF5582A6;">did something wrong</mark>. How did you handle it?/Times when you got surprised by something or had <mark style="background: #FF5582A6;">overlooked</mark> something*
	1. **Situation**: made wrong assumption about the proto based on one issue (over generalisation)
	2. **Task**: confirm the issue and fix it;
	3. **Action**: went over the entire codebase, found all the references and corrected them; added test to confirm the changes were correct and working properly;
	4. **Results**: the problem was solved within two days and I created more unit tests to prevent future regression;
	5. **Takeaways**: err on over communication wrt. assumptions; even with conventions;
---
- *Times when you felt a huge sense of <mark style="background: #FFB86CA6;">accomplishment or success</mark>/What was the last project you led, and what was its outcome/Give me an example of a time that you felt you went <mark style="background: #FFB86CA6;">above and beyond</mark> at work*
	- Cleaned the data when no one else would
		1. **Situation**: a dataset has been used for couple of years but no one was aware of the noise and willing to fix them;
		2. **Task**: investigate the issues with the data (400 docs), trace their origins and fix the issues if possible;
		3. **Action**: build heuristic & manual search based data verification pipeline;
		4. **Results**: dozens of issues were identified and were able to identify the origin of 85% of the documents
		5. **Takeaways**: not to be afraid of getting hands dirty with data, data quality can help us understand model behaviour better especially when it made mistakes.
	- Deployed the product in production and satisfied all requirements
		1. **Situation**: had been developing the anonymisation pipeline for 8 months;
		2. **Task**: To deploy the pipeline in production;
		3. **Action**: successfully deployed it in production before the deadline with all requirements met.
		4. **Results**: the pipeline satisfied all performance requirements and could handle more than 100k documents per day;
		5. **Takeaways**: carefully planning with the team and PMs could ensure a smooth deployment schedule.
---
- *Times when you <mark style="background: #BBFABBA6;">fixed something</mark> that wasn’t working/Times when you removed barriers or came up with a <mark style="background: #BBFABBA6;">creative solution</mark>*
	1. **Situation**: the loggings from DBX were not visible to us and the backend team quoted us a month before they could look into that;
	2. **Task**: To find a solution to see and query the logs;
	3. **Action**: dumped the logs into blob storage and created another data pipeline to process them into structured data and saved them into a table in DBX.
	4. **Results**: the pipeline enabled us to investigate issues with production pipelines in more details and more promptly;
	5. **Takeaways**: Treating logs as data can open up different perspectives and solutions.
---
- *A time when you had to make a <mark style="background: #D2B3FFA6;">challenging decision</mark>*/Give me an example of a <mark style="background: #D2B3FFA6;">difficult decision</mark> you had to make. How did you come to that decision?
	1. **Situation**: A team member identified a throughput bottleneck with the hashing algorithm I chose;
	2. **Task**: The hashing algorithm safeguards the customer sensitive information we store, but it takes some time to compute.
	3. **Action**: I made the decision not to change the hashing algorithm and instructed the teammate to prioritise other lesser bottlenecks instead first;
	4. **Results**: He was still able to improve the overall throughput and reduce the latency without changing the hashing algorithm;
	5. **Takeaways**: Customer trust first even when it means we might be slow processing data; Finding alternatives can also achieve the same goal.
---
- A time when you had to <mark style="background: #BBFABBA6;">influence</mark> a leader or team
	- pushed back on support request
	1. **Situation**: There were many teams using different tools for PDF parsing and it created a lot of friction between teams when they were trying to integrate each other's service, but the input and output were mismatched;
	2. **Task**: I wanted to create a universal benchmark for text extraction and persuade all teams to adopt the same/best solution;
	3. **Action**: After consulting with my manager, I set out to survey all existing solutions we were using and created a benchmark with the best commercial solution I could find and concluded the ranking of different tools and made recommendation to all other teams.
	4. **Results**: We made the switch to the tool I recommended as the central backend service in early 2024.
	5. **Takeaways**: Standardising workflow isn't the shiniest thing, but it brings much developer happiness;
---
- A time when you <mark style="background: #FF5582A6;">failed but learned</mark>
	- layout analysis/semantic search engine
		1. **Situation**: Existing extractions were restricted to certain predefined categories;
		2. **Task**: to build a semantic search engine for single documents to allow more flexibility in extractions;
		3. **Action**: I built a MVP and demoed to the director but they ended up not adopting it
		4. **Results**: I learned a lot about building targeted semantic search product and model deployment. It helped me with later projects;
		5. **Takeaways**: As long as I could learn something from it for future success, it is a small success.
---
- A time when you had to <mark style="background: #FF5582A6;">defuse​ an escalating situation</mark>/Tell me about a time when you had to <mark style="background: #FF5582A6;">deal with conflict</mark> on the job
	1. **Situation**: PM insisted I follow the PRD to the teeth wrt. to one requirement yet it was not technically possible; We had a heated conversation during a team meeting and it was left unresolved;
	3. **Action**: I confirmed with our data consumer that such requirements were not necessary and made sure we agreed on the depth we needed to go to.
	4. **Results**: We moved forward with a clearer requirement that all stakeholders agreed.
	5. **Takeaways**: Make sure to confirm all quantitative and qualitative descriptors.
---
- Tell me about a time when you had to give someone difficult feedback. How did you handle it?
	- junior dev + solution
---
- What was the most <mark style="background: #FF5582A6;">difficult period</mark> in your life, and how did you deal with it?/What assignment was too difficult for you, and how did you resolve the issue?
	- relocation + multiple hats
---
- Was there <mark style="background: #ADCCFFA6;">a person in your career</mark> who really made a difference? In what way?
	- whenever assigning a task, he would make sure I was willing to contribute and had the right resources;
	- he was active in all our planning sessions and provided logics/reasons why he would prioritise something over others;
	- in our 1:1 meetings, he would point out what I need to grow into a senior role (more conversations with cross team stakeholders)
	- he taught me passion and empathy in leadership; we are still connected outside work;
---
- Where do you see yourself in x amount of years?

> 	In five years, I see myself having grown both professionally and personally within my chosen field of machine learning. By then, I aim to have advanced into a Senior/Lead position, where I will be leading cross-functional teams in developing innovative campaigns that drive business growth and success for our clients.

- What are your weaknesses?

> My journey in developing my professional skills has led me to identify certain aspects where I see opportunities for continued personal and career growth. At the moment it is trust, which includes both building it with colleagues as well as delegating responsibilities appropriately.
>
> In terms of improving my ability to delegate tasks effectively and foster a culture of trust within teams, I have been focusing on several strategies: 1) Strengthening communication with team members about their strengths, weaknesses, and preferences for assignments; this ensures that the right person is assigned appropriate responsibilities.
>
> Increasing transparency in decision-making processes to build trust among peers by clearly explaining my rationale behind certain decisions or delegation choices.

## Hypotheticals

---
- Your team is giving a presentation in two hours and one member just called in sick. What do you do?
	- How long do they need? Are they alright?
	- Ask for any documentation/material that they might have for the presentation.
	- For their part, can someone on the team cover their part? If not, can I do that?
	- Plan accordingly for their absence.
	- Allocate enough people for critical projects considering the bus factor
---
- If you had to choose between a work environment that was always in chaos and one in which nothing ever changed, which would you choose?
	- I would like to know the root causes first before making a choice;
	- If chaos is coming from management above my pay grade, then there is little I can do to push for stability; But I can encourage my teammates or manager by setting examples for them to spark the change;
	- If the chaos is coming from my teammates or managers being whimsical, I would talk to my manager or skip manager for directions; I should also push back ideas or projects when manager does not help me understand the value proposition or motivation behind it.
---
- If you inherited so much money that you never had to work again, how would you spend your time?
	- Earning money should be the only focus of work. It could be part of your identity and interest. If your work can be meaningfully translate to impact on other people's life, such feeling of fulfilment is not something you can buy with a price tag;
---
- If you could create a fictional company to make the world a better place, what would that company do?
	- Launching garbage into the sun or planting trees all over the world focusing on reforestation in deserts;
	- Health care and education support for underdeveloped countries or areas;
	- Funding for curing diseases;
---
- Imagine that you are the product manager for a consumer device that just launched, but 20% of the devices are breaking in the first week from normal use. What do you do?
	- Investigate the root cause; Is it a design flaw or something unclear from our manual?
	- Find a solution for the issue; Test the fix first with a small customer group;
	- If it is a hardware issue, do a free replacement; Otherwise, send updated manual to the customers via email or on social media;
- Describe how you would handle a situation if you were required to finish multiple tasks by the end of the day, and there was no conceivable way that you could finish them.
	- Prioritise and communicate.