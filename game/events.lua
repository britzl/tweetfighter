local M = {}


local events = {
	{
		image = { "portrait1" },
		messenger = { "Col. Dwayne Ronson", "Col. Sanders" },
		message = {
			"Sir, Pyongyang just launched a long-distance nucular missile test. What is your response?",
			"Mr. President, Pyongyang just launched another long-distance nucular missile test. How should we respond?",
		},
		tweets = {
			{
				message = {
					"One more from Rocket man, and we will bring down #FIRE and #FURY on Sou... North Korea!! #MURICA #eagle",
					"Being nice to Rocket Man hasn't worked in 25 years, why would it work now? Clinton failed, Bush failed, and Obama failed. I won't fail.",
				},
				values = { -1, 1, -1, -1 },
			},
			{
				message = {
					"SAD! We want a PEACEFUL solution, so I'm sending my TOP diplomats (you know who you are) to fix the issue. #weshallovercome",
					"China is sending an Envoy and Delegation to North Korea - A big move, we'll see what happens!",
				},
				values = { 1, -1, 0, 0 },
			}
		},
	},
	{
		image = { "portrait1" },
		messenger = { "Press secretary" },
		message = {
			"The GOP has proposed a bill to stop gay marriage, what's your stance on the question?",
		},
		tweets = {
			{
				message = {
					"The Earth was made for Adam and Eve, NOT Adam and #Steve!",
					"Maybe Shulman is having an affair with someone in the White House. He looks a little gay.",
				},
				values = { 0, 1, 0, 0 },
			},
			{
				message = {
					"I have several gay friends, SOME of who are VERY good people. They should get married!",
				},
				values = { 0, -1, 1, 0 },
			}
		},
	},
	{
		image = { "portrait1" },
		messenger = { "Senator Ted Cruz" },
		message = {
			"Trump & Rubio are w/Obama on gay marriage",
		},
		tweets = {
			{
				message = {
					"Cruz is the worst liar, crazy or very dishonest. Perhaps all 3?",
				},
				values = { 0, 1, 0, 0 },
			},
			{
				message = {
					"If Ted Cruz is so opposed to gay marriage, why did he accept money from people who espouse gay marriage?",
				},
				values = { 0, -1, 1, 0 },
			}
		},
	},
}



function M.new_game()
	local ev = {}
	for i=1,#events do
		ev[i] = events[i]
	end
	for i=1,#ev do
		local a = math.random(1, #ev)
		local b = math.random(1, #ev)
		ev[a], ev[b] = ev[b], ev[a]
	end
	return ev
end


return M