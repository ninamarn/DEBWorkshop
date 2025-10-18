function [data, auxData, metaData, txtData, weights] = mydata_Gammarus_pulex

%% set metaData
metaData.phylum     = 'Arthropoda'; 
metaData.class      = 'Malacostraca'; 
metaData.order      = 'Amphipoda'; 
metaData.family     = 'Gammaridae';
metaData.species    = 'Gammarus_pulex'; 
metaData.species_en = 'Freshwater shrimp'; 

metaData.ecoCode.climate = {'Cfb', 'Dfb'};
metaData.ecoCode.ecozone = {'THp'};
metaData.ecoCode.habitat = {'0iFp', '0iFl', '0iFm', '0iFc'};
metaData.ecoCode.embryo  = {'Fbf'};
metaData.ecoCode.migrate = {};
metaData.ecoCode.food    = {'biD'};
metaData.ecoCode.gender  = {'D'};
metaData.ecoCode.reprod  = {'O'};

metaData.T_typical  = C2K(13); % K, body temp
metaData.data_0     = {'ab'; 'ap'; 'am'; 'Lb'; 'Lp'; 'Li'; 'Wwb'; 'Wwp'; 'Wwi'; 'Ri'}; 
metaData.data_1     = {'t-L_T'; 't-Ww'; 'T-ab'; 'T-ap'}; 

metaData.COMPLETE = 2.5; % using criteria of LikaKear2011

metaData.author   = {'Elke Zimmer'};    
metaData.date_subm = [2011 04 05];              
metaData.email    = {'elke.zimmer@ibacon.com'};            
metaData.address  = {'Ibacon GmbH, Rossdorf, Germany'};   

metaData.author_mod_1   = {'Bas Kooijman'};    
metaData.date_mod_1 = [2013 08 21];              
metaData.email_mod_1    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_1  = {'VU University Amsterdam'};   

metaData.author_mod_2   = {'Bas Kooijman'};    
metaData.date_mod_2 = [2016 02 03];              
metaData.email_mod_2    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_2  = {'VU University Amsterdam'};   

metaData.author_mod_3   = {'Annika Mangold-Doering'};    
metaData.date_mod_3 = [2021 05 17];              
metaData.email_mod_3    = {'annika.mangold-doering@wur.nl'};            
metaData.address_mod_3  = {'Wageningen University'};   

metaData.author_mod_4   = {'Bas Kooijman'};    
metaData.date_mod_4     = [2023 03 30];              
metaData.email_mod_4    = {'bas.kooijman@vu.nl'};            
metaData.address_mod_4  = {'VU University, Amsterdam'};   

metaData.curator     = {'Starrlight Augustine'};
metaData.email_cur   = {'starrlight@tecnico.ulisboa.pt'}; 
metaData.date_acc    = [2023 03 30];

%% set data
% zero-variate data

data.ab = 33.6;  units.ab = 'd';    label.ab = 'age at birth';             bibkey.ab = 'McCaPasc1988';   
  temp.ab = C2K(10);  units.temp.ab = 'K'; label.temp.ab = 'temperature';
data.tp = 180;   units.tp = 'd';    label.tp = 'time since birth at puberty'; bibkey.tp = 'guess';
  temp.tp = C2K(10);  units.temp.tp = 'K'; label.temp.tp = 'temperature';
  comment.tp = 'Read from tL-curve for Lp';
data.am = 470;   units.am = 'd';    label.am = 'life span';                bibkey.am = 'Zimm2011';   
  temp.am = C2K(13);  units.temp.am = 'K'; label.temp.am = 'temperature'; 

data.Lb  = 0.2;  units.Lb  = 'cm';  label.Lb  = 'total length at birth';   bibkey.Lb  = 'McCaPasc1988';
data.Lp  = 0.8;  units.Lp  = 'cm';  label.Lp  = 'total length at puberty'; bibkey.Lp  = 'McCaPasc1988';
data.Li  = 1.146;units.Li  = 'cm';  label.Li  = 'ultimate total length';   bibkey.Li  = 'McCaPasc1988';

data.Wwb = 0.135;units.Wwb = 'mg';  label.Wwb = 'wet weight at birth';     bibkey.Wwb = 'SutcCarr1981';
data.Wwp = 5;    units.Wwp = 'mg';  label.Wwp = 'wet weight at puberty';   bibkey.Wwp = 'SutcCarr1981';
data.Wwi = 51;   units.Wwi = 'mg';  label.Wwi = 'ultimate wet weight';     bibkey.Wwi = 'SutcCarr1981';

