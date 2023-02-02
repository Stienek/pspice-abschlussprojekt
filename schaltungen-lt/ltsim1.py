# import modules for simulation
from PyLTSpice.LTSteps import LTSpiceLogReader
from PyLTSpice.raw_read import RawRead
from PyLTSpice.raw_classes import Trace
import matplotlib.pyplot as plt
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import locale
import sys
import os

#change working directory
os.chdir(os.path.dirname(sys.argv[0]))

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


# PLOT CONFIG
locale.setlocale(locale.LC_NUMERIC, '')
plt.rcParams.update({'font.size': 12})

fig = plt.figure()
gs = GridSpec(
    2,
    1
)

zoom_x_min = 0
zoom_x_max = 0.25

ax1 = fig.add_subplot(gs[0, 0])
ax2 = fig.add_subplot(gs[1, 0])

ax1.fill_between((zoom_x_min, zoom_x_max), 0, 100, facecolor='grey', alpha=0.6)

ax1.plot(x1, y1, linewidth=1, color='green', linestyle='-', label="Widerstandsregler")
ax2.plot(x1, y1, linewidth=1, color='green', linestyle='-', label="Widerstandsregler")
ax1.plot(x2, y2, linewidth=1, color='blue', linestyle='-', label="Operationsverstärker")
ax2.plot(x2, y2, linewidth=1, color='blue', linestyle='-', label="Operationsverstärker")
ax1.plot(x3, y3, linewidth=1, color='orange', linestyle='-', label="OPV - Verbessert")
ax2.plot(x3, y3, linewidth=1, color='orange', linestyle='-', label="OPV - Verbessert")

con1 = ConnectionPatch(xyA=(zoom_x_min, 0), coordsA=ax1.transData,
                       xyB=(zoom_x_min, 100), coordsB=ax2.transData, color='grey')
fig.add_artist(con1)
con2 = ConnectionPatch(xyA=(zoom_x_max, 0), coordsA=ax1.transData,
                       xyB=(zoom_x_max, 100), coordsB=ax2.transData, color='grey')
fig.add_artist(con2)

ax2.set_xlabel("Nutzleistung [W]")
ax1.set_xlim(0, 24)
ax2.set_xlim(zoom_x_min, zoom_x_max)
ax1.set_xticks([0,2,4,6,8,10,12,14,16,18,20,22,24])
ax1.set_ylabel("Wirkungsgrad [%]")
ax2.set_ylabel("Wirkungsgrad [%]")
ax1.set_ylim(0, 1)
ax2.set_ylim(0, 1)
ax1.set_yticks([0,25,50,75,100])
ax2.set_yticks([0,25,50,75,100])
ax1.grid()
ax2.grid()
ax1.legend()

plt.show()