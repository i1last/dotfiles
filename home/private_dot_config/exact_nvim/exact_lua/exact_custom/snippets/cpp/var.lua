return {
	s(
		{
			trig = "([^%a])ivar",
			dscr = "<type> var = 0; std::cin >> var;",
			snippetType = "autosnippet",
			regTrig = true,
			wordTrig = false,
		},
		fmt(
			[[
        {}{} {} = 0;
         std::cin >> {};
      ]],
			{
				f(function(_, snip) return snip.captures[1] end),
				i(1),
        i(2),
        rep(2),
			}
		)
	),
}
