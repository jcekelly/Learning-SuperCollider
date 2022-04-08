s.boot
{ [SinOsc.ar(440, 0, 0.2), SinOsc.ar(442, 0, 0.2)] }.play;
{ SinOsc.ar([440, 442], 0, 0.2) }.play;
(
{ var freq;
    freq = [[660, 880], [440, 660], 1320, 880].choose;
    SinOsc.ar(freq, 0, 0.2);
}.play;
)
{ Pan2.ar(PinkNoise.ar(0.5), SinOsc.kr(0.9)) }.play;
{ Pan2.ar(PinkNoise.ar(0.2), -0.3) }.play; // slightly to the left


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
    var n = 30;
    { Mix.fill(n, { SinOsc.ar(500 + 500.0.rand, 0, 1 / n) }) }.play;
)


// Look at the post window for frequencies and indices
(
    var n = 8;
    {
        Mix.fill(n, { arg index;
            var freq;
            index.postln;
            freq = 440 + index;
            freq.postln;
            SinOsc.ar(freq , 0, 1 / n)
        })
    }.play;
)