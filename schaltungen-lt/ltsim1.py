# import modules for simulation
from PyLTSpice.LTSteps import LTSpiceLogReader
from PyLTSpice.raw_read import RawRead
from PyLTSpice.raw_classes import Trace
import matplotlib.pyplot as plt

# extract data points from log file
raw1 = RawRead("aufgabe1.raw")
Vout = raw1.get_trace("V(Vout)")
Vin = raw1.get_trace("V(Vin)")
Ir = raw1.get_trace("I(R1)")
x1 = Ir.get_wave()*Vout.get_wave()
y1 = Vout.get_wave()/Vin.get_wave()
y1 = [i * 100 for i in y1]


log2 = LTSpiceLogReader(log_filename="aufgabe2.log", read_measures=True)
x2 = log2.get_measure_values_at_steps(measure="pheiz2",steps=range(0, log2.step_count))
y2 = log2.get_measure_values_at_steps(measure="n2",steps=range(0, log2.step_count))
y2 = [i * 100 for i in y2]


log3 = LTSpiceLogReader(log_filename="aufgabe3.log", read_measures=True)
x3 = log3.get_measure_values_at_steps(measure="pheiz2",steps=range(0, log3.step_count))
y3 = log3.get_measure_values_at_steps(measure="n2",steps=range(0, log3.step_count))
y3 = [i * 100 for i in y3]


plt.title("Wirkungsgrad")
plt.plot(x1, y1, label="Widerstandsregler")
plt.plot(x2, y2, label="Operationsverstärker")
plt.plot(x3, y3, label="OPV - Verbessert")
plt.xlabel("Nutzleistung [W]")
plt.xlim(0, 24)
plt.xticks(ticks=[0,2,4,6,8,10,12,14,16,18,20,22,24])
plt.ylabel("Wirkungsgrad [%]")
plt.ylim(0, 1)
plt.yticks(ticks=[0,10,20,30,40,50,60,70,80,90,100])
plt.grid()
plt.legend()
plt.show()