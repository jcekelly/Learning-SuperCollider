
(
{
    var amp;
	amp = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
	[SinOsc.ar(440, 0.5, amp),SinOsc.ar(425, 0.5, 1), SinOsc.ar(435, 0.5, 1)];
}.play;
)
