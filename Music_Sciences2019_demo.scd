//Evolving algorithms Music and Sciences 2019;
//Live Coding in SuperCollider

Ndef(\noise, { SinOsc.ar(120) * Impulse.kr(1) }).play(0, 2);

Ndef(\noise)[2] = \filter -> {|in| GVerb.ar(in) * 0.5};
Ndef(\noise)[1] = \filter -> {|in| PitchShift.ar(in, 0.1, 1, 0.5, 0.5)};

Ndef(\dust, {Dust.ar(0.3)}).play;

Ndef(\dust)[1] = \filter -> {|in| Ringz.ar(in)};

Ndef(\sine, {{Splay.ar( SinOsc.ar(220.0))}!8 }).play(vol:0.2);


NdefMixer(s);

Ndef.clear(9);