data.Ri  = 22/30;units.Ri  = '#/d'; label.Ri  = 'maximum reprod rate';     bibkey.Ri  = 'SutcCarr1981';   
  temp.Ri = C2K(13);  units.temp.Ri = 'K'; label.temp.Ri = 'temperature';
 
%% uni-variate data

% time - length data
data.tL = [ ... % time since birth (d), wet weight (g)
7.82806921963  2.24083499405;
25.1401453784  3.04268161551;
47.8644855123  4.11177221179;
67.2052645916  4.00716856156;
83.9080130181  8.27561685472;
110.847467347  8.70515706318;
171.070552983  8.76491419232;
220.784527377  10.6368836829;
473.56234498   11.3038466501];
data.tL(:,2) = data.tL(:,2) ./10; % convert mm to cm
units.tL   = {'d', 'cm'};  label.tL = {'time since birth', 'length McCaPasc1988'};  
temp.tL    = C2K(13);  units.temp.tL = 'K'; label.temp.tL = 'temperature';
bibkey.tL = 'McCaPasc1988';
%
data.tL2 = [ ... % time since start (d), length (cm)
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.511	0.575	0.575	0.464	0.583	0.565	0.538	0.534	0.482	0.575	0.453	0.589	0.495	0.597	0.582	0.587	0.587	0.622	0.622	0.548	0.4	0.504	0.502	0.441	0.539	0.552	0.464	0.51	0.557	0.506	0.482	0.572	0.535	0.569	0.523	0.634	0.497	0.599	0.611	0.55	0.592	0.56	0.607	0.512	0.623	0.452	0.499	0.536	0.528	0.592	0.527	0.516	0.415	0.698	0.519	0.603	0.61	0.648	0.681	0.615	0.673	0.453	0.622	0.649	0.59	0.632	0.658	0.606	0.649	0.617	0.59	0.449	0.566	0.589	0.555	0.601	0.587	0.59	0.592	0.622	0.539	0.562	0.606	0.69	0.61	0.548	0.451	0.597	0.665	0.788	0.602	0.642	0.741	0.607	0.654	0.604	0.66	0.521	0.649	0.463	0.584	0.661	0.561
]';
n=size(data.tL2,1); for i=2:n; if data.tL2(i,1)<=data.tL2(i-1,1); data.tL2(i,1)=data.tL2(i-1,1)+1e-8; end;end
units.tL2   = {'d', 'cm'};  label.tL2 = {'time since start', 'length', '7 C'};  
temp.tL2    = C2K(7);  units.temp.tL2 = 'K'; label.temp.tL2 = 'temperature';
bibkey.tL2 = 'Huan2021';
comment.tL2 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time' ...
'dual measurements but not individually tracked over time'];
%
data.tL3 = [ ... % time since start (d), length (cm)
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.505	0.503	0.56	0.564	0.635	0.672	0.621	0.6	0.492	0.555	0.531	0.488	0.602	0.534	0.592	0.555	0.505	0.495	0.524	0.517	0.464	0.571	0.438	0.629	0.574	0.647	0.503	0.496	0.675	0.614	0.503	0.603	0.57	0.524	0.631	0.656	0.542	0.695	0.455	0.597	0.529	0.832	0.545	0.567	0.53	0.561	0.503	0.593	0.522	0.558	0.51	0.607	0.575	0.499	0.605	0.645	0.59	0.756	0.641	0.679	0.667	0.573	0.641	0.798	0.723	0.659	0.602	0.754	0.616	0.583	0.652	0.595	0.565	0.654	0.647	0.69	0.671	0.633	0.673	0.594	0.686	0.585	0.663	0.612	0.706	0.587	0.518	0.608	0.535	0.604	0.623	0.64	0.544	0.694	0.604	0.645	0.528	0.79	0.674	0.679	0.583	0.578	0.652	0.651	0.568	0.662	0.619	0.588	0.68
]';
n=size(data.tL3,1); for i=2:n; if data.tL3(i,1)<=data.tL3(i-1,1); data.tL3(i,1)=data.tL3(i-1,1)+1e-8; end;end
units.tL3   = {'d', 'cm'};  label.tL3 = {'time since start', 'length', '11 C'};  
temp.tL3    = C2K(11);  units.temp.tL3 = 'K'; label.temp.tL3 = 'temperature';
bibkey.tL3 = 'Huan2021'; 
comment.tL3 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%
data.tL4 = [ ... % time since start (d), length (cm)
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28	28
0.776	0.597	0.596	0.678	0.658	0.623	0.684	0.69	0.607	0.54	0.572	0.659	0.663	0.682	0.618	0.568	0.565	0.513	0.516	0.568	0.547	0.662	0.534	0.529	0.625	0.589	0.524	0.58	0.46	0.621	0.486	0.599	0.712	0.497	0.578	0.494	0.506	0.653	0.401	0.514	0.59	0.652	0.689	0.655	0.661	0.58	0.55	0.483	0.651	0.546	0.551	0.7	0.569	0.535	0.615	0.637	0.66	0.761	0.677	0.781	0.711	0.794	0.604	0.707	0.66	0.794	0.509	0.682	0.553	0.781	0.716	0.477	0.597	0.659	0.667	0.653	0.699	0.58	0.659	0.638	0.629	0.751	0.672	0.646	0.615	0.677	0.708	0.735	0.485	0.633	0.605	0.674	0.577	0.558	0.716	0.593	0.517	0.555	0.716
]';
n=size(data.tL4,1); for i=2:n; if data.tL4(i,1)<=data.tL4(i-1,1); data.tL4(i,1)=data.tL4(i-1,1)+1e-8; end;end
units.tL4   = {'d', 'cm'};  label.tL4 = {'time since start', 'length', '4 C'};  
temp.tL4    = C2K(15);  units.temp.tL4 = 'K'; label.temp.tL4 = 'temperature';
bibkey.tL4 = 'Huan2021';
comment.tL4 =  ['Control group of chronic toxicity test (imidacloprid Dec. 2020).'...
'Age of the individuals was unknown due to field catchment, '...
'lifestage was juvenile, sex was not distinguished, length measurements are '...
'individual measurements but not individually tracked over time'];
%


