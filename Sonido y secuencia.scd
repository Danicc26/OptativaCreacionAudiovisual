// Creación audiovisual con lenguajes de programación sesión 3

// prendemos supercollider
s.boot;

// apagamos supercollider
s.quit;

// medidores
s.meter;
s.scope;
s.freqscope;

// SynthDef
(
SynthDef(\misinte, {|frec=440, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([0,1,0],[0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);


// Llamar a un SynthDef
a=Synth(\misinte,[\frec, rrand(800,520,443,754,212,856,972,251)]);

// liberar un Synth
a.free;

// ayuda de SynthDef
SynthDef.help;

// Envolventes
Env.help;
Env.new([0,1,0.5,0.5,0],[0.1,0.1,0.1,0.5]).plot;
.plot
.perc
.asr

EnvGen.kr

EnvGen.kr

// Pdef o definicón de patrón
Pattern.help;
Pbind.help;
Pdef.help;

(
Pdef(\sec,
	Pbind(\instrument, \misinte,
		\dur, Pseq([0.35, 0.90, 0.70,
			0.26,0.88,0.43,0.55,0.23,0.50,0.96,0.43,0.54,0.66,0.76], inf),
		\frec, Pseq([200, 660, 100,477,120,852,632,137,299,570,330,275,643],inf),
		\amp, 1
	)

).play;
)













