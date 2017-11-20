local M = {}


local events = {
	{
		image = "portrait1",
		message = "North Korea missile launch",
		tweets = {
			{
				message = "Being nice to Rocket Man hasn't worked in 25 years, why would it work now? Clinton failed, Bush failed, and Obama failed. I won't fail.",
				values = { -1, 1, 0, -1 },
			},
			{
				message = "Let's try the diplomatic way first.",
				values = { 0, -1, 1, 0 },
			}
		},
	},
}



function M.new_game()
	local ev = {}
	for i=1,#events do
		ev[math.random(1,#events)] = events[i]
	end
	return ev
end


return M