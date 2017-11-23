local M = {}


local intro_events = {
	{
		messenger_type = "CIVILIAN",
		messenger = { "Advisor" },
		message = {
			"Sir! As per your request, we've arranged so that the only communication you have with the world is through your Twitter feed. What do you think?",
		},
		tweets = {
			{
				message = {
					"This is the BEST thing I've done! Not even Fox gets an interview!",
				},
				values = { 0, -1, 0, 0 },
			},
			{
				message = {
					"Feels GREAT to never speak to media again! Other politicians are stupid for not doing this!",
				},
				values = { 0, 0, -1, 0 },
			}
		},
	},
	{
		messenger_type = "CIVILIAN",
		messenger = { "Advisor" },
		message = {
			"Uh-oh, that made some people angry... Make sure none of your trust levels reach 0, or you'll have a hard time remaining president.",
		},
		tweets = {
			{
				message = {
					"Don't worry folks, I am the GREATEST president in American history. #Trump2020 #RocketManSucks",
				},
				values = { -1, 1, 0, 0 },
			},
			{
				message = {
					"As long as Republican don't stab my back like they did with Obamacare, it's #Trump2024 all the way!",
				},
				values = { 0, -1, -1, 0 },
			}
		},
	},
}



local events = {
	{
		messenger_type = "MILITARY",
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
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
		messenger = { "Press secretary" },
		message = {
			"Sir, Senator Ted Cruz just put out a statement: \"Trump & Rubio are w/Obama on gay marriage\"",
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
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
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
			},
			{
				message = {
					"We must have THE WALL. Mexico will pay for it!",
					"Mexico will pay for the wall - 100%! #MakeAmericaGreatAgain #ImWithYou",
				},
				values = { 0, 1, -1, 1 },
			}
	    },
	},
	{
		messenger_type = "CIVILIAN",
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
					"Obama said that 'global warming is a fact.' Sure, about as factual as 'if you like your healthcare, you can keep it.'",
				},
				values = { 1, 1, -1, 0 },
			},
			{
				message = {
					"Any and all weather events are used by the GLOBAL WARMING HOAXSTERS to justify higher taxes to save our planet! They don't believe it $$$$!",
					"This very expensive GLOBAL WARMING bullshit has got to stop",
				},
				values = { 1, 1, 0, 1 },
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
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
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
					"Maybe I'm old fashioned but I don't like seeing women playing soccer #OldSchool.",
	            },
	            values = { 0, 1, -1, 0 },
	        }
	    },
	},
	{
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
		messenger = { "Secretary of State" },
	    message = {
	        "Sir, a hurricane has hit Puerto Rico with devastating effects – what is your response?",
	    },
	    tweets = {
	        {
	            message = {
	                "Won't send funds to Puerto Rico. It's not like it was a real catastrophe – like Katrina!",
					"Do you believe @algore is blaming global warming for the hurricane? I blame him!",
					"We spend billions of dollars helping nations all over the World but with hurricane Sandy not one nation helped us!",
					"To the people of Puerto Rico: Do not believe the #FakeNews!",
					"I will be going to Puerto Rico on Tuesday with Melania to work on my tan. Will hopefully be able to stop at the U.S. Virgin Islands for drinks!",
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
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
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
		messenger_type = "CIVILIAN",
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
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Press secretary" },
	    message = {
	        "We need to send a message about the upcoming budget - what do you want to tell the press?",
	    },
	    tweets = {
	        {
	            message = {
	                "BOMBS! We need to expand our arsenal now that Tiny Little Rocket Man is more aggressive! #Bombs",
	            },
	            values = { -1, 0, 0, -1 },
	        },
	        {
	            message = {
	                "SCHOOLS! We need to educate our kids NEVER to vote for Crooked Hillary and her crooked peers!",
	            },
	            values = { 0, 1, -1, -1 },
	        }
	    },
	},
	{
	    messenger_type = { "MILITARY" },
	    messenger = { "General Carter" },
	    message = {
	        "Sir, North Korea just placed a big sign outside of Guam with the text \"We don't like you Mr. Trump\". We interpret it as a sign of aggression. What's your move?",
	    },
	    tweets = {
	        {
	            message = {
	                "I'm going to place a BIGGER sign saying \"Kim Jong UN is no FUN!\" – that'll teach them!",
	            },
	            values = { -1, 1, -1, -1 },
	        },
	        {
	            message = {
	                "When they go low, we go cry! Secretly in the Oval Office, of course",
	            },
	            values = { 1, 0, -1, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "MILITARY" },
	    messenger = { "Major Twatter" },
	    message = {
	        "Commander – Vladimir Putin released a manly video where he's hunting bears while sitting on an even bigger bear. What do you do?",
	    },
	    tweets = {
	        {
	            message = {
	                "I will release an even GREATER video, where I do an epic split from the backs of two polar bears! We can photoshop this, right?",
	            },
	            values = { 0, 1, -1, -1 },
	        },
	        {
	            message = {
	                "Evidence surfacing of Russia using BEARS in their army – I just launched the Attach Eagle Training Program first thing today! #modernarmy",
	            },
	            values = { 1, 1, -1, -1 },
	        }
	    },
	},
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Election strategist" },
	    message = {
	        "Sir, John McCain just announced he's re-running for senate. What do you say?",
	    },
	    tweets = {
	        {
	            message = {
	                "@SenJohnMcCain should be defeated in the primaries. Graduated last in his class at Annapolis--dummy!",
	            },
	            values = { 0, -1, -1, 0 },
	        },
	        {
	            message = {
	                "So great that John McCain is coming back. Brave - American hero! Thank you John.",
	            },
	            values = { 0, 0, 1, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, Sarah Palin wore a \"Make America Great Again\" hat during an appearance on The Five at Fox News. Care to comment?",
	    },
	    tweets = {
	        {
	            message = {
	                "Great to see @SarahPalinUSA back on @FoxNews. She's a wonderful woman and commentator.",
	            },
	            values = { 0, 1, 1, 0 },
	        },
	        {
	            message = {
	                "Sarah Palin was terrible on TheFive yesterday. Angry and Obnoxious, she will never make it on T.V. FoxNews can do so much better!",
	            },
	            values = { 0, -1, 0, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "MILITARY" },
	    messenger = { "General " },
	    message = {
	        "Sir, Donald Trump Jr. was just caught snapchatting with Russian officials. We believe this could be a breach of security.",
	    },
	    tweets = {
	        {
	            message = {
	                "Why is that Hillary Clintons family and Dems dealings with Russia are not looked at, but my non-dealings are? SAD!",
	            },
	            values = { 0, 1, -1, 0 },
	        },
	        {
	            message = {
	                "My son Donald openly gave his Snapchat history to the media & authorities whereas Crooked Hillary Clinton deleted (& acid washed) her 33,000 e-mails!",
	            },
	            values = { 0, 1, 1, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, Prince Akeem of Zamunda is planning a visit to New York. How do you want to greet his excellence?",
	    },
	    tweets = {
	        {
	            message = {
	                "Foreign relations with African leaders are important! I will personally see that he gets his royal bath!",
	            },
	            values = { 1, -1, 1, 0 },
	        },
	        {
	            message = {
	                "Heading off to a well-deserved 13-day Mar-a-Lago, will set up Prince Akeem in a Brooklyn apartment!",
	            },
	            values = { 0, 1, -1, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Press secretary" },
	    message = {
	        "Sir, China are taking great measures to ensure they reduce their carbon emissions by 15% by 2020. Should we retort, or de-rail completely?",
	    },
	    tweets = {
	        {
	            message = {
	                "The concept of global warming was created by and for the Chinese in order to make U.S. manufacturing non-competitive.",
	            },
	            values = { -1, 1, -1, 0 },
	        },
	        {
	            message = {
	                "Where are all the liberal environmentalists demanding the end of wind turbines to stop the slaughter of birds?",
	            },
	            values = { 1, 1, -1, 0 },
	        }
	    },
	},
	{
	    messenger_type = { "CIVILIAN" },
	    messenger = { "Press secretary" },
	    message = {
	        "Bette Midler has made remarks about your hair. I think we should take the high road here – what's your reply?",
	    },
	    tweets = {
	        {
	            message = {
	                "@BetteMidler talks about my hair but I'm not allowed to talk about her ugly face or body – so I won't. Is this a double standard?",
	            },
	            values = { 0, 1, -1, -1 },
	        },
	        {
	            message = {
	                "While @BetteMidler is an extremely unattractive woman, I refuse to say that because I always insist on being politically correct.",
	            },
	            values = { 0, -1, -1, -1 },
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
	for i=1,#intro_events do
		table.insert(ev, i, intro_events[i])
	end
	return ev
end


return M