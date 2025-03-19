# Find the periods of a longer uninterrupted rise in the number range of the year average temperatures
# These are index values calculated from average air temperatures relative to a zero value in the 1950s.
# Source: NASA website on climate change.

# Values from 1880 to 2017 in position [0] to [137] with impossible low temp -999 as end mark in 2018.
clim_table=[-0.11,-0.14,-0.17,-0.21,-0.24,-0.26,-0.27,-0.27,-0.27,-0.26,-0.26,-0.27,-0.27,-0.27,-0.24,-0.23,-0.21,-0.19,-0.17,-0.18]
clim_table+=[-0.21,-0.24,-0.27,-0.3,-0.32,-0.35,-0.37,-0.38,-0.4,-0.41,-0.41,-0.39,-0.35,-0.32,-0.3,-0.29,-0.28,-0.28,-0.28,-0.28]
clim_table+=[-0.26,-0.25,-0.24,-0.22,-0.21,-0.21,-0.2,-0.2,-0.19,-0.18,-0.19,-0.19,-0.18,-0.18,-0.17,-0.15,-0.12,-0.08,-0.03,0.01]
clim_table+=[0.05,0.08,0.09,0.09,0.07,0.03,0,-0.04,-0.07,-0.09,-0.08,-0.08,-0.08,-0.08,-0.07,-0.06,-0.05,-0.04,-0.01,0.02]
clim_table+=[0.03,0.02,0,-0.02,-0.03,-0.04,-0.05,-0.04,-0.03,-0.01,0,0,0,-0.01,0,0.01,0.03,0.07,0.12,0.16]
clim_table+=[0.19,0.21,0.22,0.21,0.21,0.23,0.25,0.28,0.31,0.34,0.34,0.33,0.33,0.33,0.34,0.37,0.4,0.43,0.45,0.48]
clim_table+=[0.5,0.52,0.55,0.58,0.6,0.61,0.61,0.61,0.62,0.62,0.62,0.63,0.67,0.71,0.77,0.83,0.89,0.95,-999]

# Easy access to the climate table by using year as a parameter
def average_temp(year):
    return clim_table[year-1880]

# Output a period as a predefined procedure
def print_period(start,end):
    print ("Period with increasing temperatures:",end-start+1,"years,", )
    print (start,"to",end,"Rise from",average_temp(start),"to",average_temp(end),"Degrees")

start_year=1880

for year in range(1881,2019) :
    previous_year=year-1
    if ... :
