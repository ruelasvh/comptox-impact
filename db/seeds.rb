# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Home.delete_all
Scientist.delete_all
PublicationType.delete_all
Publication.delete_all
ScientistPublication.delete_all

################################################
# Landing page info
################################################
Home.create!(
    title: "EPA Computational Toxicology Impact",
    intro: "Chemical safety has been a major priority for EPA since it was established in 1970. As the number of chemicals entering the marketplace has increased, evaluating chemicals for potential health effects has become a formidable challenge. Today, some 80,000 chemicals are listed or registered under the Toxic Substance Control Act (TSCA), and hundreds of new chemicals are introduced every year. EPA's computational toxicology research has made a tremendous impact on this challenge by developing scientific approaches that can be used to evaluate thousands of chemicals for potential health effects. Approaches are faster, more efficient, and far less costly than traditional methods. Learn more about our impact by exploring our scientists, publications and data.",
    scientists_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/NCCT_Staff.jpg",
    publications_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Publications.jpg",
    datatools_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Data_Tools.jpg",
    impact_img_url: "http://comptox.ag.epa.gov/impact/api/home/photo/Impact.jpg"
)

Scientist.create!(
    scientistId: 1,
    firstName: "Ann",
    lastName: "Richard",
    email: "richard.ann@epa.gov",
    title: "Research Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/1/photo/1.jpg",
    orcid: "0000-0003-2116-2300",
    researchGate: "https://www.researchgate.net/profile/Ann_Richard",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2109703804",
    linkedIn: "https://www.linkedin.com/in/ann-richard-77b1b64",
    vivo: "http://vivo.epa.gov/vivo/individual/person2461",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Richard has worked as a computational chemist researcher in EPA&apos;s Office of Research and Development for over 30 years, joining the National Center for Computational Toxicology (NCCT) in 2005.  Within NCCT, she has led the DSSTox project and chemical management efforts in support of EPA&apos;s ToxCast and Tox21 programs.  Her research interests lie in creating a knowledge-informed cheminformatics interface between the chemical landscape and the in vitro and in vivo data landscapes that can be used to guide modeling into productive areas of mechanistic inquiry. </p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A./B.S., State University of New York at Oswego, NY; Math/Chemistry, 1978</li><li>Ph.D., University of North Carolina at Chapel Hill, NC; Theoretical Physical Chemistry, 1983</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>ORD Science &amp; Technology Achievement Awards, Level III, 2011, 2012, 2015</li><li>EPA National Honor Award: Science Achievement Awards, 2012, 2013, 2014</li><li>White House Invitation for Champions of Change: Open Science Award Ceremony, 2013</li><li>EPA Superior Achievement Recognition Awards, 2009-2015</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/1"
)

