
(
Pdef(\sec11,
	Pbind(\instrument, \saw,
	\dur, 0.25,
	\amp, Pseq([0.25,0.25,0.5,0.5,0.25,0.25,0.5],inf),
		\out, 15
)).stop
);

(
Pdef(\Piano, Ppar([
	Pbind(\instrument, \tri,
		\dur, 1/8,
\amp, Pseq([0.5, 0, 0.5, 0.5, 0, 0.5, 0.5, 0, 0.5, 0, 0.5, 0.5, 0.5, 0.5, 0, 0.5],inf),
	),
	Pbind(\instrument, \sine,
		\dur, 1/8,
\amp, Pseq([0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0, 0],inf),
	)
])).stop
)

(
Pdef(\sec2,
	Pbind(\instrument, \pulse,
	\dur, 1/8,
	\amp, Pseq([0.01, 0.02, 0.15, 0.01, 0.03, 0.02, 0.15, 0.01],inf),
		\out, 15
)).stop
);

(
Pdef(\bateria, Ppar([
	Pbind(\instrument, \wnoise,
		\dur, 1/2,
\amp, Pseq([0.5, 0, 0.5, 0.5, 0, 0.5, 0.5, 0, 0.5,],inf),
	),
	Pbind(\instrument, \sine,
		\dur, 1/2,
\amp, Pseq([0.5, 0, 0, 0, 0.5, 0, 0, 0, 0.5, 0, 0,],inf),
	)
])).play
)

s.quit