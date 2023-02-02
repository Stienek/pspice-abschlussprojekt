
from PyLTSpice.sim_batch import SimCommander
from PyLTSpice import SpiceEditor
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

def query_yes_no(question, default="yes"):
    valid = {"yes": True, "y": True, "ye": True, "no": False, "n": False}
    if default is None:
        prompt = " [y/n] "
    elif default == "yes":
        prompt = " [Y/n] "
    elif default == "no":
        prompt = " [y/N] "
    else:
        raise ValueError("invalid default answer: '%s'" % default)

    while True:
        sys.stdout.write(question + prompt)
        choice = input().lower()
        if default is not None and choice == "":
            return valid[default]
        elif choice in valid:
            return valid[choice]
        else:
            sys.stdout.write("Please respond with 'yes' or 'no' " "(or 'y' or 'n').\n")

sim_choice = {
    1: False,
    2: False,
    3: False,
    4: False
}
plot_choice = {
    1: False
}

def choose_simulations():
    sim_choice[1] = query_yes_no("Simulate Task 1: ")
    sim_choice[2] = query_yes_no("Simulate Task 2.1: ")
    sim_choice[3] = query_yes_no("Simulate Task 2.2: ")
    sim_choice[4] = query_yes_no("Simulate Task 2.3: ")
    plot_choice[1] = query_yes_no("Regenerate plots: ")

def create_netlists():
    if sim_choice[1]:
        net = SimCommander("aufgabe1.asc")
        net.add_instructions(
            ".param Rvar=100",
            ".step param Rvar 1n 595 100m",
            ".op"
        )
        net.write_netlist('rohdaten/a11.net')
        if os.path.exists('aufgabe1.net'):
            os.remove('aufgabe1.net')
    if sim_choice[2]:
        net = SimCommander("aufgabe2.asc")
        net.add_instructions(
            ".param Vtrig=0",
            ".step param Vtrig -4 4 2",
            ".meas pheiz AVG I(R1)*(V(R11)-V(R12))",
            ".meas pverlust AVG I(R5)*(V(R51)-V(R52))+I(R4)*(V(R41)-V(R42))+I(R3)*V(R23)+I(R2)*V(R23)+I(R1)*V(R12)",
            ".meas n PARAM pheiz/(pheiz+pverlust)",
            ".tran 0 100m 0 1u"
        )
        net.write_netlist('rohdaten/a21.net')
        if os.path.exists('aufgabe2.net'):
            os.remove('aufgabe2.net')
    if sim_choice[3]:
        net = SimCommander("aufgabe2.asc")
        net.add_instructions(
            ".param Vtrig=0",
            ".step param Vtrig list {vals}".format(vals=' '.join(str(i) for i in 8*(np.logspace(0, 1, 1000)-1)/9 - 4)),
            ".meas pheiz AVG I(R1)*(V(R11)-V(R12))",
            ".meas pverlust AVG I(R5)*(V(R51)-V(R52))+I(R4)*(V(R41)-V(R42))+I(R3)*V(R23)+I(R2)*V(R23)+I(R1)*V(R12)",
            ".meas n PARAM pheiz/(pheiz+pverlust)",
            ".tran 0 20m 0 10u"
        )
        net.write_netlist('rohdaten/a22.net')
        if os.path.exists('aufgabe2.net'):
            os.remove('aufgabe2.net')
    if sim_choice[4]:
        net = SimCommander("aufgabe3.asc")
        net.add_instructions(
            ".param Vtrig=0",
            ".step param Vtrig list {vals}".format(vals=' '.join(str(i) for i in 8*(np.logspace(0, 1, 1000)-1)/9 - 4)),
            ".meas pheiz AVG I(R1)*(V(R11)-V(R12))",
            ".meas pverlust AVG I(R5)*(V(R51)-V(R52))+I(R4)*(V(R41)-V(R42))+I(R3)*V(R23)+I(R2)*V(R23)+I(R1)*V(R12)",
            ".meas n PARAM pheiz/(pheiz+pverlust)",
            ".tran 0 20m 0 10u"
        )
        net.write_netlist('rohdaten/a23.net')
        if os.path.exists('aufgabe3.net'):
            os.remove('aufgabe3.net')

def simulate(psims=4):
    if sim_choice[1]:
        sim = SimCommander('rohdaten/a11.net',verbose=True)
        sim.run(run_filename='rohdaten/a11.net')
    if sim_choice[2]:
        sim = SimCommander('rohdaten/a21.net')
        sim.run(run_filename='rohdaten/a21.net')
    if sim_choice[3]:
        sim = SimCommander('rohdaten/a22.net')
        sim.run(run_filename='rohdaten/a22.net')
    if sim_choice[4]:
        sim = SimCommander('rohdaten/a23.net')
        sim.run(run_filename='rohdaten/a23.net')
    sim.wait_completion()

def draw_graphs():
    fig1 = plt.figure()

if __name__=="__main__":
    choose_simulations()
    create_netlists()
    simulate()
    if plot_choice[1]:
        draw_graphs()
