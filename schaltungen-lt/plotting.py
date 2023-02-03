from PyLTSpice.LTSteps import LTSpiceLogReader
from PyLTSpice import RawRead
from PyLTSpice import Trace

import matplotlib.pyplot as plt
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import numpy as np

import locale
import sys
import os

os.chdir(os.path.dirname(sys.argv[0]))

raw11   = RawRead('rohdaten/a11.raw')
a11vout = raw11.get_trace('V(Vout)').get_wave()
a11vin  = raw11.get_trace('V(Vin)').get_wave()
a11i    = raw11.get_trace('I(R1)').get_wave()
a11rvar = raw11.get_trace('rvar').get_wave()
a11pheiz = a11i*a11vout
a11pverlust = a11i*(a11vin - a11vout)
a11n    = a11pheiz/(a11pheiz + a11pverlust)
a11n = [i * 100 for i in a11n]

raw21 = RawRead('rohdaten/a21.raw')
a21vrect = raw21.get_trace('V(r51)')
a21vtria = raw21.get_trace('V(r41)')
a21vout  = raw21.get_trace('V(r23)')
a21vtrig = raw21.get_trace('V(n002)')
log21       = LTSpiceLogReader(log_filename="rohdaten/a21.log", read_measures=True)
a21pheiz    = log21.get_measure_values_at_steps(measure="pheiz",steps=range(log21.step_count))
a21pverlust = log21.get_measure_values_at_steps(measure="pverlust",steps=range(log21.step_count))
a21n        = log21.get_measure_values_at_steps(measure="n",steps=range(log21.step_count))
a21n = [i * 100 for i in a21n]

log22       = LTSpiceLogReader(log_filename="rohdaten/a22.log", read_measures=True)
a22pheiz    = log22.get_measure_values_at_steps(measure="pheiz",steps=range(log22.step_count))
a22pverlust = log22.get_measure_values_at_steps(measure="pverlust",steps=range(log22.step_count))
a22vtrig    = [log22["vtrig"][i] for i in range(log22.step_count)]
a22pr5      = log22.get_measure_values_at_steps(measure="pr5",steps=range(log22.step_count))
a22pr4      = log22.get_measure_values_at_steps(measure="pr4",steps=range(log22.step_count))
a22pr3      = log22.get_measure_values_at_steps(measure="pr3",steps=range(log22.step_count))
a22pr2      = log22.get_measure_values_at_steps(measure="pr2",steps=range(log22.step_count))
a22pq1      = log22.get_measure_values_at_steps(measure="pq1",steps=range(log22.step_count))
a22n        = log22.get_measure_values_at_steps(measure="n",steps=range(log22.step_count))
a22n = [i * 100 for i in a22n]

log23       = LTSpiceLogReader(log_filename="rohdaten/a23.log", read_measures=True)
a23pheiz    = log23.get_measure_values_at_steps(measure="pheiz",steps=range(log23.step_count))
a23pverlust = log23.get_measure_values_at_steps(measure="pverlust",steps=range(log23.step_count))
a23vtrig    = [log23["vtrig"][i] for i in range(log23.step_count)]
a23pr5      = log23.get_measure_values_at_steps(measure="pr5",steps=range(log23.step_count))
a23pr4      = log23.get_measure_values_at_steps(measure="pr4",steps=range(log23.step_count))
a23pr3      = log23.get_measure_values_at_steps(measure="pr3",steps=range(log23.step_count))
a23pr2      = log23.get_measure_values_at_steps(measure="pr2",steps=range(log23.step_count))
a23pq1      = log23.get_measure_values_at_steps(measure="pq1",steps=range(log23.step_count))
a23n        = log23.get_measure_values_at_steps(measure="n",steps=range(log23.step_count))
a23n = [i * 100 for i in a23n]

locale.setlocale(locale.LC_NUMERIC, '')
plt.rcParams.update({'font.size': 12})
plt.rcParams['text.usetex'] = True
plt.rcParams['figure.figsize'] = [4, 3]

lwidth = 1.5

