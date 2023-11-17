return {
	s(
		{
			trig = "([^%a])cin",
			dscr = "std::cin >> ;",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        {}std::cin >> {};
         {}
      ]],
			{
				f(function(_, snip)
					return snip.captures[1]
				end),
				i(1),
				i(0),
			}
		)
	),
	s(
		{
			trig = "([^%a])cout",
			dscr = 'std::cout << % << "\n";',
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        {}std::cout << {} << "\n";
         {}
      ]],
			{
				f(function(_, snip)
					return snip.captures[1]
				end),
				i(1),
				i(0),
			}
		)
	),
}
