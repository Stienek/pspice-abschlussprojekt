from PyLTSpice.LTSteps import LTSpiceLogReader
from PyLTSpice.raw_read import RawRead
from PyLTSpice.raw_classes import Trace

import matplotlib.pyplot as plt
from matplotlib.patches import ConnectionPatch
from matplotlib.gridspec import GridSpec
import numpy as np

import locale
import sys
import os

os.chdir(os.path.dirname(sys.argv[0]))

raw1 = RawRead('rohdaten/a11.raw')
a1vout = raw1.get_trace('V(out)').get_wave()
a1vin = raw1.get_trace('V(in)').get_wave()
a1i = raw1.get_trace('I(R1)').get_wave()
a1rvar = raw1.get_time_axis()
a1pheiz = a1i*a1vout

locale.setlocale(locale.LC_NUMERIC, '')
plt.rcParams.update({'font.size': 12})

fig1 = plt.figure()
fig2 = plt.figure()
fig3 = plt.figure()

plt.show()
