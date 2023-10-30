return {
	s(
		{
			trig = "#!",
			decr = "Shebang",
		},
		fmta(
			[[ 
        #!/usr/bin/env <>

        <>
      ]],
			{
				i(1, "interpretator"),
				i(0),
			}
		)
	),
}