fig1 = plt.figure(dpi=100, figsize=(8, 6))
fig1.suptitle(r"\Huge{Leistungsregelung durch Widerstand}")
gs1 = GridSpec(
    2,
    1
)
ax111 = fig1.add_subplot(gs1[0, 0])
ax112 = fig1.add_subplot(gs1[1, 0])
ax111.sharex(ax112)
ax111.set_xlim(0, 50)
ax111.set_ylim(0, 24)
ax112.set_ylim(0, 100)
ax111.set_xticks([0, 6, 12, 18, 24, 30, 36, 42, 48])
ax111.set_yticks([0, 6, 12, 18, 24])
ax112.set_yticks([0, 25, 50, 75, 100])
ax111.plot(a11rvar, a11pheiz, linewidth=lwidth, color='blue', label="Heizleistung")
ax111.plot(a11rvar, a11pverlust, linewidth=lwidth, color='orange', label="Verlustleistung")
ax112.plot(a11rvar, a11n, linewidth=lwidth, color='green', label="Wirkungsgrad")
ax112.set_xlabel(r"Widerstand R1 $[ \Omega ]$")
ax111.set_ylabel(r"Leistung $[ W ]$")
ax112.set_ylabel(r"Wirkungsgrad $[ \% ]$")
ax111.grid()
ax112.grid()
ax111.legend()
ax112.legend()

fig2 = plt.figure(dpi=100, figsize=(8, 6))
fig2.suptitle(r"\Huge{Leistungsregelung durch Operationsverstärker}")
gs2 = GridSpec(
    2,
    2
)
ax2111 = fig2.add_subplot(gs2[0, 0])
ax2112 = fig2.add_subplot(gs2[0, 1])
ax2121 = fig2.add_subplot(gs2[1, 0])
ax2122 = fig2.add_subplot(gs2[1, 1])
a21stp = 0
ax2111.plot([1000*i for i in raw21.get_axis(a21stp)], a21vrect.get_wave(a21stp), linewidth=lwidth, color='blue', label="Rechteckspannung")
ax2111.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtria.get_wave(a21stp), linewidth=lwidth, color='orange', label="Dreieckspannung")
ax2111.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtrig.get_wave(a21stp), linewidth=lwidth, color='green', label="Pegelspannung")
ax2111.plot([1000*i for i in raw21.get_axis(a21stp)], a21vout.get_wave(a21stp), linewidth=lwidth, color='red', label="Ausgangsspannung")
a21stp = 1
ax2112.plot([1000*i for i in raw21.get_axis(a21stp)], a21vrect.get_wave(a21stp), linewidth=lwidth, color='blue', label="Rechteckspannung")
ax2112.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtria.get_wave(a21stp), linewidth=lwidth, color='orange', label="Dreieckspannung")
ax2112.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtrig.get_wave(a21stp), linewidth=lwidth, color='green', label="Pegelspannung")
ax2112.plot([1000*i for i in raw21.get_axis(a21stp)], a21vout.get_wave(a21stp), linewidth=lwidth, color='red', label="Ausgangsspannung")
a21stp = 2
ax2121.plot([1000*i for i in raw21.get_axis(a21stp)], a21vrect.get_wave(a21stp), linewidth=lwidth, color='blue', label="Rechteckspannung")
ax2121.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtria.get_wave(a21stp), linewidth=lwidth, color='orange', label="Dreieckspannung")
ax2121.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtrig.get_wave(a21stp), linewidth=lwidth, color='green', label="Pegelspannung")
ax2121.plot([1000*i for i in raw21.get_axis(a21stp)], a21vout.get_wave(a21stp), linewidth=lwidth, color='red', label="Ausgangsspannung")
a21stp = 4
ax2122.plot([1000*i for i in raw21.get_axis(a21stp)], a21vrect.get_wave(a21stp), linewidth=lwidth, color='blue', label="Rechteckspannung")
ax2122.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtria.get_wave(a21stp), linewidth=lwidth, color='orange', label="Dreieckspannung")
ax2122.plot([1000*i for i in raw21.get_axis(a21stp)], a21vtrig.get_wave(a21stp), linewidth=lwidth, color='green', label="Pegelspannung")
ax2122.plot([1000*i for i in raw21.get_axis(a21stp)], a21vout.get_wave(a21stp), linewidth=lwidth, color='red', label="Ausgangsspannung")
ax2111.set_xticks([0, 25, 50, 75, 100])
ax2112.set_xticks([0, 25, 50, 75, 100])
ax2121.set_xticks([0, 25, 50, 75, 100])
ax2122.set_xticks([0, 25, 50, 75, 100])
ax2111.set_yticks([-8, -4, 0, 4, 8])
ax2112.set_yticks([-8, -4, 0, 4, 8])
ax2121.set_yticks([-8, -4, 0, 4, 8])
ax2122.set_yticks([-8, -4, 0, 4, 8])
ax2111.set_ylabel(r"Spannung $[ V ]$")
ax2121.set_ylabel(r"Spannung $[ V ]$")
ax2121.set_xlabel(r"Zeit $[ ms ]$")
ax2122.set_xlabel(r"Zeit $[ ms ]$")
ax2111.set_title(r"$0\%$ Einschaltdauer")
ax2112.set_title(r"$25\%$ Einschaltdauer")
ax2121.set_title(r"$50\%$ Einschaltdauer")
ax2122.set_title(r"$100\%$ Einschaltdauer")
ax2111.set_xlim(0, 100)
ax2112.set_xlim(0, 100)
ax2121.set_xlim(0, 100)
ax2122.set_xlim(0, 100)
ax2111.grid()
ax2112.grid()
ax2121.grid()
ax2122.grid()
ax2122.legend(loc=4, fontsize='small')

