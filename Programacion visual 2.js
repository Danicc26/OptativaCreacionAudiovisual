osc(9,-0.1,0.1)
  .modulateKaleid(osc(11,0.5,0),80)
  .scale(0.8,0.3)
  .color(3,0.4,0.2)
  .modulate(noise(6,0.1))
  .mult(noise(1,1,0.3))
  .out(o0)