Scientist.create!(
    scientistId: 2,
    firstName: "Antony",
    lastName: "Williams",
    email: "williams.antony@epa.gov",
    title: "Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/2/photo/2.jpg",
    orcid: "0000-0002-2668-4821",
    plumx: "https://plu.mx/u/awilliams/",
    researchGate: "https://www.researchgate.net/profile/Antony_Williams",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2120589406",
    googleScholar: "https://scholar.google.com/citations?user=O2L8nh4AAAAJ",
    linkedIn: "https://www.linkedin.com/in/antonywilliams",
    vivo: "http://vivo.epa.gov/vivo/individual/person1386434520",
    publons: "https://publons.com/a/306575/",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Williams&apos; present focus at NCCT is as part of the Chemical Safety for Sustainability (CSS) Research Program to develop a cheminformatics architecture for the center. This work has already produced the publicly accessible website, the iCSS Chemistry Dashboard, providing access to chemistry related data for over 700,000 chemicals (<a href=\"https://comptox.epa.gov/dashboard\" target=\"_blank\">https://comptox.epa.gov/dashboard</a>).</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Liverpool University, Liverpool, UK; Chemistry, 1985</li><li>Ph.D., University of London, London, UK; Chemistry, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>North Carolina ACS Distinguished Lecturer, 2016</li><li>Microsoft eScience Jim Gray Award, 2012</li><li>Fellow of the Royal Society of Chemistry, 2009</li><li>University of London Bourne Medal for best Chemistry Thesis, 1988</li><li>Morris Ranger Undergraduate scholarship, 1983</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/2"
)

Scientist.create!(
    scientistId: 3,
    firstName: "Audrey",
    lastName: "Bone",
    email: "bone.audrey@epa.gov",
    title: "Toxicologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/3/photo/3.jpg",
    researchGate: "https://www.researchgate.net/profile/Audrey_Bone",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2142497096",
    googleScholar: "https://scholar.google.com/citations?user=zzJk_hIAAAAJ",
    linkedIn: "https://www.linkedin.com/in/audrey-bone-20b23186",
    vivo: "http://vivo.epa.gov/vivo/individual/person1353701027",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Bone is a toxicologist with 7 years of experience conducting independent research on the impact of environmental exposures on biological pathways. She has experience in mechanistic and eco-toxicology using zebrafish, mosquitofish and Atlantic killifish as model systems as well as computational toxicology using quantitative high throughput screening (qHTS) datasets such as ToxCast.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Clemson University, Clemson, SC; Chemistry, 2009</li><li>Ph.D., Duke University, Durham, NC; Integrated Toxicology and Environmental Health</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>K.C. Donnelly Externship Award Supplement, 2013</li><li>Duke Integrated Toxicology and Environmental Health Program Fellowship, 2009</li><li>Undergraduate Award for Excellence in Environmental Chemistry, ACS, 2007</li><li>Robert C. Byrd Fellowship, 2005-2009</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/3"
)

Scientist.create!(
    scientistId: 4,
    firstName: "Chris",
    lastName: "Grulke",
    email: "grulke.chris@epa.gov",
    title: "Cheminformatician",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/4/photo/4.jpg",
    orcid: "0000-0001-5606-7560 ",
    researchGate: "https://www.researchgate.net/profile/Christopher_Grulke",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2045514313",
    linkedIn: "https://www.linkedin.com/in/christopher-grulke-05486727",
    vivo: "http://vivo.epa.gov/vivo/individual/person2745",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Grulke is an advanced cheminformatics scientist and software developer with comprehensive knowledge in integrating chemical and biological data into models for decision support. He has ten years of hands-on experience storing, integrating, visualizing and analyzing complex datasets. He also has a broad array of interests and skills including cheminformatics, toxicological modeling, exposure modeling, PBPK modeling, ADME property prediction, statistical analysis, machine learning, text-mining, natural language processing, programming, and software engineering.</p></br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S.E., University of Michigan, Ann Arbor, MI; Chemical Engineering, 2003</li><li>Ph.D., University of North Carolina at Chapel Hill; Pharmaceutical Science, Medicinal Chemistry, and Biophysics, 2011</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA Special Accomplishment Award, 2013</li><li>NERL Exposure Science Excellence Award, 2013</li><li>HEASD Paper of the Year Award, 2013</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/4"
)

Scientist.create!(
    scientistId: 5,
    firstName: "Danica",
    lastName: "DeGroot",
    email: "degroot.danica@epa.gov",
    title: "Post-Doctoral Fellow",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/5/photo/5.jpg",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2109463749",
    linkedIn: "https://www.linkedin.com/in/danica-degroot-434494a4",
    vivo: "http://vivo.epa.gov/vivo/individual/person2132516277",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. DeGroot is involved in the design and refinement of in vitro assays to detect environmental toxicants and is currently researching methods to retrofit existing high-throughput screening (HTS) assays with metabolic competence.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., summa cum laude, Colorado State University, Fort Collins, CO; Environmental Health, 2001</li><li>Ph.D., University of California, Davis, CA; Pharmacology and Toxicology, 2012</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Graduate Student Researcher Traineeship, UC Davis Superfund Basic Research and Training Program, 2008</li><li>Honorable Mention for Graduate Student Poster, Molecular Biology Specialty Section, Annual Meeting of the Society of Toxicology, 2008.</li><li>Trainee, NIEHS Training Grant in Environmental Toxicology, UC Davis, 2005-2008.</li><li>Schwall Fellowship in Medical Research, UC Davis, 2003-2005</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/5"
)

Scientist.create!(
    scientistId: 6,
    firstName: "Danielle",
    lastName: "Suarez",
    email: "suarez.danielle@epa.gov",
    title: "Biologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/6/photo/6.jpg",
    researchGate: "https://www.researchgate.net/profile/Danielle_Suarez",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2550536604",
    linkedIn: "https://www.linkedin.com/in/danielle-suarez-7772bb15",
    vivo: "http://vivo.epa.gov/vivo/individual/person1853",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Danielle Suarez’s academic training includes a B.S in Zoology from North Carolina State University. During her studies, Ms. Suarez was a student intern at the National Institutes of Environmental Health Sciences in the Laboratory of Respiratory Biology (now known as the Cell Biology Group) headed by Dr. Anton M. Jetten. During this internship she was able to learn a vast array of cell biology laboratory techniques. After her 2 year internship at NIEHS, Ms. Suarez was a medium throughput protein screener at Agarigen, a startup biotechnology company. During this time she developed protein assays to analyze bio manufactured proteins of interest. Currently, Ms. Suarez is a Biologist in NCCT, working to help develop cell based assays to determine mitochondrial toxicants in environmental chemicals.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., North Carolina State University, Raleigh, NC; Zoology, 2007.</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/6"
)

Scientist.create!(
    scientistId: 7,
    firstName: "Chad",
    lastName: "Deisenroth",
    email: "",
    title: "",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/7/photo/7.jpg",
    orcid: "0000-0002-0276-9716",
    researchGate: "http://orcid.org/0000-0002-0276-9716",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/1802254305",
    linkedIn: "http://orcid.org/0000-0002-0276-9716",
    vivo: "http://vivo.epa.gov/vivo/individual/person1215167992",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/7"
)

Scientist.create!(
    scientistId: 8,
    firstName: "Grace",
    lastName: "Patlewicz",
    email: "tier.grace@epa.gov",
    title: "Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/8/photo/8.jpg",
    orcid: "0000-0003-3863-9689",
    researchGate: "https://www.researchgate.net/profile/Grace_Patlewicz",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/83979198",
    linkedIn: "https://www.linkedin.com/in/grace-p-0341b84",
    vivo: "http://vivo.epa.gov/vivo/individual/person838233731",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Patlewicz is a computational toxicologist with industrial and regulatory experience especially in the field of mammalian toxicity.  She helps lead an innovative research programme for the development and application of computational chemistry to identify chemical features associated with specific biological interactions or modes of action and predict specific manifestations of toxicity of environmental and industrial chemicals.  Dr. Patlewicz also leverages the principles of computational chemistry in the development of tools that chemical regulators, researchers, and practitioners use to predict the hazard, pharmacokinetic, and exposure related properties of new and legacy chemicals or as an adjunct to mode of action in risk assessment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of Manchester, Manchester, UK; Chemsitry, 1994</li><li>M.S., University of Surrey, Guildford, UK; Toxicology, 1996</li><li>Post-graduate Diploma, Henley College, Henley-on-Thames, UK; Management, 2000</li><li>Ph.D., University of Santiago de Compostela, Spain; Organic Chemistry, 2007</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/8"
)

Scientist.create!(
    scientistId: 9,
    firstName: "Imran",
    lastName: "Shah",
    email: "shah.imran@epa.gov",
    title: "Computational Systems Biologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/9/photo/9.jpg",
    researchGate: "https://www.researchgate.net/profile/Imran_Shah6",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2093703150",
    googleScholar: "https://scholar.google.com/citations?user=JLB6_1MAAAAJ",
    linkedIn: "https://www.linkedin.com/in/imranshah",
    vivo: "http://vivo.epa.gov/vivo/individual/person2808",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Imran Shah is a computational systems biologist in EPA&apos;s National Center for Computational Toxicology (NCCT). Dr. Shah provides NCCT leadership in innovative computational approaches to rapidly evaluate health implications for thousands of environmental stressors. His research focuses on predicting chemical-induced toxicity from complex large-scale molecular data sets using novel machine learning and systems biology methods.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.Sc., Imperial College of Science, Technology and Medicine, London, UK; 1989</li><li>M.S., George Mason University, Fairfax, VA; 1993</li><li>Ph.D., George Mason University, Fairfax, VA; 1999</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA, Pathfinder Innovation Project (PIP) Award, 2015</li><li>EPA, Science and Technical Achievement Award, 2013</li><li>EPA, Chemical Safety for Sustainability, Bronze Medal for Commendable Service, 2011</li><li>Best poster in session, International Conference on Systems Biology, 2010</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/9"
)

Scientist.create!(
    scientistId: 10,
    firstName: "Jeremy",
    lastName: "Fitzpatrick",
    email: "fitzpatrick.jeremy@epa.gov",
    title: "Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/10/photo/10.jpg",
    orcid: "0000-0002-5401-9706",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2340205759",
    linkedIn: "https://www.linkedin.com/in/jeremyfitzpatrickphd",
    vivo: "http://vivo.epa.gov/vivo/individual/person1726165655",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Fitzpatrick&apos;s work at Dartmouth included the structure based drug design of a compound to inhibit the interaction of sodium hydrogen exchange regulatory factors 1 and 2 with the parathyroid hormone 1 receptor.  It has been proposed that inhibiting this interaction could be helpful for the treatment of osteoporosis.  Another of his projects at Dartmouth was to observe cell penetrating peptides binding to their targets in E. coli using in-cell nuclear magnetic resonance.  Currently, at the National Center for Computational Chemistry, he develops methods to determine if particular chemicals may be hazardous to humans of the environment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of North Carolina at Asheville; Chemistry, 2008</li><li>Ph.D., Dartmouth College; Biophysical Chemistry, 2014</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Graduate Assistance in Areas of National Need Fellowship, Department of Education, 2012</li><li>Research Scholar, University of North Carolina at Asheville, 2008</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/10"
)

Scientist.create!(
    scientistId: 11,
    firstName: "John",
    lastName: "Cowden",
    email: "cowden.john@epa.gov",
    title: "Biologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/11/photo/11.jpg",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2210596144",
    linkedIn: "https://www.linkedin.com/in/john-cowden-4729a27",
    vivo: "http://vivo.epa.gov/vivo/individual/person2321",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Cowden has worked for more than 10 years at the US EPA. He has performed research on chemical safety using alternative species to identify developmental neurotoxicants. He has also worked on human health risk assessments, serving as an expert in developmental biology and neurodevelopment. In his current role, Dr. Cowden manages NCCT&apos;s research portfolio for the Chemical Safety for Sustainability, Human Health Risk Assessment, and Safe and Sustainable Water Research National Programs. He helps facilitate communications between the National Programs and NCCT on initiation, progress, and delivery of research products, and he works to align NCCT scientific research with National Program strategic vision.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>BS in Biology, minor in Chemistry, College of William and Mary</li><li>Ph.D. in Molecular and Cell Biology, University of California at Berkeley</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>ORD Bronze Medal for IRIS Outreach</li><li>NCEA Gold Medal for inorganic arsenic public workshop</li><li>ORD Bronze Medal for working on EPA response to E15 biofuel waiver request</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/11"
)

Scientist.create!(
    scientistId: 12,
    firstName: "John",
    lastName: "Wambaugh",
    email: "wambaugh.john@epa.gov",
    title: "Physical ScientistMain",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/12/photo/12.jpg",
    orcid: "0000-0002-4024-534X",
    researchGate: "https://www.researchgate.net/profile/John_Wambaugh",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2077411009",
    googleScholar: "https://scholar.google.com/citations?user=t2MGODwAAAAJ",
    linkedIn: "https://www.linkedin.com/in/john-wambaugh-90a2586",
    vivo: "http://vivo.epa.gov/vivo/individual/person2464",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Wambaugh&apos;s areas of active research include high throughput methods for exposure, toxicokinetics, and toxicology; Bayesian statistics; and biostatistics. He co-leads the EPA ExpoCast project and is a member of the ToxCast team. John&apos;s research on these projects focuses on predicting human chemical effects and exposures using in vitro laboratory measurements and computer simulations, and rigorously evaluating these predictions using statistical methodology.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of Michigan, Ann Arbor, MI; Physics, 1999</li><li>M.S., Georgia Institute of Technology, Atlanta, GA; Physics, 2001</li><li>M.S., Duke University, Durham, NC; Computer Science, 2005</li><li>Ph.D., Duke University, Durham, NC; Physics, 2006</li><li>Post-Doc, National Center for Computational Toxicology, Durham, NC; Statistical Analysis of Biological Models, 2008</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Risk Assessment Specialty Section of the Society of Toxicology Top Ten Abstracts: Rager, et al. “Linking High Resolution Mass Spectrometry Data with Exposure and Toxicity Forecasts to Advance High-Throughput Environmental Monitoring, 2016</li><li>Honorable Mention, Best Paper in Biological Modeling, Biological Modeling Specialty Section of the Society of Toxicology: Wetmore et al., &#8220;Incorporating High-Throughput Exposure Predictions with Dosimetry-Adjusted In Vitro Bioactivity to Inform Chemical Toxicity Testing&#8221;, 2016</li><li>U.S. E.P.A. Scientific and Technological Achievement Award for &#8220;High Throughput Heuristics for Prioritizing Human Exposure to Environmental Chemicals&#8221;, 2015</li><li>U.S. E.P.A. Bronze Medal for National Research Program Team for &#8220;Chemicals Safety for Sustainability&#8221;, 2015</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/12"
)

Scientist.create!(
    scientistId: 13,
    firstName: "Keith",
    lastName: "Houck",
    email: "houck.keith@epa.gov",
    title: "Physical ScientistMain",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/13/photo/13.jpg",
    orcid: "0000-0002-0055-2249",
    researchGate: "https://www.researchgate.net/profile/Keith_Houck",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/1734749213",
    googleScholar: "https://scholar.google.com/citations?user=1JpQzTYAAAAJ",
    linkedIn: "https://www.linkedin.com/in/keith-houck-9732972",
    vivo: "http://vivo.epa.gov/vivo/individual/person2465",
    publons: "https://publons.com/a/1202553/",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Prior to joining the EPA, Dr. Houck worked in the biotechnology and pharmaceutical fields where he applied molecular and cellular biology skills towards identification of drug candidates for Sphinx Pharmaceuticals and Eli Lilly &amp; Co.  He leads efforts within the EPA&apos;s Chemical Safety for Sustainability Program is researching new, more efficient, ways to address managing the safety of chemicals, particularly in assessing chemicals for potential risk to human health and the environment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Guilford College, Greensboro, NC; Biology, 1980</li><li>M.S., University of North Carolina, Chapel Hill; Chemistry, 1982</li><li>Ph.D., Duke University, Durham, NC; Pathology/Toxicology, 1989</li><li>Post-doc, Genentech, Inc.; Molecular and Cellular Biology, 1992</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Editorial Board, Journal of Biomolecular Screening, 2010-present</li><li>Exceptional/Outstanding ORD Technical Assistance to the Regions of Program Offices: Assistance with Multiple SAP Reviews for OSCP, 2014</li><li>White House invitation for the Champions of Change award ceremony for efforts to provide public access to innovative science, 2013</li><li>U.S. EPA Level I Scientific and Technological Achievement Award: Advancing Chemical Safety Assessment via the Development of Predictive Reproductive and Developmental Toxicity Models, 2013</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/13"
)

Scientist.create!(
    scientistId: 14,
    firstName: "Kevin",
    lastName: "Crofton",
    email: "crofton.kevin@epa.gov",
    title: "Deputy Director",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/14/photo/14.jpg",
    orcid: "0000-0003-1749-9971",
    researchGate: "https://www.researchgate.net/profile/Kevin_Crofton",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2467734711",
    linkedIn: "https://www.linkedin.com/in/kevin-crofton-845a0310",
    vivo: "http://vivo.epa.gov/vivo/individual/person1862",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Crofton has worked for more than 30 years as a developmental neurotoxicologist at the US Environmental Protection Agency&apos;s Office of Research and Development in Research Triangle Park, North Carolina. His research interests include developmental neurotoxicity, with an emphasis on development of adverse outcome pathways and in vitro alternative testing methods.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Miami University, Oxford, OH; Zoology, 1977</li><li>M.S., Miami University, Oxford, OH; Zoology, 1980</li><li>Ph.D., The University of North Carolina, Chapel Hill; Toxicology, 1986</li><li>Postdoctoral Fellowship, U.S. EPA; Neurotoxicology, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Scientific and Technological Achievement Award (Level III) for &#8220;Characterization of an Adverse Outcome Pathway for the Thyroid-Disrupting Activity of Triclosan across Life-Stages&#8221;</li><li>ORD Science Communication Award &#8220;For sustained communication about ORD&apos;s science to prioritize and screen chemicals and to enhance the interpretation of data in support of the Agency mission&#8221;</li><li>Exceptional/Outstanding ORD Technical Assistance to the Regions or Program Office Award &#8220;For the development and presentation of reports to the sap on modeling approaches to estimate exposure and dose for use in cumulative risk&#8221;</li><li>Gold Medal for Exceptional Service &#8220;For outstanding contributions to environmental protection through research in development of state-of-the-science methods to characterize environmental risks posed by perchlorate contamination&#8221;</li><li>Society of Toxicology, Astra-Zenca Traveling Lectureship Award.</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/14"
)

Scientist.create!(
    scientistId: 15,
    firstName: "Joshua",
    lastName: "Harrill",
    email: "",
    title: "",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/15/photo/15.jpg",
    orcid: "0000-0003-4317-6391",
    researchGate: "https://www.researchgate.net/profile/Joshua_Harrill",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2306819228",
    linkedIn: "https://www.linkedin.com/in/joshua-harrill-9a91661",
    vivo: "http://vivo.epa.gov/vivo/individual/person1282560561",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/15"
)

Scientist.create!(
    scientistId: 16,
    firstName: "Richard",
    lastName: "Judson",
    email: "judson.richard@epa.gov",
    title: "Research Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/16/photo/16.jpg",
    orcid: "0000-0002-2348-9633",
    researchGate: "https://www.researchgate.net/profile/Richard_Judson",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2230885799",
    googleScholar: "https://scholar.google.com/citations?user=ovOQEPQAAAAJ",
    linkedIn: "https://www.linkedin.com/in/richard-judson-57a32443",
    vivo: "http://vivo.epa.gov/vivo/individual/person2805",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Judson develops databases and computer applications to model and predict toxicological effects of a wide range of chemicals. He is a member of the EPA ToxCast team where he leads the effort in bioinformatics. His team has developed the ACToR (Aggregated Computational Toxicology Resource) database and application which compiles all publicly available data on environmental chemicals.  Dr. Judson has authored research publications in areas including computational biology and chemistry, bioinformatics, genomics, human genetics, toxicology and applied mathematics.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Rice University, Houston, TX; Chemistry and Chemical Physics, 1981</li><li>M.A., Princeton University, Princeton, NJ; Chemistry, 1984</li><li>Ph.D., Princeton University, Princeton, NJ; Chemistry, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA / ORD Gold Coin Award for Response to Gulf Oil Spill (2011)</li><li>EPA Science and Technological Achievement Award / National Honor Award &#8220;For outstanding accomplishment establishing a computational toxicology program&#8221; (2011)</li><li>EPA / OSCPP Honor Award: &#8220;Endocrine Disruptor Screening Program Team, Silver Medal for Superior Service&#8221; (2013)</li><li>EPA / ORD Honor Award: Exceptional/Outstanding ORD Technical Assistance to the Regions or Program Offices, Endocrine Disruptor Screening Program Assistance Team (2014)</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/16"
)

Scientist.create!(
    scientistId: 17,
    firstName: "Russell",
    lastName: "Thomas",
    email: "thomas.russell@epa.gov",
    title: "Director",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/17/photo/17.jpg",
    researchGate: "https://www.researchgate.net/profile/Russell_Thomas5",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2100754492",
    googleScholar: "https://scholar.google.com/citations?user=vHobjzgAAAAJ",
    linkedIn: "https://www.linkedin.com/in/russell-thomas-b466204",
    vivo: "http://vivo.epa.gov/vivo/individual/person2807",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Thomas&apos; area of expertise is in the application of high-throughput and high data content approaches to chemical toxicity testing.  He has a broad, multidisciplinary background and experience but his formal academic training was in chemistry, radiation health physics, and toxicology.  He then received postdoctoral training in molecular biology and genomics.  Following his academic training, Dr. Thomas performed bioinformatics and genomics research in the biotechnology sector and gained experience in high-throughput screening and in vitro assay development in the biopharma sector. Prior to coming to the U.S. EPA, Dr. Thomas worked as an investigator and the the director of the Institute for Chemical Safety Sciences at The Hamner Institutes for Health Sciences.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Tabor College, Hillsboro, KS; Chemistry, 1991</li><li>M.S., Colorado State University, Fort Collins, CO; Radioecology and Health Physics, 1993</li><li>Ph.D., Colorado State University, Fort Collins, CO; Toxicology, 1997</li><li>Post-doc, McArdle Laboratory for Cancer Research, Madison, WI; Genomics and Molecular Biology, 2000</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Member, Society of Toxicology Speaker Bureau, 2015 – Present</li><li>Member, Expert Advisory Panel, Safety Evaluation Ultimately Replacing Animal Testing (SEURAT-1), Joint Program by European Commission and European Cosmetics Association, 2012 – Present</li><li>Society of Toxicology Board of PublicationsMain Best Paper Award, 2014</li><li>Best Paper Advancing the Science of Risk Assessment by the Risk Assessment Specialty Section, Society of Toxicology, 2014</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/17"
)

Scientist.create!(
    scientistId: 18,
    firstName: "Stephen",
    lastName: "Little",
    email: "little.stephen@epa.gov",
    title: "Chemist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/18/photo/18.jpg",
    orcid: "0000-0003-1376-9188",
    researchGate: "https://www.researchgate.net/profile/Stephen_Little4",
    linkedIn: "https://www.linkedin.com/in/steve-little-906862",
    vivo: "http://vivo.epa.gov/vivo/individual/person2459",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Stephen Little is a chemist and currently serves as the Quality Assurance Manager for EPA&apos;s National Center for Computational Toxicology (NCCT). He also fills other Information Management roles as the Technical Information Manager and Records Liaison Officer for NCCT.  Since 1995, he has been a Chemist with the U.S. Environmental Protection Agency in RTP, NC.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Gardner-Webb University, Boiling Springs, NC; Mathematics, 1977</li><li>B.S., North Carolina State University, Raleigh, NC; Biochemistry, 1981</li><li>M.A., North Carolina State University, Raleigh, NC; Toxicology, 2001</li><li>Graduate Certificate, Indiana University, Bloomington, IN; Chemical Informatics, 2009</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Time off Award, group award for establishing NCCT, 2006</li><li>&#8220;S&#8221; Award for serving as Conazole QA TSR technical expert on review team, 2004</li><li>Honorable Mention, Scientific and Technological Achievement Award, 2003</li><li>&#8220;S&#8221; Special Accomplishment Recognition Award for significant contribution to the EPA cosponsored EMS International Breast Cancer meeting, 2001</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/18"
)

Scientist.create!(
    scientistId: 19,
    firstName: "Steven",
    lastName: "Simmons",
    email: "simmons.steve@epa.gov",
    title: "Research Toxicologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/19/photo/19.jpg",
    orcid: "0000-0001-9079-1069",
    researchGate: "https://www.researchgate.net/profile/Steven_Simmons",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2110315100",
    googleScholar: "https://scholar.google.com/citations?user=pnKac4cAAAAJ",
    linkedIn: "https://www.linkedin.com/in/steve-simmons-581a1113",
    vivo: "http://vivo.epa.gov/vivo/individual/person1852",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Simmons, a research toxicologist within NCCT, leads research efforts to develop and implement in vitro methods that identify potential environmental toxicants.  He plays a critical role in the national Tox21 effort involving EPA, the National Toxicology Program (NTP), and NIH Center for Chemical Genomics (NCGC) in assay design, evaluation and selection for ultra-high throughput screening at NCGC.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Lamar University, Beaumont, TX; Biology/Chemistry, 1997</li><li>Ph.D., North Carolina State University, Raleigh, NC; Toxicology, 2006</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>U.S. EPA Scientific and Technological Achievement Awards (STAA) Award (Level II), 2011</li><li>Rated &#8220;outstanding&#8221; in annual performance at US EPA 2006-2010 and 2011-2015</li><li>National Health and Environmental Effects Research Laboratory Meritorious Service Award, 2007</li><li>Fifteen-time recipient of EPA S-Awards for outstanding contributions to team research</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/19"
)

Scientist.create!(
    scientistId: 20,
    firstName: "Thomas",
    lastName: "Knudsen",
    email: "knudsed.thomas@epa.gov",
    title: "Developmental Systems Biologist",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/20/photo/20.jpg",
    researchGate: "https://www.researchgate.net/profile/Thomas_Knudsen",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2279942940",
    linkedIn: "https://www.linkedin.com/in/thomas-knudsen-91026213",
    vivo: "http://vivo.epa.gov/vivo/individual/person2806",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Knudsen is a Developmental Systems Biologist at the US Environmental Protection Agency&apos;s National Center for Computational Toxicology, where he is a member of the ToxCast research team and lead of the Virtual Tissue Models research effort.  His research on prenatal developmental toxicity and systems biology has led to over 120 scientific papers and book chapters. His current research focus is on the application of ToxCast HTS data for predictive modeling of developmental toxicity and the use of multicellular-agent based models to unravel spatial and temporal dynamics of complex embryological systems in response to chemical exposures.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Albright College, Reading, PA; Biology, 1976</li><li>Ph.D., Thomas Jefferson University, Philadelphia, PA; Anatomy, 1981</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Scientific and Technological Achievement Award (STAA), Level II for &#8220;ExpoCast High Throughput Framework for Rapid Prioritization of Human Exposure to Environmental Chemicals&#8221;, 2015</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Using High-Throughput Screening Assays to Profile Enzymatic and Receptor Signaling Activity of ToxCast Chemicals&#8221;, 2016</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Classifying Toxic and Therapeutic Mechanisms by Phenotypic Screening of ToxCast Chemicals&#8221;, 2016</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Development of a Novel Experimental System to Evaluate Predictive-Toxicity Signatures&#8221;, 2016</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/20"
)

Scientist.create!(
    scientistId: 21,
    firstName: "Woodrow",
    lastName: "Setzer",
    email: "setzer.woodrow@epa.gov",
    title: "Mathematical Statistician",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/21/photo/21.jpg",
    orcid: "0000-0002-6709-9186",
    researchGate: "https://www.researchgate.net/profile/Rhyne_Setzer",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2050944303",
    googleScholar: "https://scholar.google.com/citations?user=_c-Pjk0AAAAJ",
    linkedIn: "https://www.linkedin.com/in/woody-setzer-a604b09",
    vivo: "http://vivo.epa.gov/vivo/individual/person2460",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Setzer develops and adapts statistical methods for characterizing uncertainty in the predictions from dynamic biological models (such as physiologically-based pharmacokinetic models), engages in various aspects of dose-response modeling for informing risk assessments of the effects on human health of environmental exposure, develops methodology for evaluating high-throughput exposure models, and serves as a general statistical consultant for the U.S. EPA National Center for Computational Toxicology.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., University of Chicago, Chicago, IL; Mathematics, 1974</li><li>Ph.D., SUNY at Stony Brook, Stony Brook, NY; Ecology and Evolution, 1983</li><li>Post-doc, University of North Carolina, Chapel Hill; Biostatistics, 1987</li><li>Post-doc, National Research Council Fellow, USEPA, RTP, NC; Biostatistics and Risk Assessment, 1989</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>USEPA Scientific and Technological Achievement Award, Level I: Biologically-Based Dose-Response Modeling in Developmental Toxicology: Biochemical and Cellular Sequelae of 5-Fluorouracil Exposure in the Developing Rat, 1994</li><li>USEPA Scientific and Technological Achievement Award, Level II: ExpoCast High Throughput Framework for Rapid Prioritization of Human Exposure to Environmental Chemicals, 2014</li><li>USEPA Scientific and Technological Achievement Award, Level III: Use of Exposure Information to Focus Toxicological Evaluation of Mixtures, 2015</li><li>USEPA Gold Medal for Exceptional Service &#8220;For extraordinary diligence and creativity in producing highly sophisticated human health risk assessments to protect public health, especially children&apos;s, from the highly toxic pesticide, carbofuran&#8221;, 2009.</li><li>USEPA Silver Medal for Scientific Workgroups for EPA&apos;s Guidelines for Carcinogen Risk Assessment and Supplemental Guidance for Assessing Susceptibility from Early-Life Exposure to Carcinogens, 2006<li></li>USEPA Silver Medal for the Organophosphate Cumulative Risk Assessment, 2003</li><li>Superior Accomplishment Award from the Office of Pesticide Programs, 2009</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/21"
)

Scientist.create!(
    scientistId: 22,
    firstName: "Katerine",
    lastName: "Saili",
    email: "",
    title: "",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/22/photo/22.jpg",
    orcid: "0000-0001-5759-1006",
    plumx: "",
    researchGate: "https://www.researchgate.net/profile/Katerine_Saili",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2126149243",
    googleScholar: "",
    linkedIn: "https://www.linkedin.com/in/kate-saili-a088914/",
    vivo: "http://vivo.epa.gov/vivo/individual/person474532222",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/22"
)

Scientist.create!(
    scientistId: 23,
    firstName: "Katie",
    lastName: "Paul Friedman",
    email: "",
    title: "",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/23/photo/23.jpg",
    orcid: "0000-0002-2710-1691",
    plumx: "",
    researchGate: "https://www.researchgate.net/profile/Katie_Paul_Friedman",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/2580437202",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person1325697333",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/23"
)

Scientist.create!(
    scientistId: 24,
    firstName: "Todd",
    lastName: "Zurlinden",
    email: "",
    title: "",
    photoUrl: "http://comptox.ag.epa.gov/impact/api/scientists/24/photo/24.jpg",
    orcid: "",
    plumx: "",
    researchGate: "",
    microsoftAcademic: "https://academic.microsoft.com/#/detail/284256267",
    googleScholar: "",
    linkedIn: "https://www.linkedin.com/in/todd-zurlinden-07024691/",
    vivo: "http://vivo.epa.gov/vivo/individual/person570329261",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/24"
)

Scientist.create!(
    scientistId: 25,
    firstName: "Todor",
    lastName: "Antonijevic",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person1816811503",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/25"
)

Scientist.create!(
    scientistId: 26,
    firstName: "Swapnil",
    lastName: "Chavan",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person879031122",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/26"
)

Scientist.create!(
    scientistId: 27,
    firstName: "Derik",
    lastName: "Haggard",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person318891458",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/27"
)

Scientist.create!(
    scientistId: 28,
    firstName: "Jason",
    lastName: "Harris",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person1824816987",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/28"
)

Scientist.create!(
    scientistId: 29,
    firstName: "Kamel",
    lastName: "Mansouri",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person56036023",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/29"
)


Scientist.create!(
    scientistId: 30,
    firstName: "Andrew",
    lastName: "Mceachran",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person1118847468",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/30"
)

Scientist.create!(
    scientistId: 31,
    firstName: "Lyly",
    lastName: "Pham",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person465431569",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/31"
)

Scientist.create!(
    scientistId: 32,
    firstName: "Prachi",
    lastName: "Pradeep",
    email: "",
    title: "",
    photoUrl: "",
    orcid: "",
    plumx: "",
    researchGate: "",
    googleScholar: "",
    linkedIn: "",
    vivo: "http://vivo.epa.gov/vivo/individual/person1487250830",
    publons: "",
    bio: "",
    createdBy: "System",
    selfUrl: "http://comptox.ag.epa.gov/impact/api/scientists/32"
)

PublicationType.create!(
    publication_type_id: 1,
    name: "publication",
    label: "published-article",
    short_description: "Published Research Paper"
)

PublicationType.create!(
    publication_type_id: 2,
    name: "presentation",
    label: "professional-presentation",
    short_description: "Poster or Slides Presentation"
)

########################################################################################################################
#
# Publications
#
########################################################################################################################

Publication.create!(
    publication_id: 1,
    doi: "10.1016/j.ntt.2008.03.034",
    published_date: "2014-05-1",
    citation: "Acuff, Karen; Broening, Bill; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Fix, Andrew; Julien, Elizabeth; Nash, Jay; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tozer, Sarah; Yang, Chihae. Conversion of Developmental Neurotoxicity (DNT) information into a structure-searchable relational database. NEUROTOXICOLOGY AND TERATOLOGY. 30(3), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/1"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "1",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "1",
    is_primary_author: false
)

Publication.create!(
    publication_id: 2,
    doi: nil,
    published_date: "2014-05-1",
    citation: "Ahir, B. K.; Sipes, N. S.; Baker, N. C.; Leung, M. C. K.; Dewoskin, R. S.; Spencer, R. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Martin, M. T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Predictive Models of Skeletal Developmental Defects from ToxCast High-Throughput Screening Data. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 100(5), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/2"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "1",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "1",
    is_primary_author: false
)

Publication.create!(
    publication_id: 3,
    doi: "10.1289/ehp.1206301",
    published_date: "2013-06-1",
    citation: "Allard, Patrick; Kleinstreuer, Nicole C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Colaiacovo, Monica P.. A C. elegans Screening Platform for the Rapid Assessment of Chemical Disruption of Germline Function. ENVIRONMENTAL HEALTH PERSPECTIVES. 121(6), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/3"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "3",
    is_primary_author: false
)

Publication.create!(
    publication_id: 4,
    doi: "10.1038/jes.2010.28",
    published_date: "2010-07-1",
    citation: "Anastas, Paul; Teichman, Kevin; Hubal, Elaine Cohen. Ensuring the safety of chemicals. JOURNAL OF EXPOSURE SCIENCE AND ENVIRONMENTAL EPIDEMIOLOGY. 20(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/4"
)

Publication.create!(
    publication_id: 5,
    doi: nil,
    published_date: "2014-01-1",
    citation: "Andersen, Melvin E.; Betts, Kellyn; Dragan, Yvonne; Fitzpatrick, Suzanne; Goodman, Jesse L.; Hartung, Thomas; Himmelfarb, Jonathan; Ingber, Donald E.; Jacobs, Abigail; Kavlock, Robert; Kolaja, Kyle; Stevens, James L.; Tagle, Dan; Taylor, D. Lansing; Throckmorton, Douglas. Developing Microphysiological Systems for Use as Regulatory Tools - Challenges and Opportunities. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(3), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/5"
)

Publication.create!(
    publication_id: 6,
    doi: "10.1021/acs.est.6b04425",
    published_date: "2016-10-4",
    citation: "Ankley, Gerald; Escher, Beate I.; Hartung, Thomas; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. Pathway-Based Approaches for Environmental Monitoring and Risk Assessment. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 50(19), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/6"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "6",
    is_primary_author: false
)

Publication.create!(
    publication_id: 7,
    doi: "10.1021/acs.chemrestox.6b00321",
    published_date: "2016-11-1",
    citation: "Ankley, Gerald; Escher, Beate; Hartung, Thomas; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. Pathway-Based Approaches for Environmental Monitoring and Risk Assessment. CHEMICAL RESEARCH IN TOXICOLOGY. 29(11), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/7"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "7",
    is_primary_author: false
)

Publication.create!(
    publication_id: 8,
    doi: "10.14252/foodsafetyfscj.2015012",
    published_date: "2015-01-1",
    citation: "Aoyama , H., N. Takahashi, Y. Shutoh , A. Motomura , and <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>. (Food Safety) Developmental Neurotoxicology: History and Outline of Developmental Neurotoxicity Study Guidelines..   Food Safety. Food Safety Commission, Cabinet Office, Government of Japan, TOKYO,  JAPAN, 3(2): 48-61, (2015).",
    project: "Adverse Outcome Pathways",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/8"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "8",
    is_primary_author: false
)

Publication.create!(
    publication_id: 9,
    doi: "10.1289/ehp.1408642",
    published_date: "2015-01-1",
    citation: "Attene-Ramos, Matias S.; Huang, Ruili; Michael, Sam; Witt, Kristine L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tice, Raymond R.; Simeonov, Anton; Austin, Christopher P.; Xia, Menghang. Profiling of the Tox21 Chemical Collection for Mitochondrial Function to Identify Compounds that Acutely Decrease Mitochondrial Membrane Potential. ENVIRONMENTAL HEALTH PERSPECTIVES. 123(1), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/9"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "9",
    is_primary_author: false
)

Publication.create!(
    publication_id: 10,
    doi: "10.1016/j.drudis.2013.05.015",
    published_date: "2013-08-1",
    citation: "Attene-Ramos, Matias S.; Miller, Nicole; Huang, Ruili; Michael, Sam; Itkin, Misha; Kavlock, Robert J.; Austin, Christopher P.; Shinn, Paul; Simeonov, Anton; Tice, Raymond R.; Xia, Menghang. The Tox21 robotic platform for the assessment of environmental chemicals - from vision to reality. DRUG DISCOVERY TODAY. 18(15-16), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/10"
)

Publication.create!(
    publication_id: 11,
    doi: "10.1289/ehp.1510456",
    published_date: "2016-08-1",
    citation: "Auerbach, Scott; Filer, Dayne; Reif, David; Walker, Vickie; Holloway, Alison C.; Schlezinger, Jennifer; Srinivasan, Supriya; Svoboda, Daniel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Bucher, John R.; Thayer, Kristina A.. Prioritizing Environmental Chemicals for Obesity and Diabetes Outcomes Research: A Screening Approach Using ToxCast (TM) High-Throughput Data. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(8), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/11"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "11",
    is_primary_author: false
)

Publication.create!(
    publication_id: 12,
    doi: "10.1097/01.ede.0000392237.06413.32",
    published_date: "2011-01-1",
    citation: "Bahadori, Tina; Barr, Dana; Hubal, Elaine Cohen. From Servant to Luminary: Transforming Exposure Science for Protection of Public Health. EPIDEMIOLOGY. 22(1), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/12"
)

Publication.create!(
    publication_id: 13,
    doi: "10.14573/altex.1601251",
    published_date: "2016-01-1",
    citation: "Ball, Nicholas; Cronin, Mark T. D.; Shen, Jie; Blackburn, Karen; Booth, Ewan D.; Bouhifd, Mounir; Donley, Elizabeth; Egnash, Laura; Hastings, Charles; Juberg, Daland R.; Kleensang, Andre; Kleinstreuer, Nicole; Kroese, E. Dinant; Lee, Adam C.; Luechtefeld, Thomas; Maertens, Alexandra; Marty, Sue; Naciff, Jorge M.; Palmer, Jessica; Pamies, David; Penman, Mike; Richarz, Andrea-Nicole; Russo, Daniel P.; Stuard, Sharon B.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; van Ravenzwaay, Bennard; Wu, Shengde; Zhu, Hao; Hartung, Thomas. Toward Good Read-Across Practice (GRAP) Guidance. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 33(2), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/13"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "13",
    is_primary_author: false
)

Publication.create!(
    publication_id: 14,
    doi: "10.1007/s00204-015-1464-2",
    published_date: "2015-02-1",
    citation: "Bal-Price, Anna; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Leist, Marcel; Allen, Sandra; Arand, Michael; Buetler, Timo; Delrue, Nathalie; FitzGerald, Rex E.; Hartung, Thomas; Heinonen, Tuula; Hogberg, Helena; Bennekou, Susanne Hougaard; Lichtensteiger, Walter; Oggier, Daniela; Paparella, Martin; Axelstad, Marta; Piersma, Aldert; Rached, Eva; Schilter, BenoIt; Schmuck, Gabriele; Stoppini, Luc; Tongiorgi, Enrico; Tiramani, Manuela; Monnet-Tschudi, Florianne; Wilks, Martin F.; Ylikomi, Timo; Fritsche, Ellen. International STakeholder NETwork (ISTNET): creating a developmental neurotoxicity (DNT) testing road map for regulatory purposes. ARCHIVES OF TOXICOLOGY. 89(2), (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/14"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "14",
    is_primary_author: false
)

Publication.create!(
    publication_id: 15,
    doi: "10.3109/10408444.2014.981331",
    published_date: "2015-01-1",
    citation: "Bal-Price, Anna; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Sachana, Magdalini; Shafer, Timothy J.; Behl, Mamta; Forsby, Anna; Hargreaves, Alan; Landesmann, Brigitte; Lein, Pamela J.; Louisse, Jochem; Monnet-Tschudi, Florianne; Paini, Alicia; Rolaki, Alexandra; Schrattenholz, Andre; Sunol, Cristina; van Thriel, Christoph; Whelan, Maurice; Fritsche, Ellen. Putative adverse outcome pathways relevant to neurotoxicity. CRITICAL REVIEWS IN TOXICOLOGY. 45(1), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/15"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "15",
    is_primary_author: false
)

Publication.create!(
    publication_id: 16,
    doi: "10.1002/bdra.20610",
    published_date: "2009-08-1",
    citation: "Barrier, Marianne; Dix, David J.; Mirkes, Philip E.. Inducible 70 kDa Heat Shock Proteins Protect Embryos from Teratogen-Induced Exencephaly: Analysis Using Hspa1a/a1b Knockout Mice. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(8), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/16"
)

Publication.create!(
    publication_id: 17,
    doi: "10.2164/jandrol.107.003970",
    published_date: "2008-05-1",
    citation: "Barthold, Julia S.; Mccahan, Suzanne M.; Singh, Amar V.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Si, Xiaoli; Campion, Liam; Akins, Robert E.. Altered expression of muscle- and cytoskeleton-related genes in a rat strain with inherited cryptorchidism. JOURNAL OF ANDROLOGY. 29(3), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/17"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "17",
    is_primary_author: false
)

Publication.create!(
    publication_id: 18,
    doi: "10.1080/00498250600821292",
    published_date: "2006-09-1",
    citation: "Barton, H. A.; Tang, J.; Sey, Y. M.; Stanko, J. P.; Murrell, R. N.; Rockett, J. C.; Dix, D. J.. Metabolism of myclobutanil and triadimefon by human and rat cytochrome P450 enzymes and liver microsomes. XENOBIOTICA. 36(9), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/18"
)

Publication.create!(
    publication_id: 19,
    doi: "10.1021/sc400024a",
    published_date: "2013-07-1",
    citation: "Baruwati, Babita; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Varma, Rajendar S.; Veronesi, Bellina. Green Synthesized and Coated Nanosilver Alters the Membrane Permeability of Barrier (Intestinal, Brain Endothelial) Cells and Stimulates Oxidative Stress Pathways in Neurons. ACS SUSTAINABLE CHEMISTRY &amp; ENGINEERING. 1(7), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/19"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "19",
    is_primary_author: false
)

Publication.create!(
    publication_id: 20,
    doi: "10.14573/altex.2012.1.003",
    published_date: "2012-01-1",
    citation: "Basketter, David A.; Clewell, Harvey; Kimber, Ian; Rossi, Annamaria; Blaauboer, Bas; Burrier, Robert; Daneshian, Mardas; Eskes, Chantra; Goldberg, Alan; Hasiwa, Nina; Hoffmann, Sebastian; Jaworska, Joanna; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Landsiedel, Robert; Leist, Marcel; Locke, Paul; Maxwell, Gavin; McKim, James; McVey, Emily A.; Ouedraogo, Gladys; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Pelkonen, Olavi; Roggen, Erwin; Rovida, Costanza; Ruhdel, Irmela; Schwarz, Michael; Schepky, Andreas; Schoeters, Greet; Skinner, Nigel; Trentz, Kerstin; Turner, Marian; Vanparys, Philippe; Yager, James; Zurlo, Joanne; Hartung, Thomas. t(4) Report A Roadmap for the Development of Alternative (Non-Animal) Methods for Systemic Toxicity Testing. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 29(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/20"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "20",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "20",
    is_primary_author: false
)

Publication.create!(
    publication_id: 21,
    doi: "10.1016/j.actbio.2016.05.020",
    published_date: "2016-07-15",
    citation: "Belair, David G.; Schwartz, Michael P.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; Murphy, William L.. Human iPSC-derived endothelial cell sprouting assay in synthetic hydrogel arrays. ACTA BIOMATERIALIA. 39(), (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/21"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "21",
    is_primary_author: false
)

Publication.create!(
    publication_id: 22,
    doi: "10.1074/jbc.M109.013862",
    published_date: "2009-08-21",
    citation: "Benakanakere, Manjunatha R.; Li, Qiyan; Eskan, Mehmet A.; Singh, Amar V.; Zhao, Jiawei; Galicia, Johnah C.; Stathopoulou, Panagiota; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kinane, Denis F.. Modulation of TLR2 Protein Expression by miR-105 in Human Oral Keratinocytes. JOURNAL OF BIOLOGICAL CHEMISTRY. 284(34), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/22"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "22",
    is_primary_author: false
)

Publication.create!(
    publication_id: 23,
    doi: "10.1080/10590500902885593",
    published_date: "2009-01-1",
    citation: "Benfenati, E.; Benigni, R.; DeMarini, D. M.; Helma, C.; Kirkland, D.; Martin, T. M.; Mazzatorta, P.; Ouedraogo-Arras, G.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A. M.</a>; Schilter, B.; Schoonen, W. G. E. J.; Snyder, R. D.; Yang, C.. Predictive Models for Carcinogenicity and Mutagenicity: Frameworks, State-of-the-Art, and Perspectives. JOURNAL OF ENVIRONMENTAL SCIENCE AND HEALTH PART C-ENVIRONMENTAL CARCINOGENESIS &amp; ECOTOXICOLOGY REVIEWS. 27(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/23"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "23",
    is_primary_author: false
)

Publication.create!(
    publication_id: 24,
    published_date: "2008-01-1",
    citation: "Benigni, Romualdo; Bossa, Cecilia; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Yang, Chihae. A novel approach: chemical relational databases, and the role of the ISSCAN database on assessing chemical carcinogenicity. ANNALI DELL ISTITUTO SUPERIORE DI SANITA. 44(1), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/24"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "24",
    is_primary_author: false
)

Publication.create!(
    publication_id: 25,
    doi: "10.1080/10590500701201828",
    published_date: "2007-01-1",
    citation: "Benigni, Romualdo; Netzeva, Tatiana I.; Benfenati, Emilio; Bossa, Cecilia; Franke, Rainer; Helma, Christoph; Hulzebos, Etje; Marchant, Carol; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Woo, Yin-Tak; Yang, Chihae. The expanding role of predictive toxicology: An update on the (Q) SAR models for mutagens and carcinogens. JOURNAL OF ENVIRONMENTAL SCIENCE AND HEALTH PART C-ENVIRONMENTAL CARCINOGENESIS &amp; ECOTOXICOLOGY REVIEWS. 25(1), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/25"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "25",
    is_primary_author: false
)

Publication.create!(
    publication_id: 26,
    doi: "10.1289/ehp.1409342",
    published_date: "2015-12-1",
    citation: "Berggren, Elisabet; Amcoff, Patric; Benigni, Romualdo; Blackburn, Karen; Carney, Edward; Cronin, Mark; Deluyker, Hubert; Gautier, Francoise; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kass, Georges E. N.; Keller, Detlef; Knight, Derek; Lilienblum, Werner; Mahony, Catherine; Rusyn, Ivan; Schultz, Terry; Schwarz, Michael; Schueuermann, Gerrit; White, Andrew; Burton, Julien; Lostia, Alfonso M.; Munn, Sharon; Worth, Andrew. Chemical Safety Assessment Using Read-Across: Assessing the Use of Novel Testing Methods to Strengthen the Evidence Base for Decision Making. ENVIRONMENTAL HEALTH PERSPECTIVES. 123(12), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/26"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "26",
    is_primary_author: false
)

Publication.create!(
    publication_id: 27,
    doi: "10.1093/toxsci/kfq035",
    published_date: "2010-05-1",
    citation: "Bhattacharya, Sudin; Conolly, Rory B.; Kaminski, Norbert E.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Andersen, Melvin E.; Zhang, Qiang. A Bistable Switch Underlying B-Cell Differentiation and Its Disruption by the Environmental Contaminant 2,3,7,8-Tetrachlorodibenzo-p-dioxin. TOXICOLOGICAL SCIENCES. 115(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/27"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "27",
    is_primary_author: false
)

Publication.create!(
    publication_id: 28,
    published_date: "2013-09-8",
    citation: "Bienstock, Rochelle J.; Yang, Chihae; Rathman, Jim; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Chemotype approach to mapping the chemical landscape and exploring chemical-biological interactions within EPA's ToxCast project. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 246(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/28"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "28",
    is_primary_author: false
)

Publication.create!(
    publication_id: 29,
    doi: "10.1289/ehp.9061",
    published_date: "2006-11-1",
    citation: "Birnbaum, Linda S.; Hubal, Elaine A. Cohen. Polybrominated diphenyl ethers: A case study for using biomonitoring data to address risk assessment questions. ENVIRONMENTAL HEALTH PERSPECTIVES. 114(11), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/29"
)

Publication.create!(
    publication_id: 30,
    doi: "10.1093/toxsci/kft249",
    published_date: "2014-02-1",
    citation: "Black, Michael B.; Parks, Bethany B.; Pluta, Linda; Chu, Tzu-Ming; Allen, Bruce C.; Wolfinger, Russell D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Comparison of Microarrays and RNA-Seq for Gene Expression Analyses of Dose-Response Experiments. TOXICOLOGICAL SCIENCES. 137(2), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/30"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "30",
    is_primary_author: false
)

Publication.create!(
    publication_id: 31,
    doi: "10.3109/10408444.2010.543655",
    published_date: "2011-05-1",
    citation: "Boobis, Alan; Budinsky, Robert; Collie, Shanna; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Embry, Michelle; Felter, Susan; Hertzberg, Richard; Kopp, David; Mihlan, Gary; Mumtaz, Moiz; Price, Paul; Solomon, Keith; Teuschler, Linda; Yang, Raymond; Zaleski, Rosemary. Critical analysis of literature on low-dose synergy for use in screening chemical mixtures for risk assessment. CRITICAL REVIEWS IN TOXICOLOGY. 41(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/31"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "31",
    is_primary_author: false
)

Publication.create!(
    publication_id: 32,
    doi: "10.1016/S0076-6879(06)14009-4",
    published_date: "2006-01-1",
    citation: "Borchert, Kristen M.; Galvin, Rachelle J. Sells; Hale, Laura V.; Trask, O. Joseph; Nickischer, Debra R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>. Screening for activators of the wingless type/Frizzled pathway by automated fluorescent microscopy. MEASURING BIOLOGICAL RESPONSES WITH AUTOMATED MICROSCOPY. 414(), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/32"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "32",
    is_primary_author: false
)

Publication.create!(
    publication_id: 33,
    doi: "10.14573/altex.1502091",
    published_date: "2015-01-1",
    citation: "Bouhifd, Mounir; Andersen, Melvin E.; Baghdikian, Christina; Boekelheide, Kim; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Fornace, Albert J., Jr.; Kleensang, Andre; Li, Henghong; Livi, Carolina; Maertens, Alexandra; McMullen, Patrick D.; Rosenberg, Michael; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell</a>; Vantangoli, Marguerite; Yager, James D.; Zhao, Liang; Hartung, Thomas. The Human Toxome Project. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 32(2), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/33"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "33",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "33",
    is_primary_author: false
)

Publication.create!(
    publication_id: 34,
    doi: "10.1016/j.yrtph.2015.04.010",
    published_date: "2015-07-1",
    citation: "Bourdon-Lacombe, Julie A.; Moffat, Ivy D.; Deveau, Michelle; Husain, Mainul; Auerbach, Scott; Krewski, Daniel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Bushel, Pierre R.; Williams, Andrew; Yauk, Carole L.. Technical guide for applications of gene expression profiling in human health risk assessment of environmental chemicals. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 72(2), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/34"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "34",
    is_primary_author: false
)

Publication.create!(
    publication_id: 35,
    doi: "10.1021/acs.est.5b02641",
    published_date: "2015-07-21",
    citation: "Browne, Patience; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Casey, Warren M.; Kleinstreuer, Nicole C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Screening Chemicals for Estrogen Receptor Bioactivity Using a Computational Model. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 49(14), (2015).",
    project: "Demonstration and Evaluation",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/35"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "35",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "35",
    is_primary_author: false
)

Publication.create!(
    publication_id: 36,
    doi: "10.1016/j.ntt.2014.04.045",
    published_date: "2014-05-1",
    citation: "Bushnell, P. J.; Tatum-Gibbs, R.; McKee, J. M.; Evansky, P. A.; Higuchi, M.; MLin, M. T.; Oshiro, W. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R.</a>; Hester, S.; Reif, D.; Morozova, T.; Mackay, T. F. C.; Boyes, W. K.. ToxiFly: Can fruit flies be used to identify toxicity pathways for airborne chemicals?. NEUROTOXICOLOGY AND TERATOLOGY. 43(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/36"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "36",
    is_primary_author: false
)

Publication.create!(
    publication_id: 37,
    doi: "10.1093/toxsci/kfw243",
    published_date: "2017-12-24",
    citation: "Bushnell, P., W. Ward, T. Morozova, W. Oshiro, M. Lin, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>, S. Hester, J. Mckee, and M. Higuchi. Genetic Targets of Acute Toluene Inhalation in Drosophila melanogaster. TOXICOLOGICAL SCIENCES. Society of Toxicology, 156(1):230-239, (2017).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/37"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "37",
    is_primary_author: false
)

Publication.create!(
    publication_id: 38,
    doi: "10.1016/j.ntt.2015.04.038",
    published_date: "2015-05-1",
    citation: "Bushnell, P.; Morozova, T.; Hester, S.; Ward, M.; Oshiro, W.; Lin, M.; McKee, J.; Higuchi, M.; Boyes, W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R.</a>; Tatum-Gibbs, K.; Mackay, T. F. C.. Neurogenetics of toluene in Drosophila. NEUROTOXICOLOGY AND TERATOLOGY. 49(), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/38"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "38",
    is_primary_author: false
)

Publication.create!(
    publication_id: 39,
    doi: "10.1016/j.ntt.2010.02.002",
    published_date: "2010-05-1",
    citation: "Bushnell, Philip J.; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Weiss, Bernard; Rice, Deborah C.. Behavioral toxicology in the 21st century: Challenges and opportunities for behavioral scientists Summary of a symposium presented at the annual meeting of the Neurobehavioral Teratology Society, June, 2009. NEUROTOXICOLOGY AND TERATOLOGY. 32(3), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/39"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "39",
    is_primary_author: false
)

Publication.create!(
    publication_id: 40,
    doi: "10.1289/ehp.1510209",
    published_date: "2016-07-1",
    citation: "Carlin, Danielle J.; Naujokas, Marisa F.; Bradham, Karen D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/11\">Cowden, John</a>; Heacock, Michelle; Henry, Heather F.; Lee, Janice S.; Thomas, David J.; Thompson, Claudia; Tokar, Erik J.; Waalkes, Michael P.; Birnbaum, Linda S.; Suk, William A.. Arsenic and Environmental Health: State of the Science and Future Research Opportunities. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(7), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/40"
)

ScientistPublication.create!(
    scientist_id: "11",
    publication_id: "40",
    is_primary_author: false
)

Publication.create!(
    publication_id: 41,
    doi: "10.1002/bdra.23146",
    published_date: "2013-05-1",
    citation: "Chandler, K. J.; Hansen, J. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>; Hunter, E. S.. Evaluation of a Redox-Sensitive Predictive Model of Mouse Embryonic Stem Cell Differentiation Using Multiple Differentiation Markers and Windows of Development. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 97(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/41"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "41",
    is_primary_author: false
)

Publication.create!(
    publication_id: 42,
    doi: "10.1002/bdra.20677",
    published_date: "2010-05-1",
    citation: "Chandler, K.; Hunter, S.; Jeffay, S.; Nichols, H.; Hoopes, M.; Barrier, M.; Habig, J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>. High-Throughput Screening of ToxCast (TM) Phase I Chemicals in an Embryonic Stem Cell Assay Reveals Potential Disruption of a Critical Developmental Signaling Pathway. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 88(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/42"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "42",
    is_primary_author: false
)

Publication.create!(
    publication_id: 43,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Chandler, K.; Hunter, S.; Jeffay, S.; Nichols, H.; Kleinstreuer, N.; Sipes, N.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>. A Redox Sensitive Pathway in the Mouse ES Cell Assay Modeled from ToxCast (TM) HTS Data. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/43"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "43",
    is_primary_author: false
)

Publication.create!(
    publication_id: 44,
    doi: "10.1371/journal.pone.0018540",
    published_date: "2011-07-1",
    citation: "Chandler, Kelly J.; Barrier, Marianne; Jeffay, Susan; Nichols, Harriette P.; Kleinstreuer, Nicole C.; Singh, Amar V.; Reif, David M.; Sipes, Nisha S.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Dix, David J.; Kavlock, Robert; Hunter, Edward S., III; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Evaluation of 309 Environmental Chemicals Using a Mouse Embryonic Stem Cell Adherent Cell Differentiation and Cytotoxicity Assay. PLOS ONE. 6(6), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/44"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "44",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "44",
    is_primary_author: false
)

Publication.create!(
    publication_id: 45,
    doi: "10.1021/bk-2012-1099.ch016",
    published_date: "2012-07-25",
    citation: "Chang , D., R. Goldsmith , R. Tornero-Velez , C. Tan , <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">C. Grulke</a> , E. Ulrich , A. Lindstrom , M.A. Pasquinelli, J. Rabinowitz , and C. Dary. In Silico Strategies for Modeling Stereoselective Metabolism of Pyrethroids.  Chapter 16,  Parameters for Pesticide QSAR and PBPK Models for Human Risk Assessment. American Chemical Society, Washington, DC, USA, 1099: 245-269, (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/45"
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "45",
    is_primary_author: false
)

Publication.create!(
    publication_id: 46,
    published_date: "2007-08-19",
    citation: "Chang, Daniel T.; Goldsmith, Michael-Rock; Tornero-Velez, Rogelio; Rabinowitz, James; Dary, Curtis C.. AGRO 121-Utilizing in silico techniques to elucidate the stereoselective behavior of pyrethroids within carboxylesterase. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 234(), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/46"
)

Publication.create!(
    publication_id: 47,
    doi: "10.1189/jlb.0212082",
    published_date: "2012-11-1",
    citation: "Chen, Weimin; Kaplan, Barbara L. F.; Pike, Schuyler T.; Topper, Lauren A.; Lichorobiec, Nicholas R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Ramabhadran, Ram; Kaminski, Norbert E.. Magnitude of stimulation dictates the cannabinoid-mediated differential T cell response to HIVgp120. JOURNAL OF LEUKOCYTE BIOLOGY. 92(5), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/47"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "47",
    is_primary_author: false
)

Publication.create!(
    publication_id: 48,
    doi: "10.1289/ehp.1104055",
    published_date: "2012-02-1",
    citation: "Cheng, Wan-Yun; Currier, Jenna; Bromberg, Philip A.; Silbajoris, Robert; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Samet, James M.. Linking Oxidative Events to Inflammatory and Adaptive Gene Expression Induced by Exposure to an Organic Particulate Matter Component. ENVIRONMENTAL HEALTH PERSPECTIVES. 120(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/48"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "48",
    is_primary_author: false
)

Publication.create!(
    publication_id: 49,
    doi: "10.1021/jm4004285",
    published_date: "2014-06-26",
    citation: "Cherkasov, Artem; Muratov, Eugene N.; Fourches, Denis; Varnek, Alexandre; Baskin, Igor I.; Cronin, Mark; Dearden, John; Gramatica, Paola; Martin, Yvonne C.; Todeschini, Roberto; Consonni, Viviana; Kuz'min, Victor E.; Cramer, Richard; Benigni, Romualdo; Yang, Chihae; Rathman, James; Terfloth, Lothar; Gasteiger, Johann; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tropsha, Alexander. QSAR Modeling: Where Have You Been? Where Are You Going To?. JOURNAL OF MEDICINAL CHEMISTRY. 57(12), (2014).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/49"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "49",
    is_primary_author: false
)

Publication.create!(
    publication_id: 50,
    doi: "10.1021/ac070856n",
    published_date: "2007-10-1",
    citation: "Cherney, Daniel P.; Ekman, Drew R.; Dix, David J.; Collette, Timothy W.. Raman spectroscopy-based metabolomics for differentiating exposures to triazole fungicides using rat urine. ANALYTICAL CHEMISTRY. 79(19), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/50"
)

Publication.create!(
    publication_id: 51,
    doi: "10.1016/j.neuro.2014.08.010",
    published_date: "2014-12-1",
    citation: "Chorley, Brian; Ward, William; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Vallanat, Beena; Veronesi, Bellina. The cellular and genomic response of rat dopaminergic neurons (N27) to coated nanosilver. NEUROTOXICOLOGY. 45(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/51"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "51",
    is_primary_author: false
)

Publication.create!(
    publication_id: 52,
    doi: "10.1289/ehp.9427",
    published_date: "2007-06-1",
    citation: "Coecke, Sandra; Goldberg, Alan M.; Allen, Sandra; Buzanska, Leonora; Calamandrei, Gemma; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Hareng, Lars; Hartung, Thomas; Knaut, Holger; Honegger, Paul; Jacobs, Miriam; Lein, Pamela; Li, Abby; Mundy, William; Owen, David; Schneider, Steffen; Silbergeld, Ellen; Reum, Torsten; Trnovec, Tomas; Monnet-Tschudi, Florianne; Bal-Price, Anna. Workgroup report: Incorporating in vitro alternative methods for developmental neurotoxicity into international hazard and risk assessment strategies. ENVIRONMENTAL HEALTH PERSPECTIVES. 115(6), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/52"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "52",
    is_primary_author: false
)

Publication.create!(
    publication_id: 53,
    doi: "10.1289/EHP233",
    published_date: "2016-11-1",
    citation: "Cote , I., M. Anderson, G. Ankley , S. Barone , L. Birnbaum, K. Bockelheide, F. Bois, L. Burgoon, W. Chiu, D. Crawford-Brown, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>, M. DeVito, R. Devlin , S. Edwards , K. Guyton, D. Hattis, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a> , D. Knight, D. Krewski, J. Lambert , E. Maull, D. Mendrick, G. Paoli, C. Patel, E. Perkins, C. Portier, G. Poje, I. Rusyn, P. Schulte, A. Simeonov, M. Smith, K. Thayer, <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R. S. Thomas</a> , R. Thomas, R. Tice, J. Vandenberg , D. Villeneuve , S. Wesselkamper , M. Whalen, C. Whittaker, R. White, M. Xia, Y. Carol, L. Zeise, J. Zhao , and R. Dewoskin. Advancing the Next Generation of Risk Assessment Multi-Year Study-Highlights of Findings, Applications to Risk Assessment and Future Directions. 233. Erin Dooley (ed.), ENVIRONMENTAL HEALTH PERSPECTIVES. National Institute of Environmental Health Sciences (NIEHS), Research Triangle Park, NC, USA, 124(11): 12, (2016).",
    project: "Demonstration and Evaluation",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/53"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "53",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "53",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "53",
    is_primary_author: false
)

Publication.create!(
    publication_id: 54,
    doi: "10.1289/ehp.1104870",
    published_date: "2012-11-1",
    citation: "Cote, Ila; Anastas, Paul T.; Birnbaum, Linda S.; Clark, Rebecca M.; Dix, David J.; Edwards, Stephen W.; Preuss, Peter W.. Advancing the Next Generation of Health Risk Assessment. ENVIRONMENTAL HEALTH PERSPECTIVES. 120(11), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/54"
)

Publication.create!(
    publication_id: 55,
    doi: "10.1038/jes.2016.58",
    published_date: "2016-11-30",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/11\">Cowden, J.</a>, and J. Lee. Relationships between Arsenic Concentrations in Drinking Water in U.S. Counties and Lung and Bladder Cancer Incidence: Supplemental Material.   ENVIRONMENTAL HEALTH PERSPECTIVES. National Institute of Environmental Health Sciences (NIEHS), Research Triangle Park, NC, USA,  TBD, (2016).",
    project: "Human Health Risk Assessment",
publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/55"
)

ScientistPublication.create!(
    scientist_id: "11",
    publication_id: "55",
    is_primary_author: true
)

Publication.create!(
    publication_id: 56,
    doi: "10.1002/bdra.23146",
    published_date: "2013-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K. M.</a>. Adverse Outcome Pathways and Their Unifying Role in Developmental Toxicology. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 97(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/56"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "56",
    is_primary_author: true
)

Publication.create!(
    publication_id: 57,
    doi: "10.1016/j.toxlet.2010.03.105",
    published_date: "2010-07-17",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K.</a>. Screening for developmental neurotoxicity: Past and future. TOXICOLOGY LETTERS. 196(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/57"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "57",
    is_primary_author: true
)

Publication.create!(
    publication_id: 58,
    doi: "10.1111/j.1741-4520.2012.00377.x",
    published_date: "2012-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Mundy, William R.; Shafer, Timothy J.. Developmental neurotoxicity testing: A path forward. CONGENITAL ANOMALIES. 52(3), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/58"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "58",
    is_primary_author: true
)

Publication.create!(
    publication_id: 59,
    doi: "10.14573/altex.1402121",
    published_date: "2014-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Fritsche, Ellen; Ylikomi, Timo; Bal-Price, Anna. International STakeholder NETwork (ISTNET) for Creating a Developmental Neurotoxicity Testing (DNT) Roadmap for Regulatory Purposes. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(2), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/59"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "59",
    is_primary_author: true
)

Publication.create!(
    publication_id: 60,
    doi: "10.1080/10408440591007304",
    published_date: "2005-10-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, KM</a>; Zoeller, RT. Mode of action: Neurotoxicity induced by thyroid hormone disruption during development - Hearing loss resulting from exposure to PHAHs. CRITICAL REVIEWS IN TOXICOLOGY. 35(8-9), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/60"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "60",
    is_primary_author: true
)

Publication.create!(
    publication_id: 61,
    published_date: "2010-01-1",
    citation: "Daston, G. P.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Fundamental Concepts, Current Regulatory Design and Interpretation. COMPREHENSIVE TOXICOLOGY, VOL 12: DEVELOPMENTAL TOXICOLOGY, 2ND EDITION. (), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/61"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "61",
    is_primary_author: false
)

Publication.create!(
    publication_id: 62,
    doi: "10.1007/s00204-014-1421-5",
    published_date: "2015-01-1",
    citation: "Daston, George; Knight, Derek J.; Schwarz, Michael; Gocht, Tilman; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Mahony, Catherine; Whelan, Maurice. SEURAT: Safety Evaluation Ultimately Replacing Animal Testing-Recommendations for future research in the field of predictive toxicology. ARCHIVES OF TOXICOLOGY. 89(1), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/62"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "62",
    is_primary_author: false
)

Publication.create!(
    publication_id: 63,
    published_date: "2011-08-28",
    citation: "Davis, Jimena L.; Tornero-Velez, Rogelio; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>. Computational approaches for developing informative prior distributions for Bayesian calibration of PBPK models. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 242(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/63"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "63",
    is_primary_author: false
)

Publication.create!(
    publication_id: 64,
    doi: "10.1111/nyas.12086",
    published_date: "2013-01-1",
    citation: "Davis, Myrtle; Boekelheide, Kim; Boverhof, Darrell R.; Eichenbaum, Gary; Hartung, Thomas; Holsapple, Michael P.; Jones, Thomas W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Watkins, Paul B.. The new revolution in toxicology: The good, the bad, and the ugly. ANNALS MEETING REPORTS. 1278(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/64"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "64",
    is_primary_author: false
)

Publication.create!(
    publication_id: 65,
    doi: "10.1002/jat.3290",
    published_date: "2016-09-1",
    citation: "Deal, Samantha; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Mosher, Shad; Radio, Nick; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Padilla, Stephanie. Development of a quantitative morphological assessment of toxicant-treated zebrafish larvae using brightfield imaging and high-content analysis. JOURNAL OF APPLIED TOXICOLOGY. 36(9), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/65"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "65",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "65",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "65",
    is_primary_author: false
)

Publication.create!(
    publication_id: 66,
    doi: "10.1093/toxsci/kfx021",
    published_date: "2017-01-25",
    citation: "Dean, J., J. Zhao, J. Lambert, B. Hawkins, <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R. Thomas</a>, and S. Wesselkamper. Application of Gene Set Enrichment Analysis for Identification of Chemically Induced, Biologically Relevant Transcriptomic Networks and Potential Utilization in Human Health Risk Assessment. TOXICOLOGICAL SCIENCES. (2017).",
    project: "Human Health Risk Assessment",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/66"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "66",
    is_primary_author: false
)

Publication.create!(
    publication_id: 67,
    doi: "10.1289/ehp.9332",
    published_date: "2007-05-1",
    citation: "deFur, Peter L.; Evans, Gary W.; Hubal, Elaine A. Cohen; Kyle, Amy D.; Morello-Frosch, Rachel A.; Williams, David R.. Vulnerability as a function of individual and group resources in cumulative risk assessment. ENVIRONMENTAL HEALTH PERSPECTIVES. 115(5), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/67"
)

Publication.create!(
    publication_id: 68,
    doi: "10.1038/nbt.1666",
    published_date: "2010-09-1",
    citation: "Demir, Emek; Cary, Michael P.; Paley, Suzanne; Fukuda, Ken; Lemer, Christian; Vastrik, Imre; Wu, Guanming; D'Eustachio, Peter; Schaefer, Carl; Luciano, Joanne; Schacherer, Frank; Martinez-Flores, Irma; Hu, Zhenjun; Jimenez-Jacinto, Veronica; Joshi-Tope, Geeta; Kandasamy, Kumaran; Lopez-Fuentes, Alejandra C.; Mi, Huaiyu; Pichler, Elgar; Rodchenkov, Igor; Splendiani, Andrea; Tkachev, Sasha; Zucker, Jeremy; Gopinath, Gopal; Rajasimha, Harsha; Ramakrishnan, Ranjani; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Syed, Mustafa; Anwar, Nadia; Babur, Oezguen; Blinov, Michael; Brauner, Erik; Corwin, Dan; Donaldson, Sylva; Gibbons, Frank; Goldberg, Robert; Hornbeck, Peter; Luna, Augustin; Murray-Rust, Peter; Neumann, Eric; Reubenacker, Oliver; Samwald, Matthias; van Iersel, Martijn; Wimalaratne, Sarala; Allen, Keith; Braun, Burk; Whirl-Carrillo, Michelle; Cheung, Kei-Hoi; Dahlquist, Kam; Finney, Andrew; Gillespie, Marc; Glass, Elizabeth; Gong, Li; Haw, Robin; Honig, Michael; Hubaut, Olivier; Kane, David; Krupa, Shiva; Kutmon, Martina; Leonard, Julie; Marks, Debbie; Merberg, David; Petri, Victoria; Pico, Alex; Ravenscroft, Dean; Ren, Liya; Shah, Nigam; Sunshine, Margot; Tang, Rebecca; Whaley, Ryan; Letovksy, Stan; Buetow, Kenneth H.; Rzhetsky, Andrey; Schachter, Vincent; Sobral, Bruno S.; Dogrusoz, Ugur; McWeeney, Shannon; Aladjem, Mirit; Birney, Ewan; Collado-Vides, Julio; Goto, Susumu; Hucka, Michael; Le Novere, Nicolas; Maltsev, Natalia; Pandey, Akhilesh; Thomas, Paul; Wingender, Edgar; Karp, Peter D.; Sander, Chris; Bader, Gary D.. The BioPAX community standard for pathway data sharing. NATURE BIOTECHNOLOGY. 28(9), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/68"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "68",
    is_primary_author: false
)

Publication.create!(
    publication_id: 69,
    doi: "10.1093/toxsci/kfq233",
    published_date: "2010-11-1",
    citation: "DiMaggio, Peter A., Jr.; Subramani, Ashwin; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Floudas, Christodoulos A.. A Novel Framework for Predicting In Vivo Toxicities from In Vitro Data Using Optimal Methods for Dense and Sparse Matrix Reordering and Logistic Regression. TOXICOLOGICAL SCIENCES. 118(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/69"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "69",
    is_primary_author: false
)

Publication.create!(
    publication_id: 70,
    doi: "10.1016/j.toxrep.2014.12.009",
    published_date: "2015-01-2",
    citation: "Dionisio , K., A.M. Frame, M.R. Goldsmith, <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">J. Wambaugh</a> , A. Liddell, T. Cathay, D. Smith , J. Vail, A.S. Ernstoff, P. Fantke, O. Jolliet, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>. Exploring consumer pathways and patterns of use for chemicals in the environment. Toxicology Reports. Elsevier B.V., Amsterdam,  NETHERLANDS, 2: 228-237, (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/70"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "70",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "70",
    is_primary_author: false
)

Publication.create!(
    publication_id: 71,
    published_date: "2009-05-1",
    citation: "Dix, D. J.. Identifying Toxicity Pathways With ToxCast High-Throughput Screening and Applications to Predicting Developmental Toxicity. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/71"
)

Publication.create!(
    publication_id: 72,
    doi: "10.1038/nbt0906-1108",
    published_date: "2006-09-1",
    citation: "Dix, David J.; Gallagher, Kathryn; Benson, William H.; Groskinsky, Brenda L.; McClintock, J. Thomas; Dearfield, Kerry L.; Farland, William H.. A framework for the use of genomics data at the EPA. NATURE BIOTECHNOLOGY. 24(9), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/72"
)

Publication.create!(
    publication_id: 73,
    doi: "10.1093/toxsci/kfs281",
    published_date: "2012-12-1",
    citation: "Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kleinstreuer, Nicole C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Sipes, Nisha S.; Kavlock, Robert J.. Incorporating Biological, Chemical, and Toxicological Knowledge Into Predictive Models of Toxicity. TOXICOLOGICAL SCIENCES. 130(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/73"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "73",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "73",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "73",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "73",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "73",
    is_primary_author: false
)

Publication.create!(
    publication_id: 74,
    doi: "10.1093/toxsci/kfl103",
    published_date: "2007-01-1",
    citation: "Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Kavlock, Robert J.. The ToxCast program for prioritizing toxicity testing of environmental chemicals. TOXICOLOGICAL SCIENCES. 95(1), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/74"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "74",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "74",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "74",
    is_primary_author: false
)

Publication.create!(
    publication_id: 75,
    doi: "10.1016/j.reprotox.2013.06.070",
    published_date: "2013-11-1",
    citation: "Ducharme, Nicole A.; Peterson, Leif E.; Benfenati, Emilio; Reif, David; McCollum, Catherine W.; Gustaffson, Jan-Ake; Bondesson, Maria. Meta-analysis of toxicity and teratogenicity of 133 chemicals from zebrafish developmental toxicity studies. REPRODUCTIVE TOXICOLOGY. 41(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/75"
)

Publication.create!(
    publication_id: 76,
    doi: "10.3390/ijerph8051727",
    published_date: "2011-05-1",
    citation: "Egeghy, Peter P.; Hubal, Elaine A. Cohen; Tulve, Nicolle S.; Melnyk, Lisa J.; Morgan, Marsha K.; Fortmann, Roy C.; Sheldon, Linda S.. Review of Pesticide Urinary Biomarker Measurements from Selected US EPA Children's Observational Exposure Studies. INTERNATIONAL JOURNAL OF ENVIRONMENTAL RESEARCH AND PUBLIC HEALTH. 8(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/76"
)

Publication.create!(
    publication_id: 77,
    doi: "10.1016/j.scitotenv.2011.10.046",
    published_date: "2012-01-1",
    citation: "Egeghy, Peter P.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Gangwal, Sumit; Mosher, Shad; Smith, Doris; Vail, James; Hubal, Elaine A. Cohen. The exposure data landscape for manufactured chemicals. SCIENCE OF THE TOTAL ENVIRONMENT. 414(), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/77"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "77",
    is_primary_author: false
)

Publication.create!(
    publication_id: 78,
    doi: "10.1289/ehp.1509748",
    published_date: "2016-06-1",
    citation: "Egeghy, Peter P.; Sheldon, Linda S.; Isaacs, Kristin K.; Ozkaynak, Haluk; Goldsmith, Michael-Rock; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Buckley, Timothy J.. Computational Exposure Science: An Emerging Discipline to Support 21st-Century Risk Assessment. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(6), (2016).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/78"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "78",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "78",
    is_primary_author: false
)

Publication.create!(
    publication_id: 79,
    doi: "10.1016/j.envsci.2011.07.010",
    published_date: "2011-12-1",
    citation: "Egeghy, Peter P.; Vallero, Daniel A.; Hubal, Elaine A. Cohen. Exposure-based prioritization of chemicals for risk assessment. ENVIRONMENTAL SCIENCE &amp; POLICY. 14(8), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/79"
)

Publication.create!(
    publication_id: 80,
    doi: "10.1007/s11306-006-0020-8",
    published_date: "2006-06-1",
    citation: "Ekman, Drew R.; Keun, Hector C.; Eads, Charles D.; Furnish, Carrie M.; Rockett, John C.; Dix, David J.. Metabolomic evaluation of rat liver and testis to characterize the toxicity of triazole fungicides. METABOLOMICS. 2(2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/80"
)

Publication.create!(
    publication_id: 81,
    doi: "10.1002/bdra.23023",
    published_date: "2012-05-1",
    citation: "Ellis-Hutchings, R. G.; Settivari, R. S.; Mccoy, A. T.; Kleinstreuer, N. C.; Marshall, V. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Carney, E. W.. Linking ToxCast (TM) Signatures with Functional Consequences: Proof-of-Concept Study Using Known Inhibitors of Vascular Development. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 94(5), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/81"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "81",
    is_primary_author: false
)

Publication.create!(
    publication_id: 82,
    doi: "10.1016/j.reprotox.2009.09.003",
    published_date: "2010-01-1",
    citation: "Ema, Makoto; Ise, Ryota; Kato, Hirohito; Oneda, Satoru; Hirose, Akihiko; Hirata-Koizumi, Mutsuko; Singh, Amar V.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Ihara, Toshio. Fetal malformations and early embryonic gene expression response in cynomolgus monkeys maternally exposed to thalidomide. REPRODUCTIVE TOXICOLOGY. 29(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/82"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "82",
    is_primary_author: false
)

Publication.create!(
    publication_id: 83,
    doi: "10.1016/j.envint.2016.11.029",
    published_date: "2016-01-1",
    citation: "Escher, B., J. Hackermu&#776;ller, T. Polte, S. Scholz, A. Aigner, R. Altenburger, A. Bohme, S. Bopp, W. Brack, W. Busch, M. Chadeau-Hyam, A. Covaci, A. Eisentrager, J. Galligan, N. Garcia-Reyero, T. Hartung, M. Hein, G. Herberth, A. Jahnke, J. Kleinjans, N. Kluever, M. Krauss, M. Lamoree, I. Lehmann, T. Luckenbach, G. Miller, A. Mueller, D. Phillips, S. Rappaport, T. Reemtsma, U. Rolle-Kampczyk, G. Schuurmann, B. Schwikowski, C. Tan, S. Trump, S. Walter-Rohde, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">J. Wambaugh</a>. (ENVIRONMENT INTERNATIONAL) From the exposome to mechanistic understanding of chemical-induced adverse effects. ENVIRONMENT INTERNATIONAL. Elsevier Science Ltd, New York, NY, USA,  1-10, (2016).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/83"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "83",
    is_primary_author: false
)

Publication.create!(
    publication_id: 84,
    doi: "10.1016/j.ntt.2009.04.065",
    published_date: "2010-01-1",
    citation: "Fan, Chun-Yang; <a href=\"http://comptox.ag.epa.gov/impact/scientists/11\">Cowden, John</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Padilla, Stephanie; Ramabhadran, Ram. Gene expression changes in developing zebrafish as potential markers for rapid developmental neurotoxicity screening. NEUROTOXICOLOGY AND TERATOLOGY. 32(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/84"
)

ScientistPublication.create!(
    scientist_id: "11",
    publication_id: "84",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "84",
    is_primary_author: false
)

Publication.create!(
    publication_id: 85,
    doi: "10.1016/j.aquatox.2011.05.017",
    published_date: "2011-09-1",
    citation: "Fan, Chun-Yang; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Law, Sheran H. W.; Jensen, Karl; <a href=\"http://comptox.ag.epa.gov/impact/scientists/11\">Cowden, John</a>; Hinton, David; Padilla, Stephanie; Ramabhadran, Ram. Generation and characterization of neurogenin1-GFP transgenic medaka with potential for rapid developmental neurotoxicity screening. AQUATIC TOXICOLOGY. 105(1-2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/85"
)

ScientistPublication.create!(
    scientist_id: "11",
    publication_id: "85",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "85",
    is_primary_author: false
)

Publication.create!(
    publication_id: 86,
    doi: "10.1007/s00204-016-1886-5",
    published_date: "2016-01-1",
    citation: "Farmahin, R., <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">A. Williams</a>, B. Kuo, N.L. Chepelev, <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R.S. Thomas</a>, T.S. Burton-Maclaren, I.H. Curran, A. Nong, M.G. Wade, and C.L. Yauk. (Archives of Toxicology) Recommended approaches in the application of toxicogenomics to derive points of departure for chemical risk assessment.   Archives of Toxicology. Springer, New York, NY, USA,  1-21, (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/86"
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "86",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "86",
    is_primary_author: false
)

Publication.create!(
    publication_id: 87,
    doi: "10.1093/bioinformatics/btw680",
    published_date: "2016-01-1",
    citation: "Filer, D.L., P. Kothiya, <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">R.W. Setzer</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R.S. Judson</a>, and M.T. Martin. (BIOINFORMATICS) tcpl: The ToxCast Pipeline for High-Throughput Screening Data.   BIOINFORMATICS. Oxford University Press, Cary, NC, USA,  1-3, (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/87"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "87",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "87",
    is_primary_author: false
)

Publication.create!(
    publication_id: 88,
    doi: "10.1016/j.coph.2014.09.021",
    published_date: "2014-12-1",
    citation: "Filer, Dayne; Patisaul, Heather B.; Schug, Thaddeus; Reif, David; Thayer, Kristina. Test driving ToxCast: endocrine profiling for 1858 chemicals included in phase II. CURRENT OPINION IN PHARMACOLOGY. 19(), (2014).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/88"
)

Publication.create!(
    publication_id: 89,
    doi: "10.1080/10937404.2010.483178",
    published_date: "2010-01-1",
    citation: "Firestone, Michael; Kavlock, Robert; Zenick, Hal; Kramer, Melissa. THE US ENVIRONMENTAL PROTECTION AGENCY STRATEGIC PLAN FOR EVALUATING THE TOXICITY OF CHEMICALS. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/89"
)

Publication.create!(
    publication_id: 90,
    doi: "10.1002/jat.3354",
    published_date: "2017-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/10\">Fitzpatrick, Jeremy M.</a>; Roberts, David W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>. Is skin penetration a determining factor in skin sensitization potential and potency? Refuting the notion of a LogKow threshold for skin sensitization. JOURNAL OF APPLIED TOXICOLOGY. 37(1), (2017).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/90"
)

ScientistPublication.create!(
    scientist_id: "10",
    publication_id: "90",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "90",
    is_primary_author: false
)

Publication.create!(
    publication_id: 91,
    doi: "10.1002/jat.3348",
    published_date: "2017-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/10\">Fitzpatrick, Jeremy M.</a>; Roberts, David W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>. What determines skin sensitization potency: Myths, maybes and realities. The 500 molecular weight cut-off: An updated analysis. JOURNAL OF APPLIED TOXICOLOGY. 37(1), (2017).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/91"
)

ScientistPublication.create!(
    scientist_id: "10",
    publication_id: "91",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "91",
    is_primary_author: false
)

Publication.create!(
    publication_id: 92,
    doi: "10.1093/toxsci/kfi315",
    published_date: "2005-12-1",
    citation: "Fostel, J; Choi, D; Zwickl, C; Morrison, N; Rashid, A; Hasan, A; Bao, WJ; Richard, A; Tong, WD; Bushel, PR; Brown, R; Bruno, M; Cunningham, ML; Dix, D; Eastin, W; Frade, C; Garcia, A; Heinloth, A; Irwin, R; Madenspacher, J; Merrick, BA; Papoian, T; Paules, R; Rocca-Serra, P; Sansone, AS; Stevens, J; Tomer, K; Yang, CH; Waters, M. Chemical Effects in Biological Systems-Data Dictionary (CEBS-DD): A compendium of terms for the capture and integration of biological study design description, conventional phenotypes, and 'omics data. TOXICOLOGICAL SCIENCES. 88(2), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/92"
)

Publication.create!(
    publication_id: 93,
    doi: "10.1073/pnas.1114278109",
    published_date: "2012-04-3",
    citation: "Fox, Jennifer T.; Sakamuru, Srilatha; Huang, Ruili; Teneva, Nedelina; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Xia, Menghang; Tice, Raymond R.; Austin, Christopher P.; Myung, Kyungjae. High-throughput genotoxicity assay identifies antioxidants as inducers of DNA damage response and cell death. PROCEEDINGS OF THE NATIONAL ACADEMY OF SCIENCES OF THE UNITED STATES OF AMERICA. 109(14), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/93"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "93",
    is_primary_author: false
)

Publication.create!(
    publication_id: 94,
    doi: "10.1073/pnas.1207795109",
    published_date: "2012-07-24",
    citation: "Fox, Jennifer T.; Sakamuru, Srilatha; Huang, Ruili; Teneva, Nedelina; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Xia, Menghang; Tice, Raymond R.; Austin, Christopher P.; Myung, Kyungjae. Reply to Kojo: Mechanisms of antioxidant-induced DNA damage. PROCEEDINGS OF THE NATIONAL ACADEMY OF SCIENCES OF THE UNITED STATES OF AMERICA. 109(30), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/94"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "94",
    is_primary_author: false
)

Publication.create!(
    publication_id: 95,
    doi: "10.1158/1557-3265.PMS14-A17",
    published_date: "2015-02-15",
    citation: "Frick, Amber D.; Richards, Kristy; Fedoriw, Yuri; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell</a>; Wiltshire, Timothy. Cellular genomics approaches to defining toxicity pathways of chemotherapeutic agents in immune cells. CLINICAL CANCER RESEARCH. 21(), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/95"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "95",
    is_primary_author: false
)

Publication.create!(
    publication_id: 96,
    doi: "10.1093/toxsci/kfw034",
    published_date: "2016-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Friedman, Katie Paul</a>; Watt, Eric D.; Hornung, Michael W.; Hedge, Joan M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>. Tiered High-Throughput Screening Approach to Identify Thyroperoxidase Inhibitors Within the ToxCast Phase I and II Chemical Libraries. TOXICOLOGICAL SCIENCES. 151(1), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/96"
)

ScientistPublication.create!(
    scientist_id: "23",
    publication_id: "96",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "96",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "96",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "96",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "96",
    is_primary_author: false
)

Publication.create!(
    publication_id: 97,
    doi: "10.3390/su5020789",
    published_date: "2013-02-1",
    citation: "Gallagher, Jane E.; Hubal, Elaine Cohen; Jackson, Laura; Inmon, Jefferson; Hudgens, Edward; Williams, Ann H.; Lobdell, Danelle; Rogers, John; Wade, Timothy. Sustainability, Health and Environmental Metrics: Impact on Ranking and Associations with Socioeconomic Measures for 50 US Cities. SUSTAINABILITY. 5(2), (2013).",
    project: "Sustainable Healthy Communities",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/97"
)

Publication.create!(
    publication_id: 98,
    doi: "10.1186/1471-2458-11-344",
    published_date: "2011-05-19",
    citation: "Gallagher, Jane; Hudgens, Edward; Williams, Ann; Inmon, Jefferson; Rhoney, Scott; Andrews, Gina; Reif, David; Heidenfelder, Brooke; Neas, Lucas; Williams, Ronald; Johnson, Markey; Oezkaynak, Haluk; Edwards, Stephen; Hubal, Elaine Cohen. Mechanistic Indicators of Childhood Asthma (MICA) Study: piloting an integrative design for evaluating environmental health. BMC PUBLIC HEALTH. 11(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/98"
)

Publication.create!(
    publication_id: 99,
    doi: "10.1289/ehp.1103750",
    published_date: "2011-11-1",
    citation: "Gangwal, Sumit; Brown, James S.; Wang, Amy; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Dix, David J.; Kavlock, Robert J.; Hubal, Elaine A. Cohen. Informing Selection of Nanomaterial Concentrations for ToxCast in Vitro Testing Based on Occupational Exposure Potential. ENVIRONMENTAL HEALTH PERSPECTIVES. 119(11), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/99"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "99",
    is_primary_author: false
)

Publication.create!(
    publication_id: 100,
    doi: "10.1289/ehp.1104320R",
    published_date: "2012-01-1",
    citation: "Gangwal, Sumit; Hubal, Elaine A. Cohen. Nanotoxicology: in Vitro-in Vivo Dosimetry Response. ENVIRONMENTAL HEALTH PERSPECTIVES. 120(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/100"
)

Publication.create!(
    publication_id: 101,
    doi: "10.1016/j.scitotenv.2012.06.086",
    published_date: "2012-10-1",
    citation: "Gangwal, Sumit; Reif, David M.; Mosher, Shad; Egeghy, Peter P.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Hubal, Elaine A. Cohen. Incorporating exposure information into the toxicological prioritization index decision support framework. SCIENCE OF THE TOTAL ENVIRONMENT. 435(), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/101"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "101",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "101",
    is_primary_author: false
)

Publication.create!(
    publication_id: 102,
    doi: "10.1007/s10928-015-9424-2",
    published_date: "2015-12-1",
    citation: "Garcia, Ramon I.; Ibrahim, Joseph G.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Kenyon, Elaina M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>. Identifiability of PBPK models with applications to dimethylarsinic acid exposure. JOURNAL OF PHARMACOKINETICS AND PHARMACODYNAMICS. 42(6), (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/102"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "102",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "102",
    is_primary_author: false
)

Publication.create!(
    publication_id: 103,
    doi: "10.1371/journal.pone.0117445",
    published_date: "2015-02-2",
    citation: "George, Barbara Jane; Reif, David M.; Gallagher, Jane E.; Williams-DeVane, ClarLynda R.; Heidenfelder, Brooke L.; Hudgens, Edward E.; Jones, Wendell; Neas, Lucas; Hubal, Elaine A. Cohen; Edwards, Stephen W.. Data-Driven Asthma Endotypes Defined from Blood Biomarker and Gene Expression Data. PLOS ONE. 10(2), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/103"
)

Publication.create!(
    publication_id: 104,
    doi: "10.1289/ehp.1206039",
    published_date: "2013-03-1",
    citation: "Gibbs-Flournoy, Eugene A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Bromberg, Philip A.; Dick, Tobias P.; Samet, James M.. Monitoring Intracellular Redox Changes in Ozone-Exposed Airway Epithelial Cells. ENVIRONMENTAL HEALTH PERSPECTIVES. 121(3), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/104"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "104",
    is_primary_author: false
)

Publication.create!(
    publication_id: 105,
    doi: "10.1093/toxsci/kfs335",
    published_date: "2013-03-1",
    citation: "Gilbert, Mary E.; Hedge, Joan M.; Valentin-Blasini, Liza; Blount, Benjamin C.; Kannan, Kurunthachalam; Tietge, Joseph; Zoeller, <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R. Thomas</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Jarrett, Jeffrey M.; Fisher, Jeffrey W.. An Animal Model of Marginal Iodine Deficiency During Development: The Thyroid Axis and Neurodevelopmental Outcome. TOXICOLOGICAL SCIENCES. 132(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/105"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "105",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "105",
    is_primary_author: false
)

Publication.create!(
    publication_id: 106,
    doi: "10.1016/j.ntt.2010.04.029",
    published_date: "2010-08-1",
    citation: "Gilbert, Mary; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Nelson, Gail; Knapp, Geremy. Gene expression in developing brain is altered by modest reductions in circulating levels of thyroid hormone. NEUROTOXICOLOGY AND TERATOLOGY. 32(4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/106"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "106",
    is_primary_author: false
)

Publication.create!(
    publication_id: 107,
    doi: "10.14573/altex.1408041",
    published_date: "2015-01-1",
    citation: "Gocht, Tilman; Berggren, Elisabet; Ahr, Hans Juergen; Cotgreave, Ian; Cronin, Mark T. D.; Daston, George; Hardy, Barry; Heinzle, Elmar; Hescheler, Juergen; Knight, Derek J.; Mahony, Catherine; Peschanski, Marc; Schwarz, Michael; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Verfaillie, Catherine; White, Andrew; Whelan, Maurice. The SEURAT-1 Approach towards Animal Free Human Safety Assessment. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 32(1), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/107"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "107",
    is_primary_author: false
)

Publication.create!(
    publication_id: 108,
    doi: "10.1021/acsnano.5b00941",
    published_date: "2015-04-1",
    citation: "Godwin, Hilary; Nameth, Catherine; Avery, David; Bergeson, Lynn L.; Bernard, Daniel; Beryt, Elizabeth; Boyes, William; Brown, Scott; Clippinger, Amy J.; Cohen, Yoram; Doa, Maria; Hendren, Christine Ogilvie; Holden, Patricia; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Kane, Agnes B.; Klaessig, Frederick; Kodas, Toivo; Landsiedel, Robert; Lynch, Iseult; Malloy, Timothy; Miller, Mary Beth; Muller, Julie; Oberdorster, Gunter; Petersen, Elijah J.; Pleus, Richard C.; Sayre, Philip; Stone, Vicki; Sullivan, Kristie M.; Tentschert, Jutta; Wallis, Philip; Nel, Andre E.. Nanomaterial Categorization for Assessing Risk Potential To Facilitate Regulatory Decision-Making. ACS NANO. 9(4), (2015).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/108"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "108",
    is_primary_author: false
)

Publication.create!(
    publication_id: 109,
    doi: "10.1016/j.taap.2006.02.016",
    published_date: "2015-09-15",
    citation: "Goetz, Amber K.; Bao, Wenjun; Ren, Hongzu; Schmid, Judith E.; Tully, Douglas B.; Wood, Carmen; Rockett, John C.; Narotsky, Michael G.; Sun, Guobin; Lambert, Guy R.; Thai, Sheau-Fung; Wolf, Douglas C.; Nesnow, Stephen; Dix, David J.. Gene expression profiling in the liver of CD-1 mice to characterize the hepatotoxicity of triazole fungicides. TOXICOLOGY AND APPLIED PHARMACOLOGY. 215(3), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/109"
)

Publication.create!(
    publication_id: 110,
    doi: "10.1093/toxsci/kfp098",
    published_date: "2009-08-1",
    citation: "Goetz, Amber K.; Dix, David J.. Mode of Action for Reproductive and Hepatic Toxicity Inferred from a Genomic Study of Triazole Antifungals. TOXICOLOGICAL SCIENCES. 110(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/110"
)

Publication.create!(
    publication_id: 111,
    doi: "10.1016/j.taap.2009.04.016",
    published_date: "2009-07-1",
    citation: "Goetz, Amber K.; Dix, David J.. Toxicogenomic effects common to triazole antifungals and conserved between rats and humans. TOXICOLOGY AND APPLIED PHARMACOLOGY. 238(1), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/111"
)

Publication.create!(
    publication_id: 112,
    doi: "10.1093/toxsci/kfl124",
    published_date: "2007-01-1",
    citation: "Goetz, Amber K.; Ren, Hongzu; Schmid, Judith E.; Blystone, Chad R.; Thillainadarajah, Inthirany; Best, Deborah S.; Nichols, Harriette P.; Strader, Lillian F.; Wolf, Douglas C.; Narotsky, Michael G.; Rockett, John C.; Dix, David J.. Disruption of testosterone homeostasis as a mode of action for the reproductive toxicity of triazole fungicides in the male rat. TOXICOLOGICAL SCIENCES. 95(1), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/112"
)

Publication.create!(
    publication_id: 113,
    doi: "10.3109/19396360903234045",
    published_date: "2009-10-1",
    citation: "Goetz, Amber K.; Rockett, John C.; Ren, Hongzu; Thillainadarajah, Inthirany; Dix, David J.. Inhibition of Rat and Human Steroidogenesis by Triazole Antifungals. SYSTEMS BIOLOGY IN REPRODUCTIVE MEDICINE. 55(5-6), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/113"
)

Publication.create!(
    publication_id: 114,
    doi: "10.1016/j.fct.2013.12.029",
    published_date: "2014-03-1",
    citation: "Goetz, Amber K.; Rockett, John C.; Ren, Hongzu; Thillainadarajah, Inthirany; Dix, David J.. Inhibition of Rat and Human Steroidogenesis by Triazole Antifungals. SYSTEMS BIOLOGY IN REPRODUCTIVE MEDICINE. 55(5-6), (2009).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/114"
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "114",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "114",
    is_primary_author: false
)

Publication.create!(
    publication_id: 115,
    doi: "10.1155/2014/421693",
    published_date: "2014-11-11",
    citation: "Goldsmith, M., <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">C. Grulke</a>, D. Chang , T.R. Transue, <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">S. Little</a> , J. Rabinowitz , and R. Tornero-Velez. DockScreen: A database of in silico biomolecular interactions to support computational toxicology.   Dataset Papers in Science. Hindawi Publishing Corporation, New York, NY, USA, 2014: 1-5, (2014).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/115"
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "115",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "115",
    is_primary_author: false
)

Publication.create!(
    publication_id: 116,
    doi: "10.1016/j.mrfmmm.2004.12.009",
    published_date: "2005-05-2",
    citation: "Granville, CA; Ross, MK; Tornero-Velez, R; Hanley, NM; Grindstaff, RD; Gold, A; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, AM</a>; Funasaka, K; Tennant, AH; Kligerman, AD; Evans, MV; DeMarini, DM. Genotoxicity and metabolism of the source-water contaminant 1,1-dichloropropene: activation by GSTT1-1 and structure-activity considerations. MUTATION RESEARCH-FUNDAMENTAL AND MOLECULAR MECHANISMS OF MUTAGENESIS. 572(1-2), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/116"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "116",
    is_primary_author: false
)

Publication.create!(
    publication_id: 117,
    doi: "10.1016/j.tox.2011.08.013",
    published_date: "2011-11-28",
    citation: "Green, M. L.; Singh, A. V.; Ruest, L. B.; Pisano, M. M.; Prough, R. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Differential programming of p53-deficient embryonic cells during rotenone block. TOXICOLOGY. 290(1), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/117"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "117",
    is_primary_author: false
)

Publication.create!(
    publication_id: 118,
    doi: "10.1016/j.tiv.2016.12.006",
    published_date: "2017-04-1",
    citation: "Hallinger, D., A. Murr, A. Buckalew, <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">S. Simmons</a>, T. Stoker, and S. Laws. Development of a Screening Approach to Detect Thyroid Disrupting Chemicals that Inhibit the Human Sodium/Iodide Symporter (NIS).   TOXICOLOGY IN VITRO. Elsevier Science Ltd, New York, NY, USA,  66-78, (2017).",
    project: "Virtual Tissues, vThyroid",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/118"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "118",
    is_primary_author: false
)

Publication.create!(
    publication_id: 119,
    doi: "10.1371/journal.pone.0079020",
    published_date: "2013-11-6",
    citation: "Hao, Ruixin; Bondesson, Maria; Singh, Amar V.; Riu, Anne; McCollum, Catherine W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Gorelick, Daniel A.; Gustafsson, Jan-Ake. Identification of Estrogen Target Genes during Zebrafish Embryonic Development through Transcriptomic Analysis. PLOS ONE. 8(11), (2013).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/119"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "119",
    is_primary_author: false
)

Publication.create!(
    publication_id: 120,
    doi: "10.14573/altex.2012.2.129",
    published_date: "2012-01-1",
    citation: "Hardy, Barry; Apic, Gordana; Carthew, Philip; Clark, Dominic; Cook, David; Dix, Ian; Escher, Sylvia; Hastings, Janna; Heard, David J.; Jeliazkova, Nina; Judson, Philip; Matis-Mitchell, Sherri; Mitic, Dragana; Myatt, Glenn; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Spjuth, Ola; Tcheremenskaia, Olga; Toldo, Luca; Watson, David; White, Andrew; Yang, Chihae. A Toxicology Ontology Roadmap. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 29(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/120"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "120",
    is_primary_author: false
)

Publication.create!(
    publication_id: 121,
    doi: "10.14573/altex.2012.2.139",
    published_date: "2012-01-1",
    citation: "Hardy, Barry; Apic, Gordana; Carthew, Philip; Clark, Dominic; Cook, David; Dix, Ian; Escher, Sylvia; Hastings, Janna; Heard, David J.; Jeliazkova, Nina; Judson, Philip; Matis-Mitchell, Sherri; Mitic, Dragana; Myatt, Glenn; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Spjuth, Ola; Tcheremenskaia, Olga; Toldo, Luca; Watson, David; White, Andrew; Yang, Chihae. Toxicology Ontology Perspectives. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 29(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/121"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "121",
    is_primary_author: false
)

Publication.create!(
    publication_id: 122,
    doi: "10.1002/jat.3211",
    published_date: "2016-06-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/15\">Harrill, Joshua A.</a>; Layko, Debra; Nyska, Abraham; Hukkanen, Renee R.; Manno, Rosa Anna; Grassetti, Andrea; Lawson, Marie; Martin, Greg; Budinsky, Robert A.; Rowlands, J. Craig; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Aryl hydrocarbon receptor knockout rats are insensitive to the pathological effects of repeated oral exposure to 2,3,7,8-tetrachlorodibenzo-p-dioxin. JOURNAL OF APPLIED TOXICOLOGY. 36(6), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/122"
)

ScientistPublication.create!(
    scientist_id: "15",
    publication_id: "122",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "122",
    is_primary_author: false
)

Publication.create!(
    publication_id: 123,
    doi: "10.1007/978-1-61779-170-3_23",
    published_date: "2011-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/15\">Harrill, Joshua A.</a>; Mundy, William R.. Quantitative Assessment of Neurite Outgrowth in PC12 Cells. IN VITRO NEUROTOXICOLOGY: METHODS AND PROTOCOLS. 758(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/123"
)

ScientistPublication.create!(
    scientist_id: "15",
    publication_id: "123",
    is_primary_author: true
)

Publication.create!(
    publication_id: 124,
    doi: "10.14573/altex.2011.3.183",
    published_date: "2011-01-1",
    citation: "Hartung, Thomas; Blaauboer, Bas J.; Bosgra, Sieto; Carney, Edward; Coenen, Joachim; Conolly, Rory B.; Corsini, Emanuela; Green, Sidney; Faustman, Elaine M.; Gaspari, Anthony; Hayashi, Makoto; Hayes, A. Wallace; Hengstler, Jan G.; Knudsen, Lisbeth E.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; McKim, James M.; Pfaller, Walter; Roggen, Erwin L.. An Expert Consortium Review of the EC-commissioned Report Alternative (Non-Animal) Methods for Cosmetics Testing: Current Status and Future Prospects-2010. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 28(3), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/124"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "124",
    is_primary_author: false
)

Publication.create!(
    publication_id: 125,
    doi: "10.1093/toxsci/kfp005",
    published_date: "2009-03-1",
    citation: "Heidenfelder, Brooke L.; Reif, David M.; Harkema, Jack R.; Hubal, Elaine A. Cohen; Hudgens, Edward E.; Bramble, Lori A.; Wagner, James G.; Morishita, Masako; Keeler, Gerald J.; Edwards, Stephen W.; Gallagher, Jane E.. Comparative Microarray Analysis and Pulmonary Changes in Brown Norway Rats Exposed to Ovalbumin and Concentrated Air Particulates. TOXICOLOGICAL SCIENCES. 108(1), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/125"
)

Publication.create!(
    publication_id: 126,
    doi: "10.1093/toxsci/kfw195",
    published_date: "2016-09-27",
    citation: "Hill III, T., M. Nelms, S. Edwards, M. Martin, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>, C. Corton, and C. Wood. Negative Predictors of Carcinogenicity for Environmental Chemicals.   TOXICOLOGICAL SCIENCES. 155 (1): 157-169, (2017).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/126"
)


ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "126",
    is_primary_author: false
)

Publication.create!(
    publication_id: 127,
    doi: "10.1093/toxsci/kfp217",
    published_date: "2010-01-1",
    citation: "Hines, Ronald N.; Sargent, Dana; Autrup, Herman; Birnbaum, Linda S.; Brent, Robert L.; Doerrer, Nancy G.; Hubal, Elaine A. Cohen; Juberg, Daland R.; Laurent, Christian; Luebke, Robert; Olejniczak, Klaus; Portier, Christopher J.; Slikker, William. Approaches for Assessing Risks to Sensitive Populations: Lessons Learned from Evaluating Risks in the Pediatric Population. TOXICOLOGICAL SCIENCES. 113(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/127"
)

Publication.create!(
    publication_id: 128,
    doi: "10.1177/1087057109345525",
    published_date: "2009-10-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Yang, Jian; Berg, Ellen L.. Profiling Bioactivity of the ToxCast Chemical Library Using BioMAP Primary Human Cell Systems. JOURNAL OF BIOMOLECULAR SCREENING. 14(9), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/128"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "128",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "128",
    is_primary_author: false
)

Publication.create!(
    publication_id: 129,
    doi: "10.1289/EHP881",
    published_date: "2017-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Simeonov, Anton; Paules, Richard S.; Bucher, John R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Comment on On the Utility of ToxCast (TM) and ToxPi as Methods for Identifying New Obesogens. ENVIRONMENTAL HEALTH PERSPECTIVES. 125(1), (2017).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/129"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "129",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "129",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "129",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "129",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "129",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "129",
    is_primary_author: false
)

Publication.create!(
    publication_id: 130,
    doi: "10.1016/j.taap.2007.10.022",
    published_date: "2008-03-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Kavlock, Robert J.. Understanding mechanisms of toxicity: Insights from drug discovery research. TOXICOLOGY AND APPLIED PHARMACOLOGY. 227(2), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/130"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "130",
    is_primary_author: true
)

Publication.create!(
    publication_id: 131,
    doi: "10.1177/1087057109345493",
    published_date: "2009-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>. Use of Primary Human Cell Systems for Creating Predictive Toxicology Profiles. JOURNAL OF BIOMOLECULAR SCREENING. 14(7), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/131"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "131",
    is_primary_author: true
)

Publication.create!(
    publication_id: 132,
    doi: "10.1038/srep06437",
    published_date: "2014-09-26",
    citation: "Hsu, Chia-Wen; Zhao, Jinghua; Huang, Ruili; Hsieh, Jui-Hua; Hamm, Jon; Chang, Xiaoqing; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Xia, Menghang. Quantitative High-Throughput Profiling of Environmental Chemicals and Drugs that Modulate Farnesoid X Receptor. SCIENTIFIC REPORTS. 4(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/132"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "132",
    is_primary_author: false
)

Publication.create!(
    publication_id: 133,
    doi: "10.1038/srep05664",
    published_date: "2014-07-11",
    citation: "Huang, Ruili; Sakamuru, Srilatha; Martin, Matt T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Casey, Warren; Hsieh, Jui-Hua; Shockley, Keith R.; Ceger, Patricia; Fostel, Jennifer; Witt, Kristine L.; Tong, Weida; Rotroff, Daniel M.; Zhao, Tongan; Shinn, Paul; Simeonov, Anton; Dix, David J.; Austin, Christopher P.; Kavlock, Robert J.; Tice, Raymond R.; Xia, Menghang. Profiling of the Tox21 10K compound library for agonists and antagonists of the estrogen receptor alpha signaling pathway. SCIENTIFIC REPORTS. 4(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/133"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "133",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "133",
    is_primary_author: false
)

Publication.create!(
    publication_id: 134,
    doi: "10.1289/ehp.1002952",
    published_date: "2011-08-1",
    citation: "Huang, Ruili; Xia, Menghang; Cho, Ming-Hsuang; Sakamuru, Srilatha; Shinn, Paul; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Witt, Kristine L.; Kavlock, Robert J.; Tice, Raymond R.; Austin, Christopher P.. Chemical Genomics Profiling of Environmental Chemical Modulation of Human Nuclear Receptors. ENVIRONMENTAL HEALTH PERSPECTIVES. 119(8), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/134"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "134",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "134",
    is_primary_author: false
)

Publication.create!(
    publication_id: 135,
    doi: "10.1289/ehp.8283",
    published_date: "2006-02-1",
    citation: "Hubal, EAC; Egeghy, PP; Leovic, KW; Akland, GG. Measuring potential dermal transfer of a pesticide to children in a child care center. ENVIRONMENTAL HEALTH PERSPECTIVES. 114(2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/135"
)

Publication.create!(
    publication_id: 136,
    doi: "10.1093/toxsci/kfp159",
    published_date: "2009-10-1",
    citation: "Hubal, Elaine A. Cohen. Biologically Relevant Exposure Science for 21st Century Toxicity Testing. TOXICOLOGICAL SCIENCES. 111(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/136"
)

Publication.create!(
    publication_id: 137,
    doi: "10.1038/jes.2010.55",
    published_date: "2011-03-1",
    citation: "Hubal, Elaine A. Cohen; Barr, Dana B.; Koch, Holger M.; Bahadori, Tina. The Promise of Exposure Science. JOURNAL OF EXPOSURE SCIENCE AND ENVIRONMENTAL EPIDEMIOLOGY. 21(2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/137"
)

Publication.create!(
    publication_id: 138,
    doi: "10.1016/j.yrtph.2013.09.008",
    published_date: "2014-06-1",
    citation: "Hubal, Elaine A. Cohen; de Wet, Thea; Du Toit, Lilo; Firestone, Michael P.; Ruchirawat, Mathuros; van Engelen, Jacqueline; Vickers, Carolyn. Identifying important life stages for monitoring and assessing risks from exposures to environmental contaminants: Results of a World Health Organization review. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 69(1), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/138"
)

Publication.create!(
    publication_id: 139,
    doi: "10.1002/bdrb.20173",
    published_date: "2008-12-1",
    citation: "Hubal, Elaine A. Cohen; Moya, Jacqueline; Selevan, Sherry G.. A Lifestage Approach to Assessing Children's Exposure. BIRTH DEFECTS RESEARCH PART B-DEVELOPMENTAL AND REPRODUCTIVE TOXICOLOGY. 83(6), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/139"
)

Publication.create!(
    publication_id: 140,
    doi: "10.1021/es071668h",
    published_date: "2006-02-1",
    citation: "Hubal, Elaine A. Cohen; Nishioka, Marcia G.; Ivancic, William A.; Morara, Michele; Egeghy, Peter P.. Comparing surface residue transfer efficiencies to hands using polar and nonpolar fluorescent tracers. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 42(3), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/140"
)

Publication.create!(
    publication_id: 141,
    doi: "10.1038/jes.2008.70",
    published_date: "2010-05-1",
    citation: "Hubal, Elaine A. Cohen; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Gallagher, Jane; Kavlock, Robert; Blancato, Jerry; Edwards, Stephen W.. Exposure science and the US EPA National Center for Computational Toxicology. JOURNAL OF EXPOSURE SCIENCE AND ENVIRONMENTAL EPIDEMIOLOGY. 20(3), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/141"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "141",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "141",
    is_primary_author: false
)

Publication.create!(
    publication_id: 142,
    doi: "10.1080/10937404.2010.483947",
    published_date: "2010-01-1",
    citation: "Hubal, Elaine A. Cohen; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Aylward, Lesa; Edwards, Steve; Gallagher, Jane; Goldsmith, Michael-Rock; Isukapalli, Sastry; Tornero-Velez, Rogelio; Weber, Eric; Kavlock, Robert. ADVANCING EXPOSURE CHARACTERIZATION FOR CHEMICAL EVALUATION AND RISK ASSESSMENT. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/142"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "142",
    is_primary_author: false
)

Publication.create!(
    publication_id: 143,
    doi: "10.1016/j.tox.2016.06.013",
    published_date: "2016-01-1",
    citation: "Hughes, Michael F.; Ross, David G.; Starr, James M.; Scollon, Edward J.; Wolansky, Marcelo J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; DeVito, Michael J.. Environmentally relevant pyrethroid mixtures: A study on the correlation of blood and brain concentrations of a mixture of pyrethroid insecticides to motor activity in the rat. TOXICOLOGY. 359(), (2016).",
    project: "Virtual Tissues",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/143"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "143",
    is_primary_author: false
)

Publication.create!(
    publication_id: 144,
    doi: "10.1016/j.reprotox.2005.09.012",
    published_date: "2006-04-1",
    citation: "Hunter, ES; Rogers, E; Blanton, M; Richard, A; Chernoff, N. Bromochloro-haloacetic acids: Effects on mouse embryos in vitro and QSAR considerations. REPRODUCTIVE TOXICOLOGY. 21(3), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/144"
)

Publication.create!(
    publication_id: 145,
    doi: "10.1186/1752-0509-5-109",
    published_date: "2011-07-11",
    citation: "Jack, John; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. Simulating Quantitative Cellular Responses Using Asynchronous Threshold Boolean Network Ensembles. BMC SYSTEMS BIOLOGY. 5(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/145"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "145",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "145",
    is_primary_author: false
)

Publication.create!(
    publication_id: 146,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Jeffay, S.; Barrier, M.; Nichols, H.; Chandler, K.; Singh, A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>; Hunter, S.. Effects of the ECVAM Chemical Validation Library on Differentiation using Marker Gene Expression in Mouse Embryonic Stern Cells. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/146"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "146",
    is_primary_author: false
)

Publication.create!(
    publication_id: 147,
    doi: "10.1016/j.neuro.2016.05.005",
    published_date: "2016-05-1",
    citation: "Johnstone , A., J. Strickland, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a> , C. Gennings, and T. Shafer. Effects of an Environmentally-relevant Mixture of Pyrethroid Insecticides on Spontaneous Activity in Primary Cortical Networks on Microelectrode Arrays.   NEUROTOXICOLOGY. Elsevier B.V., Amsterdam,  NETHERLANDS, 813X(16): 30083-3, (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/147"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "147",
    is_primary_author: false
)