fig3 = plt.figure(dpi=100, figsize=(8, 6))
fig3.set_constrained_layout(True)
fig3.suptitle(r"\Huge{Vergleich des Wirkungsgrades}")
gs3 = GridSpec(
    1,
    1
)
ax3 = fig3.add_subplot(gs3[0, 0])
ax3.plot(a11pheiz, a11n, linewidth=lwidth, color='blue', label="Widerstandsregelung")
ax3.plot(a22pheiz, a22n, linewidth=lwidth, color='orange', label="Operationsverstärker")
ax3.plot(a23pheiz, a23n, linewidth=lwidth, color='green', label="OPV - Verbessert")
ax3.set_xlabel(r"Nutzleistung $[ W ]$")
ax3.set_ylabel(r"Wirkungsgrad $[ \% ]$")
ax3.set_xlim(-0.25, 24)
ax3.set_ylim(0, 105)
ax3.grid()
ax3.legend()

fig4 = plt.figure(dpi=100, figsize=(8, 6))
fig4.set_constrained_layout(True)
fig4.suptitle(r"\Huge{Verlustleistungen OPV}")
gs4 = GridSpec(
    1,
    1
)
ax41 = fig4.add_subplot(gs4[0, 0])
ax42 = ax41.twinx()
ax41.plot(a22vtrig, a22pr5, linewidth=lwidth, linestyle='-', color='blue', label=r"P_{R1}")
ax41.plot(a22vtrig, a22pr4, linewidth=lwidth, linestyle='--', color='blue', label=r"P_{R2}")
ax41.plot(a22vtrig, a22pr3, linewidth=lwidth, linestyle='.', color='blue', label=r"P_{R4}")
ax41.plot(a22vtrig, a22pr2, linewidth=lwidth, linestyle='-.', color='blue', label=r"P_{R3}")
ax42.plot(a22vtrig, a22pq1, linewidth=lwidth, linestyle='-', color='orange', label=r"P_{R5}")
ax41.set_xlabel(r"Einschaltdauer $[ \% ]$")
ax41.set_ylabel(r"Verlustleistung $[ mW ]$", color='blue')
ax42.set_ylabel(r"Verlustleistung $[ W ]$", color='orange')
ax41.grid()
ax41.legend()
ax41.legend()

fig5 = plt.figure(dpi=100, figsize=(8, 6))
fig5.set_constrained_layout(True)
fig5.suptitle(r"\Huge{Verlustleistungen MOSFET}")
gs5 = GridSpec(
    1,
    1
)
ax51 = fig5.add_subplot(gs5[0, 0])
ax52 = ax51.twinx()
ax51.plot(a23vtrig, a23pr5, linewidth=lwidth, linestyle='-', color='blue', label=r"P_{R1}")
ax51.plot(a23vtrig, a23pr4, linewidth=lwidth, linestyle='--', color='blue', label=r"P_{R2}")
ax51.plot(a23vtrig, a23pr3, linewidth=lwidth, linestyle='.', color='blue', label=r"P_{R4}")
ax51.plot(a23vtrig, a23pr2, linewidth=lwidth, linestyle='-.', color='blue', label=r"P_{R3}")
ax52.plot(a23vtrig, a23pq1, linewidth=lwidth, linestyle='-', color='orange', label=r"P_{R5}")
ax41.set_xlabel(r"Einschaltdauer $[ \% ]$")
ax41.set_ylabel(r"Verlustleistung $[ mW ]$", color='blue')
ax42.set_ylabel(r"Verlustleistung $[ W ]$", color='orange')
ax41.grid()
ax41.legend()
ax41.legend()

fig1.tight_layout()
fig2.tight_layout()
fig3.tight_layout()
fig4.tight_layout()
fig5.tight_layout()
fig1.savefig("../medien/1.png")
fig2.savefig("../medien/2.png")
fig3.savefig("../medien/3.png")
fig4.savefig("../medien/4.png")
fig5.savefig("../medien/5.png")
plt.show()

