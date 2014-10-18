f = open('TrackletProcessing.v')
g = open('TrackletProcessing_test.v','w')

for line in f:
	if 'TE  TE_L1PHI' in line:
		#TE_L1PHI2Z1_L2PHI3Z1
		phi1 = str(line.split(' ')[-1].split('_')[1])[-3]
		z1 = str(line.split(' ')[-1].split('_')[1])[-1]
		phi2 = str(line.split(' ')[-1].split('_')[-1])[-5]
		z2 = str(line.split(' ')[-1].split('_')[-1])[-3]
		#print line,phi1,z1,phi2,z2
		string = line.replace('TE  TE_L1PHI','TE #("D:/GLIB Firmware/branches/jectest/prj/viv_1/project_3/tables/TETable_R3L1Z' + str(z1) + 'PHI'+str(int(phi1) -1)+ '_R3L2Z' + str(z2) + 'PHI'+str(int(phi2) -1)+'_phi.txt","D:/GLIB Firmware/branches/jectest/prj/viv_1/project_3/tables/TETable_R3L1Z' + str(z1) + 'PHI'+str(int(phi1) -1)+ '_R3L2Z' + str(z2) + 'PHI'+str(int(phi2) -1)+'_z.txt") TE_L1PHI')
		g.write(string)
	else:
		g.write(line)