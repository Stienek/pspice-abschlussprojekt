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

raw11 = RawRead('rohdaten/a11.raw')
a11vout = raw11.get_trace('V(Vout)').get_wave()
a11vin = raw11.get_trace('V(Vin)').get_wave()
a11i = raw11.get_trace('I(R1)').get_wave()
a11rvar = raw11.get_time_axis()
a11pheiz = a11i*a11vout
a11pverlust = a11i*(a11vin - a11vout)
a11n = 100*a11pheiz/(a11pheiz + a11pverlust)

raw21 = RawRead('rohdaten/a21.raw')



locale.setlocale(locale.LC_NUMERIC, '')
plt.rcParams.update({'font.size': 12})

fig1 = plt.figure()
fig2 = plt.figure()
fig3 = plt.figure()

plt.show()
