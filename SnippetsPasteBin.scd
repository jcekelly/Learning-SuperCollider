s.quit
s.boot
{[SinOsc.ar(441,0,0.2),SinOsc.ar(440,0,0.2)]}.play;
f = { "work?".postln; };
f.value;
f = { arg a; a.value + 3 };    // call 'value' on the arg; polymorphism awaits!
f.value(3);            // 3.value = 3, so this returns 3 + 3 = 6
g = { 3.0.rand; };
f.value(g);            // here the arg is a Function. Cool, huh?
f.value(g);            // try it again, different result
(
f = { arg a, b;
    a - b;
};
f.value(5, 3);
)
(
f = { arg a, b;
    var firstResult, finalResult;
    firstResult = a + b;
    finalResult = firstResult * 2;
    finalResult;
};
f.value(2, 3);    // this will return (2 + 3) * 2 = 10
)

(
t = { arg a,b,c;
	var oneSum, twoSum;
	oneSum = b + c;
	twoSum = oneSum / a;
	twoSum
};
t.value(2,1,28)


{ [SinOsc.ar(430, 2, 1),SinOsc.ar(429, 0.5, 1)] }.play;

(
{             // Open the Function
    SinOsc.ar(    // Make an audio rate SinOsc
        440,     // frequency of 440 Hz, or the tuning A
        0,     // initial phase of 0, or the beginning of the cycle
        0.2)     // mul of 0.2
}.play;            // close the Function and call 'play' on it
)

(
{ var ampOsc;
    ampOsc = SinOsc.kr(0.5, 1.5pi, 0.5, 0.5);
    SinOsc.ar(440, 0, ampOsc);
}.play;
)