% time - weight data
data.tW_f = [ ... % time since birth (d), wet weight (mg)
30.91	38.61	46.89	62.88	80.01	90.01	104.29	113.71	126.85	141.13	154.85	170.29	180.58	191.45	208.61	219.17	230.06	239.2	247.21	254.07	268.36	282.06	307.18	315.47	328.62	335.19	342.62	350.06	356.9	363.2	373.76	379.48	383.77	391.19	398.04	412.88	419.16	434.57	439.42	447.13
0.99	0.76	1.1	2.11	3.07	4.26	6.02	6.52	8	9.24	11.4	14.92	17.02	19.8	24.29	24.63	29.81	30.37	33.16	34.58	36.28	36.55	38.02	39.83	42.62	42.9	43.98	46.82	45.22	47.95	47.37	49.31	50.27	50.84	50.83	51.16	51.05	51.15	51.09	51.31
]';
units.tW_f   = {'d', 'mg'};  label.tW_f = {'time since birth', 'wet weight', 'female'};  
temp.tW_f    = C2K(15);  units.temp.tW_f = 'K'; label.temp.tW_f = 'temperature';
bibkey.tW_f = 'SutcCarr1981';
%
data.tW_m = [ ... % time since birth (d), wet weight (mg)
30.91	38.61	46.89	62.88	78.88	90.31	104.61	114.62	127.77	143.23	155.27	170.26	181.75	192.58	209.49	220.34	230.48	239.95	248.05	254.12	268.99	283.16	292.6	308.14	315.56	329.72	336.48	349.96	357.39	364.12
0.99	0.76	1.1	2.11	4.38	6.48	10.35	12.68	15.52	20.86	27.35	33.15	35.43	39.87	44.98	51.84	54.39	57.89	58.55	59.22	62.31	63.24	61.89	65.25	65.11	64.42	66.98	64.68	66.29	64.81
]';
units.tW_m   = {'d', 'mg'};  label.tW_m = {'time since birth', 'wet weight', 'male'};  
temp.tW_m    = C2K(15);  units.temp.tW_m = 'K'; label.temp.tW_m = 'temperature';
bibkey.tW_m = 'SutcCarr1981';

data.Tab = [ ... % time since birth (d), wet weight (mg)
	1  110.5;
	5  59.3;
	10 33.6;
	15 20.6];
