close all;
clear all;
h1 = 34;b = h1+113; k =0.57; R = 6370; Rz = k*R;h2=51.8;
d = 0:0.01:20.7;
c = 299792458; f = 25.571*1e9;f=24.563*1e9;
l = c/f/1000; % lambda km
for i=1:length(d)
    r(i) = sqrt(l*d(i)*(d(end)-d(i))/(d(end)));
end
r = r*1000;

%% Symulacja terenu
G=[0,112.654
0.0491519,112.464
0.0737279,112.127
0.0983039,112.844+35
0.12288,112.844
0.147456,112.844
0.172032,112.591
0.196608,112.338
0.221184,112.085
0.24576,111.959
0.294912,112.212
0.319488,112.717
0.344064,112.844+30
0.36864,112.717
0.393215,111.706
0.417791,111.833
0.442367,111.833
0.466943,111.833
0.491519,111.833
0.516095,111.959
0.540671,111.833
0.565247,111.959
0.589823,112.085
0.614399,111.959
0.638975,111.959
0.663551,111.706
0.688127,111.58
0.712703,111.453
0.737279,111.201
0.761855,111.074
0.786431,110.948
0.811007,110.822
0.835583,110.695
0.860159,110.569
0.884735,110.316
0.909311,110.19
0.933887,110.063
0.958463,110.063
0.983039,109.558
1.00761,109.389
1.03219,109.747
1.05677,109.726
1.08134,110.19
1.10592,109.684
1.13049,109.305
1.15507,109.305
1.17965,109.305
1.20422,109.305
1.2288,108.926
1.25337,108.041
1.27795,108.041
1.30253,107.915
1.3271,108.041
1.35168,108.041
1.37625,108.041
1.40083,107.157
1.42541,107.03
1.44998,107.03
1.47456,106.651
1.49913,106.651
1.52371,106.146
1.54829,105.514
1.57286,104.503
1.59744,104.25
1.62201,103.618
1.64659,101.849
1.67117,100.08
1.69574,98.5631
1.72032,94.0136
1.74489,92.3707
1.76947,89.7169
1.79405,88.4531
1.8432,87.9476
1.86777,87.8212
1.89235,87.8212
1.91693,87.9476
1.9415,88.3267
1.96608,88.2004
1.99065,88.2004
2.01523,88.074
2.03981,88.074
2.06438,88.074
2.08896,87.9476
2.11353,87.8212
2.13811,87.8212
2.16269,87.8212
2.18726,87.6949
2.21184,87.5685
2.23641,87.3157
2.26099,87.3157
2.28556,87.3157
2.31014,87.1894
2.33472,86.9366
2.35929,86.6839
2.38387,86.5575
2.40844,86.1784
2.43302,86.3047
2.4576,86.9366
2.48217,87.4421
2.50675,88.2004
2.53132,88.3267
2.5559,87.1894
2.58048,85.7992
2.60505,83.9036
2.62963,82.6399
2.6542,81.5025
2.67878,81.6289
2.70336,81.5025
2.72793,81.5025
2.75251,81.5025
2.77708,81.5025
2.80166,81.5025
2.82624,81.7552
2.85081,82.1344
2.87539,82.6399
2.89996,83.019
2.92454,83.019
2.94912,83.2717
2.97369,83.6509
2.99827,85.1674
3.02284,86.1784
3.04742,87.4421
3.072,87.5685
3.09657,91.2334
3.12115,92.118+5
3.14572,91.0312
3.1703,91.1912
3.19488,92.4971
3.21945,92.118
3.24403,91.6125
3.2686,91.4861
3.29318,91.107
3.31776,90.4751
3.34233,90.096
3.36691,89.3377
3.39148,89.2114
3.41606,89.2114
3.44064,89.4641
3.46521,88.9586
3.48979,88.5795
3.51436,87.9476
3.53894,87.5685
3.56352,87.6949
3.58809,87.8212
3.61267,86.9366
3.63724,86.6839
3.66182,85.6729
3.6864,85.5465
3.71097,85.4201
3.73555,85.1674
3.76012,84.7882
3.7847,84.7882
3.80927,84.7882
3.83385,85.041
3.85843,84.7882
3.883,84.7882
3.90758,84.5355
3.93215,84.5355
3.95673,84.6619
3.98131,84.4091
4.03046,83.9036
4.05503,83.2717
4.07961,82.8926
4.10419,82.8926
4.12876,83.2717
4.15334,83.9036
4.17791,84.6619
4.20249,84.6619
4.22707,84.5355
4.25164,84.2827
4.27622,84.4091
4.30079,84.1564
4.32537,84.03
4.34995,83.9036
4.37452,83.7772
4.3991,83.7772
4.42367,83.6509
4.44825,83.019
4.47283,82.7662
4.4974,82.6399
4.52198,83.2717
4.54655,84.03
4.57113,84.6619
4.59571,84.9778
4.62028,84.367
4.64486,84.367
4.66943,85.041
4.69401,85.5465
4.71859,85.6729
4.74316,86.0099
4.76774,86.4311
4.79231,86.6839
4.81689,86.8102
4.84147,86.9366
4.86604,86.9366
4.89062,86.9366
4.91519,86.8102
4.93977,86.6839
4.96435,86.8102
4.98892,86.8102
5.0135,86.8102
5.03807,86.8102
5.06265,86.8102
5.08723,86.5575
5.1118,86.8102
5.13638,86.8102
5.16095,86.9366
5.18553,86.8102
5.2101,86.5575
5.23468,86.5575
5.25926,86.3047
5.28383,86.3047
5.30841,86.5575
5.33298,86.5575
5.35756,86.3047
5.38214,86.3047
5.40671,86.3047
5.43129,86.3047
5.45586,87.3157
5.48044,87.341
5.50502,87.063
5.52959,85.2937
5.55417,85.1674
5.57874,85.5465
5.60332,86.3047
5.6279,86.9005
5.65247,87.1894
5.67705,86.6839
5.70162,86.4311
5.7262,86.052
5.75078,86.052
5.77535,86.052
5.79993,85.9256
5.8245,86.052
5.84908,86.052
5.87366,86.052
5.89823,86.052
5.92281,86.052
5.94738,86.3047
5.97196,86.3047
5.99654,86.3047
6.02111,86.5575
6.04569,86.6839
6.07026,86.8102
6.09484,86.8102
6.11942,86.6839
6.14399,86.5575
6.16857,86.5575
6.19314,86.3047
6.21772,86.3047
6.2423,85.7992
6.26687,85.6729
6.29145,85.9256
6.31602,86.1784
6.3406,86.4311
6.36518,86.9366
6.38975,87.6949
6.41433,88.2285
6.4389,87.6046
6.46348,87.0883
6.48806,86.3047
6.51263,86.3047
6.53721,86.052
6.56178,86.052
6.58636,85.9256
6.61094,86.052
6.63551,86.052
6.66009,85.6729
6.68466,85.6729
6.70924,85.6729
6.73381,85.9256
6.75839,86.5575
6.78297,86.8861
6.80754,87.063
6.83212,87.063
6.85669,87.1894
6.88127,87.4421
6.90585,87.5685
6.93042,87.8212
6.955,87.8212
6.97957,87.8212
7.00415,87.6949
7.02873,87.8212
7.0533,87.9476
7.07788,87.9476
7.10245,87.4421
7.12703,86.7119
7.15161,86.3469
7.17618,86.3047
7.20076,86.052
7.22533,86.052
7.24991,86.052
7.27449,86.052
7.29906,86.052
7.32364,86.052
7.34821,86.052
7.37279,86.052
7.39737,86.3047
7.42194,86.5575
7.44652,86.5575
7.47109,86.5575
7.49567,86.5575
7.52025,86.8102
7.54482,86.1784
7.5694,86.1784
7.59397,86.1784
7.61855,86.5575
7.64313,86.6839
7.6677,86.4311
7.69228,86.4311
7.71685,86.3047
7.74143,86.3047
7.76601,86.5575
7.79058,86.1784
7.81516,85.9256
7.83973,85.7992
7.86431,85.6729
7.88889,85.5465
7.91346,85.5465
7.93804,85.6729
7.96261,85.7992
7.98719,85.7992
8.01177,85.7992
8.03634,85.7992
8.06092,85.7992
8.08549,85.7992
8.11007,85.9256
8.13465,86.052
8.15922,86.3047
8.1838,86.5575
8.20837,86.8102
8.23295,86.8102
8.25752,86.5575
8.2821,86.5575
8.30668,86.5575
8.33125,86.5575
8.35583,86.6839
8.3804,86.5575
8.40498,86.4311
8.42956,86.052
8.45413,85.9256
8.47871,86.3679
8.50328,86.6839
8.52786,87.063
8.55244,87.3157
8.57701,87.063
8.60159,86.9366
8.62616,86.8102
8.65074,86.8102
8.67532,86.8102
8.69989,86.8102
8.72447,86.6839
8.74904,86.5575
8.77362,86.5575
8.7982,86.5575
8.82277,86.8102
8.84735,87.063
8.87192,87.063
8.8965,87.063
8.92108,87.1894
8.94565,87.4421
8.97023,87.8212
8.9948,88.2004
9.01938,88.3267
9.04396,88.4531
9.06853,88.3267
9.09311,88.2004
9.11768,88.074
9.14226,87.6949
9.16684,87.8212
9.19141,87.8212
9.21599,87.6949
9.24056,87.6949
9.26514,87.9476
9.28972,88.074
9.31429,88.5795
9.33887,88.9586
9.36344,89.2114
9.38802,89.4641
9.4126,89.8432
9.43717,90.096
9.46175,90.096
9.48632,90.096
9.5109,90.4751
9.53548,90.7279
9.56005,91.2334
9.58463,91.3597
9.6092,91.6125
9.63378,91.6125
9.65835,91.3597
9.68293,91.3597
9.70751,91.6125
9.73208,91.6125
9.75666,91.3597
9.78123,91.3597
9.80581,91.3597
9.83039,90.9806
9.85496,91.107
9.87954,91.107
9.90411,91.2334
9.92869,91.2334
9.95327,91.2334
9.97784,91.107
10.0024,90.9806
10.027,90.8542
10.0516,90.6015
10.0761,90.6015
10.1007,90.6015
10.1253,90.6015
10.1499,90.6015
10.1745,90.7279
10.199,90.8542
10.2236,90.7279
10.2482,90.7279
10.2728,90.7279
10.2973,90.7279
10.3219,90.8542
10.3465,90.8542
10.3711,90.8542
10.3956,90.7279
10.4202,90.6015
10.4448,90.3487
10.4694,90.3487
10.4939,90.2224
10.5185,90.3487
10.5431,90.3487
10.5677,90.6015
10.5922,90.8542
10.6168,90.6015
10.6414,90.6015
10.666,90.6015
10.6905,90.8542
10.7151,90.9806
10.7397,91.107
10.7643,91.3597
10.7888,91.4861
10.8134,91.6125
10.838,91.8652
10.8626,92.118
10.8872,92.2444
10.9117,92.3707
10.9363,92.6235
10.9609,92.6235
10.9855,92.6235
11.01,92.6235
11.0346,92.6235
11.0592,92.6235
11.0838,92.4971
11.1083,92.7499
11.1329,93.0026
11.1575,93.129
11.1821,93.129
11.2066,92.8762
11.2312,93.0026
11.2558,93.129
11.2804,93.129
11.3049,93.129
11.3295,93.129
11.3541,93.3817
11.3787,93.6345
11.4032,93.6345
11.4278,93.8872
11.4524,93.8872
11.477,93.8872
11.5016,93.7609
11.5261,93.7609
11.5507,93.8872
11.5753,93.8872
11.5999,93.6345
11.6244,93.7609
11.649,93.9294
11.6736,94.0136
11.6982,93.5081
11.7227,93.3817
11.7473,93.3817
11.7719,93.3817
11.7965,93.3817
11.821,93.3817
11.8456,93.129
11.8702,93.129
11.8948,92.8762
11.9193,92.8762
11.9439,92.8762
11.9685,92.4971
11.9931,92.3707
12.0176,91.9916
12.0422,91.6125
12.0668,91.6125
12.0914,91.8652
12.116,91.8652
12.1405,92.118
12.1651,92.2444
12.1897,92.3707
12.2143,92.8762
12.2388,93.129
12.2634,93.5081
12.288,93.3817
12.3126,93.0026
12.3371,93.0026
12.3617,92.8762
12.3863,93.129
12.4109,93.129
12.4354,93.3817
12.46,93.3817
12.4846,93.7609
12.5092,93.7609
12.5337,94.14
12.5583,93.7609
12.5829,93.6345
12.6075,93.6345
12.632,93.7609
12.6566,93.6345
12.6812,94.0136
12.7058,94.0136
12.7304,93.8872
12.7549,93.0026
12.7795,92.8762
12.8041,92.8762
12.8287,92.8762
12.8532,92.8762
12.8778,92.8762
12.9024,93.0026
12.927,93.129
12.9515,93.129
12.9761,93.129
13.0007,93.129
13.0253,93.3817
13.0498,93.5081
13.0744,93.6345
13.099,93.6345
13.1236,93.6345
13.1481,93.7609
13.1727,93.7609
13.1973,93.7609
13.2219,93.5081
13.2464,94.14
13.271,94.3927
13.2956,94.7719
13.3202,94.5191
13.3447,94.2664
13.3693,94.2664
13.3939,94.2664
13.4185,93.8872
13.4431,93.5081
13.4676,93.6345
13.4922,94.0136
13.5168,94.3927
13.5414,95.0246
13.5659,95.4037
13.5905,95.9092
13.6151,95.0246
13.6397,94.5191
13.6642,94.2664
13.6888,94.3927
13.7134,94.3927
13.738,94.6455
13.7625,95.0752
13.7871,95.5301
13.8117,95.9092
13.8363,95.9092
13.8608,96.0356
13.8854,95.7829
13.91,95.7829
13.9346,95.7829
13.9591,96.162
13.9837,95.6565
14.0083,95.2774
14.0329,94.8982
14.0575,94.6455
14.082,94.8982
14.1066,95.0246
14.1312,95.4037
14.1558,95.5301
14.1803,95.6565
14.2049,95.5301
14.2295,95.6565
14.2541,96.162
14.2786,97.2994
14.3032,98.184
14.3278,98.8159
14.3524,98.8159
14.3769,99.0686
14.4015,99.3214
14.4261,99.3214
14.4507,98.8159
14.4752,98.184
14.4998,97.6785
14.5244,97.5521
14.549,97.173
14.5735,96.9834
14.5981,97.6785
14.6227,99.0686
14.6473,101.343
14.6719,103.618
14.6964,105.752
14.721,107.515
14.7456,107.03
14.7702,105.767+20
14.7947,103.492
14.8193,102.228
14.8439,101.343
14.8685,100.838
14.893,100.711
14.9176,100.459
14.9422,101.491
14.9668,102.86
14.9913,104.882
15.0159,105.735
15.0405,103.365
15.0651,101.611
15.0896,98.6895
15.1142,99.3214
15.1388,101
15.1634,102.733
15.1879,105.387
15.2125,107.662
15.2371,110.063
15.2617,111.074
15.2863,111.833+20
15.3108,108.505
15.3354,110.948
15.36,106.651
15.3846,110.779
15.4091,111.453
15.4337,111.58
15.4583,112.464
15.4829,105.034
15.5074,112.338
15.532,112.212
15.5566,111.959
15.5812,111.833
15.6057,111.706
15.6303,111.833
15.6549,112.085
15.6795,112.464
15.704,111.327
15.7286,109.684
15.7532,108.547
15.7778,109.052
15.8023,110.19
15.8269,112.173
15.8515,113.539
15.8761,113.855
15.9007,115+20
15.9252,110.19
15.9498,105.893
15.9744,100.381
15.999,96.9624
16.0235,94.3927
16.0481,94.14
16.0727,94.14
16.0973,94.14
16.1218,94.3927
16.1464,94.8982
16.171,95.0246
16.1956,94.8982
16.2201,94.6455
16.2447,94.7719
16.2693,95.0246
16.2939,95.151
16.3184,95.2774
16.343,96.0356
16.3676,96.5411
16.3922,96.9202
16.4167,96.5411
16.4413,96.162
16.4659,95.6565
16.4905,95.6565
16.515,95.5301
16.5396,95.2774
16.5642,95.2774
16.5888,95.5301
16.6134,95.5301
16.6379,95.4037
16.6625,96.4147
16.6871,97.173
16.7117,98.2021
16.7362,97.2994
16.7608,96.2884
16.7854,94.8982
16.81,94.8982
16.8345,95.0246
16.8591,95.0246
16.8837,95.0246
16.9083,94.8982
16.9328,94.7719
16.9574,94.6455
16.982,94.6455
17.0066,95.151
17.0311,95.4037
17.0557,95.6565
17.0803,95.9092
17.1049,96.0356
17.1294,96.0356
17.154,95.9724
17.1786,96.162
17.2032,96.2884
17.2278,95.6565
17.2523,95.2774
17.2769,95.151
17.3015,95.151
17.3261,94.8982
17.3506,94.8982
17.3752,95.0246
17.3998,94.8982
17.4244,94.7719
17.4489,94.6455
17.4735,95.0246
17.4981,94.9685
17.5227,94.5191
17.5472,97.5813
17.5718,99.5741
17.5964,102.86
17.621,104.524+20
17.6455,100.922
17.6701,103.576
17.6947,102.102
17.7193,99.7005
17.7438,96.9202
17.7684,96.0356
17.793,95.9092
17.8176,96.162
17.8422,96.4569
17.8667,96.7939
17.8913,97.2994
17.9159,97.5521
17.9405,97.5521
17.965,97.6785
17.9896,97.4257
18.0142,97.173
18.0388,97.0466
18.0633,97.173
18.0879,97.173
18.1125,97.5521
18.1371,97.173
18.1616,97.0466
18.1862,97.1309
18.2108,97.6785
18.2354,97.8049
18.2599,98.0576
18.2845,97.9312
18.3091,98.0576
18.3337,98.184
18.3582,98.3104
18.3828,98.4367
18.4074,98.4367
18.432,98.5631
18.4566,98.6895
18.4811,98.6895
18.5057,98.5631
18.5303,97.9312
18.5549,97.9312
18.5794,97.9312
18.604,98.184
18.6286,98.0576
18.6532,97.2994
18.6777,97.173
18.7023,96.7939
18.7269,96.9202
18.7515,97.0466
18.776,97.2994
18.8006,97.2994
18.8252,97.5521
18.8498,97.4257
18.8743,97.2994
18.8989,97.173
18.9235,96.9202
18.9481,96.9202
18.9726,96.7939
18.9972,97.0466
19.0218,97.4257
19.0464,97.6785
19.071,98.0576
19.0955,98.0576
19.1201,97.8049
19.1447,97.6785
19.1693,97.6785
19.1938,98.0576
19.2184,98.4367
19.243,98.6895
19.2676,98.4367
19.2921,97.8049
19.3167,98.0576
19.3413,97.9312
19.3659,97.9312
19.3904,97.6785
19.415,97.5521
19.4396,97.4257
19.4642,97.0466
19.4887,96.6675
19.5133,96.5411
19.5379,96.6675
19.5625,96.4147
19.587,95.5301
19.6116,95.0246
19.6362,95.0246
19.6608,95.4037
19.6853,95.9092
19.7099,96.162
19.7345,96.162
19.7591,96.162
19.7837,96.2884
19.8082,96.4147
19.8328,96.5411
19.8574,96.5411
19.882,96.6675
19.9065,96.7939
19.9311,96.5411
19.9557,96.162
19.9803,96.0356
20.0048,95.7829
20.0294,95.6565
20.054,95.7829
20.0786,95.9092
20.1031,96.162
20.1277,96.4147
20.1523,96.6675
20.1769,97.173
20.2014,97.8049
20.226,98.4367
20.2506,98.5631
20.2752,98.184
20.2997,97.9312
20.3243,98.0576
20.3489,98.184
20.3735,98.4367
20.3981,98.6895
20.4226,98.9422
20.4472,99.0686
20.4718,99.195
20.4964,99.3214
20.5209,98.6895
20.5455,98.3104
20.5701,98.4115
20.5947,98.9422
20.6192,98.9422
20.6438,98.3104
20.6684,98.0576
20.693,98.3104];
G0=[0,112.654
0.0491519,112.464
0.0737279,112.127
0.0983039,112.844
0.12288,112.844
0.147456,112.844
0.172032,112.591
0.196608,112.338
0.221184,112.085
0.24576,111.959
0.294912,112.212
0.319488,112.717
0.344064,112.844
0.36864,112.717
0.393215,111.706
0.417791,111.833
0.442367,111.833
0.466943,111.833
0.491519,111.833
0.516095,111.959
0.540671,111.833
0.565247,111.959
0.589823,112.085
0.614399,111.959
0.638975,111.959
0.663551,111.706
0.688127,111.58
0.712703,111.453
0.737279,111.201
0.761855,111.074
0.786431,110.948
0.811007,110.822
0.835583,110.695
0.860159,110.569
0.884735,110.316
0.909311,110.19
0.933887,110.063
0.958463,110.063
0.983039,109.558
1.00761,109.389
1.03219,109.747
1.05677,109.726
1.08134,110.19
1.10592,109.684
1.13049,109.305
1.15507,109.305
1.17965,109.305
1.20422,109.305
1.2288,108.926
1.25337,108.041
1.27795,108.041
1.30253,107.915
1.3271,108.041
1.35168,108.041
1.37625,108.041
1.40083,107.157
1.42541,107.03
1.44998,107.03
1.47456,106.651
1.49913,106.651
1.52371,106.146
1.54829,105.514
1.57286,104.503
1.59744,104.25
1.62201,103.618
1.64659,101.849
1.67117,100.08
1.69574,98.5631
1.72032,94.0136
1.74489,92.3707
1.76947,89.7169
1.79405,88.4531
1.8432,87.9476
1.86777,87.8212
1.89235,87.8212
1.91693,87.9476
1.9415,88.3267
1.96608,88.2004
1.99065,88.2004
2.01523,88.074
2.03981,88.074
2.06438,88.074
2.08896,87.9476
2.11353,87.8212
2.13811,87.8212
2.16269,87.8212
2.18726,87.6949
2.21184,87.5685
2.23641,87.3157
2.26099,87.3157
2.28556,87.3157
2.31014,87.1894
2.33472,86.9366
2.35929,86.6839
2.38387,86.5575
2.40844,86.1784
2.43302,86.3047
2.4576,86.9366
2.48217,87.4421
2.50675,88.2004
2.53132,88.3267
2.5559,87.1894
2.58048,85.7992
2.60505,83.9036
2.62963,82.6399
2.6542,81.5025
2.67878,81.6289
2.70336,81.5025
2.72793,81.5025
2.75251,81.5025
2.77708,81.5025
2.80166,81.5025
2.82624,81.7552
2.85081,82.1344
2.87539,82.6399
2.89996,83.019
2.92454,83.019
2.94912,83.2717
2.97369,83.6509
2.99827,85.1674
3.02284,86.1784
3.04742,87.4421
3.072,87.5685
3.09657,91.2334
3.12115,92.118
3.14572,91.0312
3.1703,91.1912
3.19488,92.4971
3.21945,92.118
3.24403,91.6125
3.2686,91.4861
3.29318,91.107
3.31776,90.4751
3.34233,90.096
3.36691,89.3377
3.39148,89.2114
3.41606,89.2114
3.44064,89.4641
3.46521,88.9586
3.48979,88.5795
3.51436,87.9476
3.53894,87.5685
3.56352,87.6949
3.58809,87.8212
3.61267,86.9366
3.63724,86.6839
3.66182,85.6729
3.6864,85.5465
3.71097,85.4201
3.73555,85.1674
3.76012,84.7882
3.7847,84.7882
3.80927,84.7882
3.83385,85.041
3.85843,84.7882
3.883,84.7882
3.90758,84.5355
3.93215,84.5355
3.95673,84.6619
3.98131,84.4091
4.03046,83.9036
4.05503,83.2717
4.07961,82.8926
4.10419,82.8926
4.12876,83.2717
4.15334,83.9036
4.17791,84.6619
4.20249,84.6619
4.22707,84.5355
4.25164,84.2827
4.27622,84.4091
4.30079,84.1564
4.32537,84.03
4.34995,83.9036
4.37452,83.7772
4.3991,83.7772
4.42367,83.6509
4.44825,83.019
4.47283,82.7662
4.4974,82.6399
4.52198,83.2717
4.54655,84.03
4.57113,84.6619
4.59571,84.9778
4.62028,84.367
4.64486,84.367
4.66943,85.041
4.69401,85.5465
4.71859,85.6729
4.74316,86.0099
4.76774,86.4311
4.79231,86.6839
4.81689,86.8102
4.84147,86.9366
4.86604,86.9366
4.89062,86.9366
4.91519,86.8102
4.93977,86.6839
4.96435,86.8102
4.98892,86.8102
5.0135,86.8102
5.03807,86.8102
5.06265,86.8102
5.08723,86.5575
5.1118,86.8102
5.13638,86.8102
5.16095,86.9366
5.18553,86.8102
5.2101,86.5575
5.23468,86.5575
5.25926,86.3047
5.28383,86.3047
5.30841,86.5575
5.33298,86.5575
5.35756,86.3047
5.38214,86.3047
5.40671,86.3047
5.43129,86.3047
5.45586,87.3157
5.48044,87.341
5.50502,87.063
5.52959,85.2937
5.55417,85.1674
5.57874,85.5465
5.60332,86.3047
5.6279,86.9005
5.65247,87.1894
5.67705,86.6839
5.70162,86.4311
5.7262,86.052
5.75078,86.052
5.77535,86.052
5.79993,85.9256
5.8245,86.052
5.84908,86.052
5.87366,86.052
5.89823,86.052
5.92281,86.052
5.94738,86.3047
5.97196,86.3047
5.99654,86.3047
6.02111,86.5575
6.04569,86.6839
6.07026,86.8102
6.09484,86.8102
6.11942,86.6839
6.14399,86.5575
6.16857,86.5575
6.19314,86.3047
6.21772,86.3047
6.2423,85.7992
6.26687,85.6729
6.29145,85.9256
6.31602,86.1784
6.3406,86.4311
6.36518,86.9366
6.38975,87.6949
6.41433,88.2285
6.4389,87.6046
6.46348,87.0883
6.48806,86.3047
6.51263,86.3047
6.53721,86.052
6.56178,86.052
6.58636,85.9256
6.61094,86.052
6.63551,86.052
6.66009,85.6729
6.68466,85.6729
6.70924,85.6729
6.73381,85.9256
6.75839,86.5575
6.78297,86.8861
6.80754,87.063
6.83212,87.063
6.85669,87.1894
6.88127,87.4421
6.90585,87.5685
6.93042,87.8212
6.955,87.8212
6.97957,87.8212
7.00415,87.6949
7.02873,87.8212
7.0533,87.9476
7.07788,87.9476
7.10245,87.4421
7.12703,86.7119
7.15161,86.3469
7.17618,86.3047
7.20076,86.052
7.22533,86.052
7.24991,86.052
7.27449,86.052
7.29906,86.052
7.32364,86.052
7.34821,86.052
7.37279,86.052
7.39737,86.3047
7.42194,86.5575
7.44652,86.5575
7.47109,86.5575
7.49567,86.5575
7.52025,86.8102
7.54482,86.1784
7.5694,86.1784
7.59397,86.1784
7.61855,86.5575
7.64313,86.6839
7.6677,86.4311
7.69228,86.4311
7.71685,86.3047
7.74143,86.3047
7.76601,86.5575
7.79058,86.1784
7.81516,85.9256
7.83973,85.7992
7.86431,85.6729
7.88889,85.5465
7.91346,85.5465
7.93804,85.6729
7.96261,85.7992
7.98719,85.7992
8.01177,85.7992
8.03634,85.7992
8.06092,85.7992
8.08549,85.7992
8.11007,85.9256
8.13465,86.052
8.15922,86.3047
8.1838,86.5575
8.20837,86.8102
8.23295,86.8102
8.25752,86.5575
8.2821,86.5575
8.30668,86.5575
8.33125,86.5575
8.35583,86.6839
8.3804,86.5575
8.40498,86.4311
8.42956,86.052
8.45413,85.9256
8.47871,86.3679
8.50328,86.6839
8.52786,87.063
8.55244,87.3157
8.57701,87.063
8.60159,86.9366
8.62616,86.8102
8.65074,86.8102
8.67532,86.8102
8.69989,86.8102
8.72447,86.6839
8.74904,86.5575
8.77362,86.5575
8.7982,86.5575
8.82277,86.8102
8.84735,87.063
8.87192,87.063
8.8965,87.063
8.92108,87.1894
8.94565,87.4421
8.97023,87.8212
8.9948,88.2004
9.01938,88.3267
9.04396,88.4531
9.06853,88.3267
9.09311,88.2004
9.11768,88.074
9.14226,87.6949
9.16684,87.8212
9.19141,87.8212
9.21599,87.6949
9.24056,87.6949
9.26514,87.9476
9.28972,88.074
9.31429,88.5795
9.33887,88.9586
9.36344,89.2114
9.38802,89.4641
9.4126,89.8432
9.43717,90.096
9.46175,90.096
9.48632,90.096
9.5109,90.4751
9.53548,90.7279
9.56005,91.2334
9.58463,91.3597
9.6092,91.6125
9.63378,91.6125
9.65835,91.3597
9.68293,91.3597
9.70751,91.6125
9.73208,91.6125
9.75666,91.3597
9.78123,91.3597
9.80581,91.3597
9.83039,90.9806
9.85496,91.107
9.87954,91.107
9.90411,91.2334
9.92869,91.2334
9.95327,91.2334
9.97784,91.107
10.0024,90.9806
10.027,90.8542
10.0516,90.6015
10.0761,90.6015
10.1007,90.6015
10.1253,90.6015
10.1499,90.6015
10.1745,90.7279
10.199,90.8542
10.2236,90.7279
10.2482,90.7279
10.2728,90.7279
10.2973,90.7279
10.3219,90.8542
10.3465,90.8542
10.3711,90.8542
10.3956,90.7279
10.4202,90.6015
10.4448,90.3487
10.4694,90.3487
10.4939,90.2224
10.5185,90.3487
10.5431,90.3487
10.5677,90.6015
10.5922,90.8542
10.6168,90.6015
10.6414,90.6015
10.666,90.6015
10.6905,90.8542
10.7151,90.9806
10.7397,91.107
10.7643,91.3597
10.7888,91.4861
10.8134,91.6125
10.838,91.8652
10.8626,92.118
10.8872,92.2444
10.9117,92.3707
10.9363,92.6235
10.9609,92.6235
10.9855,92.6235
11.01,92.6235
11.0346,92.6235
11.0592,92.6235
11.0838,92.4971
11.1083,92.7499
11.1329,93.0026
11.1575,93.129
11.1821,93.129
11.2066,92.8762
11.2312,93.0026
11.2558,93.129
11.2804,93.129
11.3049,93.129
11.3295,93.129
11.3541,93.3817
11.3787,93.6345
11.4032,93.6345
11.4278,93.8872
11.4524,93.8872
11.477,93.8872
11.5016,93.7609
11.5261,93.7609
11.5507,93.8872
11.5753,93.8872
11.5999,93.6345
11.6244,93.7609
11.649,93.9294
11.6736,94.0136
11.6982,93.5081
11.7227,93.3817
11.7473,93.3817
11.7719,93.3817
11.7965,93.3817
11.821,93.3817
11.8456,93.129
11.8702,93.129
11.8948,92.8762
11.9193,92.8762
11.9439,92.8762
11.9685,92.4971
11.9931,92.3707
12.0176,91.9916
12.0422,91.6125
12.0668,91.6125
12.0914,91.8652
12.116,91.8652
12.1405,92.118
12.1651,92.2444
12.1897,92.3707
12.2143,92.8762
12.2388,93.129
12.2634,93.5081
12.288,93.3817
12.3126,93.0026
12.3371,93.0026
12.3617,92.8762
12.3863,93.129
12.4109,93.129
12.4354,93.3817
12.46,93.3817
12.4846,93.7609
12.5092,93.7609
12.5337,94.14
12.5583,93.7609
12.5829,93.6345
12.6075,93.6345
12.632,93.7609
12.6566,93.6345
12.6812,94.0136
12.7058,94.0136
12.7304,93.8872
12.7549,93.0026
12.7795,92.8762
12.8041,92.8762
12.8287,92.8762
12.8532,92.8762
12.8778,92.8762
12.9024,93.0026
12.927,93.129
12.9515,93.129
12.9761,93.129
13.0007,93.129
13.0253,93.3817
13.0498,93.5081
13.0744,93.6345
13.099,93.6345
13.1236,93.6345
13.1481,93.7609
13.1727,93.7609
13.1973,93.7609
13.2219,93.5081
13.2464,94.14
13.271,94.3927
13.2956,94.7719
13.3202,94.5191
13.3447,94.2664
13.3693,94.2664
13.3939,94.2664
13.4185,93.8872
13.4431,93.5081
13.4676,93.6345
13.4922,94.0136
13.5168,94.3927
13.5414,95.0246
13.5659,95.4037
13.5905,95.9092
13.6151,95.0246
13.6397,94.5191
13.6642,94.2664
13.6888,94.3927
13.7134,94.3927
13.738,94.6455
13.7625,95.0752
13.7871,95.5301
13.8117,95.9092
13.8363,95.9092
13.8608,96.0356
13.8854,95.7829
13.91,95.7829
13.9346,95.7829
13.9591,96.162
13.9837,95.6565
14.0083,95.2774
14.0329,94.8982
14.0575,94.6455
14.082,94.8982
14.1066,95.0246
14.1312,95.4037
14.1558,95.5301
14.1803,95.6565
14.2049,95.5301
14.2295,95.6565
14.2541,96.162
14.2786,97.2994
14.3032,98.184
14.3278,98.8159
14.3524,98.8159
14.3769,99.0686
14.4015,99.3214
14.4261,99.3214
14.4507,98.8159
14.4752,98.184
14.4998,97.6785
14.5244,97.5521
14.549,97.173
14.5735,96.9834
14.5981,97.6785
14.6227,99.0686
14.6473,101.343
14.6719,103.618
14.6964,105.752
14.721,107.515
14.7456,107.03
14.7702,105.767
14.7947,103.492
14.8193,102.228
14.8439,101.343
14.8685,100.838
14.893,100.711
14.9176,100.459
14.9422,101.491
14.9668,102.86
14.9913,104.882
15.0159,105.735
15.0405,103.365
15.0651,101.611
15.0896,98.6895
15.1142,99.3214
15.1388,101
15.1634,102.733
15.1879,105.387
15.2125,107.662
15.2371,110.063
15.2617,111.074
15.2863,111.833
15.3108,108.505
15.3354,110.948
15.36,106.651
15.3846,110.779
15.4091,111.453
15.4337,111.58
15.4583,112.464
15.4829,105.034
15.5074,112.338
15.532,112.212
15.5566,111.959
15.5812,111.833
15.6057,111.706
15.6303,111.833
15.6549,112.085
15.6795,112.464
15.704,111.327
15.7286,109.684
15.7532,108.547
15.7778,109.052
15.8023,110.19
15.8269,112.173
15.8515,113.539
15.8761,113.855
15.9007,115
15.9252,110.19
15.9498,105.893
15.9744,100.381
15.999,96.9624
16.0235,94.3927
16.0481,94.14
16.0727,94.14
16.0973,94.14
16.1218,94.3927
16.1464,94.8982
16.171,95.0246
16.1956,94.8982
16.2201,94.6455
16.2447,94.7719
16.2693,95.0246
16.2939,95.151
16.3184,95.2774
16.343,96.0356
16.3676,96.5411
16.3922,96.9202
16.4167,96.5411
16.4413,96.162
16.4659,95.6565
16.4905,95.6565
16.515,95.5301
16.5396,95.2774
16.5642,95.2774
16.5888,95.5301
16.6134,95.5301
16.6379,95.4037
16.6625,96.4147
16.6871,97.173
16.7117,98.2021
16.7362,97.2994
16.7608,96.2884
16.7854,94.8982
16.81,94.8982
16.8345,95.0246
16.8591,95.0246
16.8837,95.0246
16.9083,94.8982
16.9328,94.7719
16.9574,94.6455
16.982,94.6455
17.0066,95.151
17.0311,95.4037
17.0557,95.6565
17.0803,95.9092
17.1049,96.0356
17.1294,96.0356
17.154,95.9724
17.1786,96.162
17.2032,96.2884
17.2278,95.6565
17.2523,95.2774
17.2769,95.151
17.3015,95.151
17.3261,94.8982
17.3506,94.8982
17.3752,95.0246
17.3998,94.8982
17.4244,94.7719
17.4489,94.6455
17.4735,95.0246
17.4981,94.9685
17.5227,94.5191
17.5472,97.5813
17.5718,99.5741
17.5964,102.86
17.621,104.524
17.6455,100.922
17.6701,103.576
17.6947,102.102
17.7193,99.7005
17.7438,96.9202
17.7684,96.0356
17.793,95.9092
17.8176,96.162
17.8422,96.4569
17.8667,96.7939
17.8913,97.2994
17.9159,97.5521
17.9405,97.5521
17.965,97.6785
17.9896,97.4257
18.0142,97.173
18.0388,97.0466
18.0633,97.173
18.0879,97.173
18.1125,97.5521
18.1371,97.173
18.1616,97.0466
18.1862,97.1309
18.2108,97.6785
18.2354,97.8049
18.2599,98.0576
18.2845,97.9312
18.3091,98.0576
18.3337,98.184
18.3582,98.3104
18.3828,98.4367
18.4074,98.4367
18.432,98.5631
18.4566,98.6895
18.4811,98.6895
18.5057,98.5631
18.5303,97.9312
18.5549,97.9312
18.5794,97.9312
18.604,98.184
18.6286,98.0576
18.6532,97.2994
18.6777,97.173
18.7023,96.7939
18.7269,96.9202
18.7515,97.0466
18.776,97.2994
18.8006,97.2994
18.8252,97.5521
18.8498,97.4257
18.8743,97.2994
18.8989,97.173
18.9235,96.9202
18.9481,96.9202
18.9726,96.7939
18.9972,97.0466
19.0218,97.4257
19.0464,97.6785
19.071,98.0576
19.0955,98.0576
19.1201,97.8049
19.1447,97.6785
19.1693,97.6785
19.1938,98.0576
19.2184,98.4367
19.243,98.6895
19.2676,98.4367
19.2921,97.8049
19.3167,98.0576
19.3413,97.9312
19.3659,97.9312
19.3904,97.6785
19.415,97.5521
19.4396,97.4257
19.4642,97.0466
19.4887,96.6675
19.5133,96.5411
19.5379,96.6675
19.5625,96.4147
19.587,95.5301
19.6116,95.0246
19.6362,95.0246
19.6608,95.4037
19.6853,95.9092
19.7099,96.162
19.7345,96.162
19.7591,96.162
19.7837,96.2884
19.8082,96.4147
19.8328,96.5411
19.8574,96.5411
19.882,96.6675
19.9065,96.7939
19.9311,96.5411
19.9557,96.162
19.9803,96.0356
20.0048,95.7829
20.0294,95.6565
20.054,95.7829
20.0786,95.9092
20.1031,96.162
20.1277,96.4147
20.1523,96.6675
20.1769,97.173
20.2014,97.8049
20.226,98.4367
20.2506,98.5631
20.2752,98.184
20.2997,97.9312
20.3243,98.0576
20.3489,98.184
20.3735,98.4367
20.3981,98.6895
20.4226,98.9422
20.4472,99.0686
20.4718,99.195
20.4964,99.3214
20.5209,98.6895
20.5455,98.3104
20.5701,98.4115
20.5947,98.9422
20.6192,98.9422
20.6438,98.3104
20.6684,98.0576
20.693,98.3104];
x = G(:,1);y = G(:,2);
for i =1:length(x)
    y_poprawka(i) = x(i)*(x(end)-x(i))/(2*Rz);
