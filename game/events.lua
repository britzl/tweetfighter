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
	{
		image = { "portrait1" },
		messenger = { "Press secretary" },
		message = {
			"Sir, I've drawn up plans for a statue of General Robert E. Lee holding the severed head of Abraham Lincoln—do you wish to have it built in the White House Gardens?",
		},
		tweets = {
			{
				message = {
					"I'm about to get a BEAUTIFUL statue on my back yard! Amazing example of GREAT art!",
				},
				values = { 0, 1, -1, -1 },
			},
			{
				message = {
					"I've got a BEAUTIFUL DRAWING of a statue which I will keep in my drawer and NEVER show anyone!",
				},
				values = { 0, 0, 1, 1 },
			}
		},
	},
	{
	    image = { "portrait1" },
	    messenger = { "Senior Wall Engineer" },
	    message = {
	        "Sir, the plans for constructing The Wall are ready! What do you say to your followers?",
	    },
	    tweets = {
	        {
	            message = {
	                "BUILD... THAT... #WALL!!!",
	            },
	            values = { 0, 1, 0, -1 },
	        },
	        {
	            message = {
	                "The wall is VERY costly! We will build A SMALL MOAT instead!",
	            },
	            values = { 1, -1, -1, 1 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Assistant" },
	    message = {
	        "Sir, the new Al Gore movie is premiering tomorrow. What is your review?",
	    },
	    tweets = {
	        {
	            message = {
	                "Just saw SORE LOSER Al Gores FAKE movie. More like AL SNORE!",
	            },
	            values = { 1, 1, 0, 0 },
	        },
	        {
	            message = {
	                "Just saw a GREAT movie and I will STOP GLOBAL WARMING. Crying penguins and polar bears – it's just SAD!",
	            },
	            values = { -1, -1, 0, 0 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, the media wants a response on your latest comments on the drone strikes on Agrabah.",
	    },
	    tweets = {
	        {
	            message = {
	                "Despite of the constant negative press covfefe",
	            },
	            values = { 1, 1, 1, 1 },
	        },
	        {
	            message = {
	                "Despite of the constant negative press coverage",
	            },
	            values = { -1, -1, -1, -1 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "John Sanchez, party member" },
	    message = {
	        "The GOP has proposed a bill to ban women's soccer, what's your stance on the question?",
	    },
	    tweets = {
	        {
	            message = {
	                "BEAUTIFUL sport, I actually watched a game once. Entertaining! #FreeWomen",
	            },
	            values = { 0, -1, 1, 0 },
	        },
	        {
	            message = {
	                "BEAUTIFUL women, but they'd look better playing TENNIS. #BanWomensSoccer #WrongBalls",
	            },
	            values = { 0, 1, -1, 0 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, Kanye West rhymed \"Trump\" with \"Take a dump\" on his latest song. What do you say?",
	    },
	    tweets = {
	        {
	            message = {
	                "KANYE is a SAD person. Worst artist in the world!",
	            },
	            values = { -1, 1, 1, -1 },
	        },
	        {
	            message = {
	                "I love Kanye! GREAT artist, He is welcome to the White House anytime!",
	            },
	            values = { 1, -1, -1, 1 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, a hurricane has hit Puerto Rico with devastating effects – what is your response?",
	    },
	    tweets = {
	        {
	            message = {
	                "Won't send funds to Puerto Rico. It's not like it was a real catastrophe – like Katrina!",
	            },
	            values = { 0, 1, -1, 0 },
	        },
	        {
	            message = {
	                "Many people in Puerto Rico are GOOD people – I will personally travel there and hand out toilet paper.",
	            },
	            values = { 0, -1, 1, 0 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, eighty-five women have released statements claiming you have assaulted them. What do you say?",
	    },
	    tweets = {
	        {
	            message = {
	                "What happens in Vegas should stay in Vegas! #grabbedembythepussy",
	            },
	            values = { 0, 1, -1, -1 },
	        },
	        {
	            message = {
	                "I am the BIGGEST GENTLEMAN in America. This is FAKE news!",
	            },
	            values = { 0, -1, 1, 1 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "More NFL players are kneeling during the national anthem. What do you want to say to them?",
	    },
	    tweets = {
	        {
	            message = {
	                "It's UNPATRIOTIC and UNAMERICAN! Not acceptable! Fire them!",
	            },
	            values = { 0, 1, 1, 0 },
	        },
	        {
	            message = {
	                "It's an ACCEPTABLE protest, and I interpret it as a sign of SUBMISSION to me! ",
	            },
	            values = { 0, -1, -1, 0 },
	        }
	    },
	},
	{
	    image = { "portrait1" },
	    messenger = { "Press secretary" },
	    message = {
	        "Our envoy in China wants you to ease up a little on your \"Rocket Man\" tweets – it hurts our relations with China",
	    },
	    tweets = {
	        {
	            message = {
	                "ROCKET MAN and GHINA are equally bad! We have nothing to gain from them!",
	            },
	            values = { -1, 1, -1, 0 },
	        },
	        {
	            message = {
	                "GREAT Discussion with China – hope to help solve the dangerous North Korea crisis. Progress being made.",
	            },
	            values = { 1, -1, 1, 0 },
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