units.Tab   = {'C', 'd'};  label.Tab = {'temperature', 'age at birth'};  
bibkey.Tab = 'Nils1977';


%% set weights for all real data
weights = setweights(data, []);
weights.tW_m = 5* weights.tW_m;

%% set pseudodata and respective weights
[data, units, label, weights] = addpseudodata(data, units, label, weights);

%% pack auxData and txtData for output
auxData.temp = temp;
txtData.units = units;
txtData.label = label;
txtData.bibkey = bibkey;
txtData.comment = comment;

%% Group plots
set1 = {'tL4','tL3','tL2'}; comment1 = {'Data for 15, 11, 7 C'};
set2 = {'tW_f','tW_m'}; subtitle2 = {'Data for female, male'};
metaData.grp.sets = {set1,set2};
metaData.grp.subtitle = {comment1,subtitle2};

%% Discussion points
D1 = 'Males are assumed to differ from females by {p_Am} only';
D2 = 'mod 3: tL data added for different temperatures';
D3 = 'mod_4: males have equal state variables at b, compared to females';
metaData.discussion = struct('D1',D1, 'D2',D2, 'D3',D3);

%% Links
metaData.links.id_CoL = '3F8JD'; % Cat of Life
metaData.links.id_ITIS = '206451'; % ITIS
metaData.links.id_EoL = '344717'; % Ency of Life
metaData.links.id_Wiki = 'Gammarus_pulex'; % Wikipedia
metaData.links.id_ADW = 'Gammarus_pulex'; % ADW
metaData.links.id_Taxo = '34297'; % Taxonomicon
metaData.links.id_WoRMS = '234074'; % WoRMS

%% References
bibkey = 'Wiki'; type = 'Misc'; bib = ...
'howpublished = {\url{http://en.wikipedia.org/wiki/Gammarus_pulex}}';
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Kooy2010'; type = 'Book'; bib = [ ...  % used in setting of chemical parameters and pseudodata
'author = {Kooijman, S.A.L.M.}, ' ...
'year = {2010}, ' ...
'title  = {Dynamic Energy Budget theory for metabolic organisation}, ' ...
'publisher = {Cambridge Univ. Press, Cambridge}, ' ...
'pages = {Table 4.2 (page 150), 8.1 (page 300)}, ' ...
'howpublished = {\url{../../../bib/Kooy2010.html}}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'McCaPasc1988'; type = 'Article'; bib = [ ... 
'author = {McCahon, C. P. and Pascoe, D}, ' ... 
'year = {1988}, ' ...
'title = {Cadmium toxicity to the freshwater amphipod \emph{Gammarus pulex} ({L}.) during the moult cycle}, ' ...
'journal = {Freshwater Biology}, ' ...
'doi = {10.1111/j.1365-2427.1988.tb00342.x}, ' ...
'volume = {19}, ' ...
'pages = {197--203}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'SutcCarr1981'; type = 'Article'; bib = [ ... 
'author = {Sutcliffe, D. W. and Carrick, T. R. and Willoughby, L. G.}, ' ... 
'year = {1981}, ' ...
'title = {Effects of diet, body size, age and temperature on growth rates in the amphipod \emph{Gammarus pulex}}, ' ...
'journal = {Freshwater Biology}, ' ...
'doi = {10.1111/j.1365-2427.1981.tb01252.x}, ' ...
'volume = {11}, ' ...
'pages = {183--214}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Nils1977'; type = 'Article'; bib = [ ... 
'author = {Nilsson, L. M.}, ' ... 
'year = {1977}, ' ...
'title = {Incubation Time, Growth and Mortality of the Amphipod \emph{Gammarus pulex} under Laboratory Conditions}, ' ...
'journal = {Oikos}, ' ...
'volume = {29}, ' ...
'pages = {93--98}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Zimm2011'; type = 'Misc'; bib = [ ... 
'author = {Zimmer, E.}, ' ... 
'note = {pers. comm. Alpar Barsi/Julita}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];
%
bibkey = 'Huan2021'; type = 'misc'; bib = [ ... 
'author = {Anna Huang}, ' ... 
'title = {Chronic toxicity of flupyradifurone and imidacloprid to \emph{Gammarus pulex} at different temperatures}, ' ...
'note = {unpublished data; Only control data used for the entries}'];
metaData.biblist.(bibkey) = ['''@', type, '{', bibkey, ', ' bib, '}'';'];