end
y_poprawka=y_poprawka*1000;% w metrach
y2=y;
y = y'+y_poprawka;
ind = find(d<=15.9,1,'last');
[maxy,indy]=max(y);
max_height = maxy+0.3*r(ind);
A = (98+h2-b)/(15.9*1000);
LOS = A*d*1000+b;
h_Fres1 = LOS-r;h_Fres2 = LOS+r;
h_f=LOS-0.3*r;h_f2=LOS+0.3*r;
figure()
stem([d(1),d(end)],[LOS(1),LOS(end)]);hold on;
plot(G0(:,1),G0(:,2),'-g',x,y,'-*g',d,h_Fres1,'-b',d,h_Fres2,'-b',d,h_f,'-r',d,h_f2,'-r',d,LOS,'-k');grid on; grid minor; 
xlabel('Odleg�o�� [km]');ylabel('wysoko�� [m]');title('Profil trasy');
legend('Anteny','Grunt','Grunt+krzywizna+Przeszkody','Strefa Fresnela','F1','0.3F1','0.3F1','LOS');
figure()
stem([d(1),d(end)],[LOS(1),LOS(end)]);hold on;
plot(x,y2,'-*g',d,LOS,'-k');grid on; grid minor; 
xlabel('Odleg�o�� [km]');ylabel('wysoko�� [m]');title('Profil trasy');
legend('Anteny','Grunt+Przeszkody','LOS');
h2=LOS(end)-98;
hp = LOS(ind)-max(y); % przeswit
d1 = d(ind);d2 = d(end)-d1;
v = hp*sqrt(2/l*1e-3*(1/d1*1e-3+1/d2*1e-3)); % parametr przeszkody v
% phi = atand((LOS(1)-max(y))/d1*1e-3);
% mu = 4*pi*1e-7; eps = 6/36/pi*1e-9; sigma=1.7*1e-3;e0 = 1/36*1e-9;
% e_eff = 6 - 1i*sigma/(2*pi*f*e0)
% Z = sqrt(1i*2*pi*f*mu/(sigma+1i*2*pi*f*eps));
% wsp_odb = (e_eff*sind(phi)-sqrt(e_eff-cosd(phi)^2))/(e_eff*sind(phi)+sqrt(e_eff-cosd(phi)^2))
Wp = 6.9+20*log10(sqrt((-v-0.1)^2+1)-v-0.1);
Lfpl = 20*log10(4*pi*d(end)/l);
Lcal = Wp+Lfpl;
h2 = LOS(end)-98;