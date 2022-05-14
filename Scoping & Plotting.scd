{ PinkNoise.ar(0.2) + SinOsc.ar(440, 0, 0.2) + Saw.ar(660, 0.2) }.play;
// one channel
{ Mix.new([SinOsc.ar(440, 0, 0.2), Saw.ar(660, 0.2)]).postln }.play;

// combine two stereo arrays
(
{
    var a, b;
    a = [SinOsc.ar(440, 0, 0.2), Saw.ar(662, 0.2)];
    b = [SinOsc.ar(442, 0, 0.2), Saw.ar(660, 0.2)];
    Mix([a, b]).postln;
}.play;
)

(
    var n = 8;
    { Mix.fill(n, { SinOsc.ar(500 + 500.0.rand, 0, 1 / n) }) }.play;
)

{ PinkNoise.ar(0.2) + SinOsc.ar(440, 0, 0.2) + Saw.ar(660, 0.2) }.plot(1);

{ PinkNoise.ar(0.2) + SinOsc.ar(460, 0, 0.2) + Saw.ar(660, 0.2) }.scope;

{ [SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)] }.scope(zoom: 2);