puts "Welcome young grasshopper. Do your best to answer Master Ummon, and you could be saved from a life of soul crushing poverty and back breaking work."
ummon_koans = [
{question: "What is the Dharma Kaya?",
correct_answer:	"The Six Ungraspables"},

{question: "What is the pure Dharmakaya?",
correct_answer: "The flowering hedge"},

{question: "What will happen when the leaves fall and the trees become bare?",
correct_answer: "Golden Wind"},

{question: "What is the teaching given by Gautama Buddha during his lifetime?",
correct_answer: "The teaching confronts each"},

{question: "What would the Shakyamuni Buddha have said if there were no one to hear and no occasion to teach?",
correct_answer: "The opposite of statement"},

{question: "If you do not see a man for three days, do not think he is the same man. How about you?",
correct_answer:	"One thousand"},

{question: "What is the kind of talk that transcends Buddhas and Patriarchs?",
correct_answer:	"Rice cake!"},

{question: "What is Ummon's melody?",
correct_answer:	"The twenty-fifth of December!"},

{question: "What is this place where knowledge is useless?",
correct_answer:	"Knowledge and emotion cannot fathom it"},

{
question: "How insane is eastern philosphy?",
correct_answer:	"Completely insane"}
]
answer = 0
score = 0
ummon_koans.each_with_index do |loop_variable,index|
	index += 1
	print "#{index}. "
	puts loop_variable [:question]

	answer = gets.chomp
	if answer == loop_variable [:correct_answer]
		score += 1
	else 
		score + 0
	end
end

if score>4
	puts "Congratulations you scored a #{score*10}%. You are on your way to life of celibacy and mediation as a monk."
else 
	puts "You scored a #{score*10}%. Sorry friend. You're on your way to a life of arduous labor and miserable poverty in the rice fields. Better luck next life!"
end

