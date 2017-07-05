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
    title: "Physical Scientist",
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
    title: "Toxicologist",
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
    title: "Bioinformatician",
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
    lastName: "McEachran",
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
    published_date: "2008-05-27",
    title: "The Effects of Triclosan on Puberty and Thyroid Hormones in Male Wistar Rats",
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
    title: "Predictive Models of Skeletal Developmental Defects from ToxCast High-Throughput Screening Data",
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
    title: "A C. elegans Screening Platform for the Rapid Assessment of Chemical Disruption of Germline Function",
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
    title: " Ensuring the safety of chemicals",
    citation: "Anastas, Paul; Teichman, Kevin; Hubal, Elaine Cohen. Ensuring the safety of chemicals. JOURNAL OF EXPOSURE SCIENCE AND ENVIRONMENTAL EPIDEMIOLOGY. 20(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/4"
)

Publication.create!(
    publication_id: 5,
    doi: nil,
    published_date: "2014-01-1",
    title: "Developing Microphysiological Systems for Use as Regulatory Tools - Challenges and Opportunities",
    citation: "Andersen, Melvin E.; Betts, Kellyn; Dragan, Yvonne; Fitzpatrick, Suzanne; Goodman, Jesse L.; Hartung, Thomas; Himmelfarb, Jonathan; Ingber, Donald E.; Jacobs, Abigail; Kavlock, Robert; Kolaja, Kyle; Stevens, James L.; Tagle, Dan; Taylor, D. Lansing; Throckmorton, Douglas. Developing Microphysiological Systems for Use as Regulatory Tools - Challenges and Opportunities. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(3), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/5"
)

Publication.create!(
    publication_id: 6,
    doi: "10.1021/acs.est.6b04425",
    published_date: "2016-10-4",
    title: "Pathway-Based Approaches for Environmental Monitoring and Risk Assessment",
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
    title: "Pathway-Based Approaches for Environmental Monitoring and Risk Assessment",
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
    title: "(Food Safety) Developmental Neurotoxicology: History and Outline of Developmental Neurotoxicity Study Guidelines",
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
    title: "Profiling of the Tox21 Chemical Collection for Mitochondrial Function to Identify Compounds that Acutely Decrease Mitochondrial Membrane Potential",
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
    title: "The Tox21 robotic platform for the assessment of environmental chemicals - from vision to reality",
    citation: "Attene-Ramos, Matias S.; Miller, Nicole; Huang, Ruili; Michael, Sam; Itkin, Misha; Kavlock, Robert J.; Austin, Christopher P.; Shinn, Paul; Simeonov, Anton; Tice, Raymond R.; Xia, Menghang. The Tox21 robotic platform for the assessment of environmental chemicals - from vision to reality. DRUG DISCOVERY TODAY. 18(15-16), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/10"
)

Publication.create!(
    publication_id: 11,
    doi: "10.1289/ehp.1510456",
    published_date: "2016-08-1",
    title: "Prioritizing Environmental Chemicals for Obesity and Diabetes Outcomes Research: A Screening Approach Using ToxCast (TM) High-Throughput Data",
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
    title: "From Servant to Luminary: Transforming Exposure Science for Protection of Public Health",
    citation: "Bahadori, Tina; Barr, Dana; Hubal, Elaine Cohen. From Servant to Luminary: Transforming Exposure Science for Protection of Public Health. EPIDEMIOLOGY. 22(1), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/12"
)

Publication.create!(
    publication_id: 13,
    doi: "10.14573/altex.1601251",
    published_date: "2016-01-1",
    title: "Toward Good Read-Across Practice (GRAP) Guidance.",
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
    title: "International STakeholder NETwork (ISTNET): creating a developmental neurotoxicity (DNT) testing road map for regulatory purposes",
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
    title: "Putative adverse outcome pathways relevant to neurotoxicity",
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
    title: "Inducible 70 kDa Heat Shock Proteins Protect Embryos from Teratogen-Induced Exencephaly: Analysis Using Hspa1a/a1b Knockout Mice",
    citation: "Barrier, Marianne; Dix, David J.; Mirkes, Philip E.. Inducible 70 kDa Heat Shock Proteins Protect Embryos from Teratogen-Induced Exencephaly: Analysis Using Hspa1a/a1b Knockout Mice. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(8), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/16"
)

Publication.create!(
    publication_id: 17,
    doi: "10.2164/jandrol.107.003970",
    published_date: "2008-05-1",
    title: "Altered expression of muscle- and cytoskeleton-related genes in a rat strain with inherited cryptorchidism",
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
    title: "Metabolism of myclobutanil and triadimefon by human and rat cytochrome P450 enzymes and liver microsomes",
    citation: "Barton, H. A.; Tang, J.; Sey, Y. M.; Stanko, J. P.; Murrell, R. N.; Rockett, J. C.; Dix, D. J.. Metabolism of myclobutanil and triadimefon by human and rat cytochrome P450 enzymes and liver microsomes. XENOBIOTICA. 36(9), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/18"
)

Publication.create!(
    publication_id: 19,
    doi: "10.1021/sc400024a",
    published_date: "2013-07-1",
    title: " Green Synthesized and Coated Nanosilver Alters the Membrane Permeability of Barrier (Intestinal, Brain Endothelial) Cells and Stimulates Oxidative Stress Pathways in Neurons",
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
    title: " t(4) Report A Roadmap for the Development of Alternative (Non-Animal) Methods for Systemic Toxicity Testing",
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
    title: "Human iPSC-derived endothelial cell sprouting assay in synthetic hydrogel arrays",
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
    title: "Modulation of TLR2 Protein Expression by miR-105 in Human Oral Keratinocytes",
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
    title: "Predictive Models for Carcinogenicity and Mutagenicity: Frameworks, State-of-the-Art, and Perspectives",
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
    title: "A novel approach: chemical relational databases, and the role of the ISSCAN database on assessing chemical carcinogenicity",
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
    title: "The expanding role of predictive toxicology: An update on the (Q) SAR models for mutagens and carcinogens",
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
    title: "Chemical Safety Assessment Using Read-Across: Assessing the Use of Novel Testing Methods to Strengthen the Evidence Base for Decision Making",
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
    title: "A Bistable Switch Underlying B-Cell Differentiation and Its Disruption by the Environmental Contaminant 2,3,7,8-Tetrachlorodibenzo-p-dioxin",
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
    title: "Chemotype approach to mapping the chemical landscape and exploring chemical-biological interactions within EPA's ToxCast project",
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
    title: "Polybrominated diphenyl ethers: A case study for using biomonitoring data to address risk assessment questions",
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
    published_date: "2017-01-1",
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
    published_date: "2010-01-1",
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
    published_date: "2006-01-01",
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
    citation: "Goldsmith, M. -R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">Grulke, C. M.</a>; Brooks, R. D.; Transue, T. R.; Tan, Y. M.; Frame, A.; Egeghy, P. P.; Edwards, R.; Chang, D. T.; Tornero-Velez, R.; Isaacs, K.; Wang, A.; Johnson, J.; Holm, K.; Reich, M.; Mitchell, J.; Vallero, D. A.; Phillips, L.; Phillips, M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, J. F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Buckley, T. J.; Dary, C. C.. Development of a consumer product ingredient database for chemical exposure screening and prioritization. FOOD AND CHEMICAL TOXICOLOGY. 65(), (2014).",
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
    published_date: "2017-01-1",
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
    published_date: "2008-01-1",
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
    project: "Virtual Tissues, vThyroid",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/147"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "147",
    is_primary_author: false
)

Publication.create!(
    publication_id: 148,
    doi: "10.1186/1471-2350-12-25",
    published_date: "2011-01-14",
    citation: "Joubert, Bonnie R.; Reif, David M.; Edwards, Stephen W.; Leiner, Kevin A.; Hudgens, Edward E.; Egeghy, Peter; Gallagher, Jane E.; Hubal, Elaine Cohen. Evaluation of genetic susceptibility to childhood allergy and asthma in an African American urban population. BMC MEDICAL GENETICS. 12(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/148"
)

Publication.create!(
    publication_id: 149,
    doi: "10.1093/toxsci/kfw194",
    published_date: "2016-10-25",
    citation: "Juberg, D., <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a>, M. Sander, N. Beck, E. Faustman, D. Mendrick, J. Fowle, T. Hartung, R. Tice, E. Lamazurier, R. Becker, S. Fitzpatrick, G. Daston, A. Harill, R. Hines, D. Keller, J. Lipscomb, D. Watson, T. Bahadori, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>. (Toxicological Sciences) FutureTox III: Bridges for Translation. TOXICOLOGICAL SCIENCES. Society of Toxicology, 1-10, (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/149"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "149",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "149",
    is_primary_author: false
)

Publication.create!(
    publication_id: 150,
    doi: "10.1289/ehp.0901392",
    published_date: "2010-04-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; Mortensen, Holly M.; Reif, David M.; Rotroff, Daniel M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Dix, David J.. In Vitro Screening of Environmental Chemicals for Targeted Testing Prioritization: The ToxCast Project. ENVIRONMENTAL HEALTH PERSPECTIVES. 118(4), (2010).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/150"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "150",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "150",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "150",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "150",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "150",
    is_primary_author: false
)

Publication.create!(
    publication_id: 151,
    doi: "10.1021/tx100428e",
    published_date: "2011-04-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Hubal, Elaine A. Cohen; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Wetmore, Barbara A.; Dix, David J.. Estimating Toxicity-Related Biological Pathway Altering Doses for High-Throughput Chemical Risk Assessment. CHEMICAL RESEARCH IN TOXICOLOGY. 24(4), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/151"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "151",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "151",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "151",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "151",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "151",
    is_primary_author: false
)

Publication.create!(
    publication_id: 152,
    doi: "10.1093/toxsci/kfv168",
    published_date: "2015-11-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Magpantay, Felicia Maria; Chickarmane, Vijay; Haskell, Cymra; Tania, Nessy; Taylor, Jean; Xia, Menghang; Huang, Ruili; Rotroff, Daniel M.; Filer, Dayne L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Martin, Matthew T.; Sipes, Nisha; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Integrated Model of Chemical Perturbations of a Biological Pathway Using 18 In Vitro High-Throughput Screening Assays for the Estrogen Receptor. TOXICOLOGICAL SCIENCES. 148(1), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/152"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "152",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "152",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "152",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "152",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "152",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "152",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "152",
    is_primary_author: false
)

Publication.create!(
    publication_id: 153,
    doi: "10.3390/ijms13021805",
    published_date: "2012-02-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Martin, Matthew T.; Egeghy, Peter; Gangwal, Sumit; Reif, David M.; Kothiya, Parth; Wolf, Maritja; Cathey, Tommy; Transue, Thomas; Smith, Doris; Vail, James; Frame, Alicia; Mosher, Shad; Hubal, Elaine A. Cohen; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Aggregating Data for Computational Toxicology Applications: The US Environmental Protection Agency (EPA) Aggregated Computational Toxicology Resource (ACToR) System. INTERNATIONAL JOURNAL OF MOLECULAR SCIENCES. 13(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/153"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "153",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "153",
    is_primary_author: false
)

Publication.create!(
    publication_id: 154,
    doi: "10.1021/es102150z",
    published_date: "2010-08-4",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Rotroff, Daniel M.; Xia, Menghang; Sakamuru, Srilatha; Huang, Ruili; Shinn, Paul; Austin, Christopher P.; Kavlock, Robert J.; Dix, David J.. Analysis of Eight Oil Spill Dispersants Using Rapid, In Vitro Tests for Endocrine and Other Biological Activity. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 44(15), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/154"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "154",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "154",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "154",
    is_primary_author: false
)

Publication.create!(
    publication_id: 155,
    doi: "10.1039/c1mb05303e",
    published_date: "2012-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Mortensen, Holly M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Elloumi, Fathi. Using pathway modules as targets for assay development in xenobiotic screening. MOLECULAR BIOSYSTEMS. 8(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/155"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "155",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "155",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "155",
    is_primary_author: false
)

Publication.create!(
    publication_id: 156,
    doi: "10.1080/10937404.2010.483937",
    published_date: "2010-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>. PUBLIC DATABASES SUPPORTING COMPUTATIONAL TOXICOLOGY. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/156"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "156",
    is_primary_author: true
)

Publication.create!(
    publication_id: 157,
    doi: "10.1186/1471-2105-9-241",
    published_date: "2008-05-19",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Elloumi, Fathi; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Li, Zhen; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. A comparison of machine learning algorithms for chemical toxicity classification using a simulated multi-scale data model. BMC BIOINFORMATICS. 9(), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/157"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "157",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "157",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "157",
    is_primary_author: false
)

Publication.create!(
    publication_id: 158,
    doi: "10.1111/bcpt.12239",
    published_date: "2014-07-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Martin, Matt; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Sipes, Nisha; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>. In Vitro and Modelling Approaches to Risk Assessment from the US Environmental Protection Agency ToxCast Programme. BASIC &amp; CLINICAL PHARMACOLOGY &amp; TOXICOLOGY. 115(1), (2014).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/158"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "158",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "158",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "158",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "158",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "158",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "158",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "158",
    is_primary_author: false
)

Publication.create!(
    publication_id: 159,
    doi: "10.1093/toxsci/kfw092",
    published_date: "2016-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Martin, Matt; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Kothya, Parth; Phuong, Jimmy; Filer, Dayne; Smith, Doris; Reif, David; Rotroff, Daniel; Kleinstreuer, Nicole; Sipes, Nisha; Xia, Menghang; Huang, Ruili; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Analysis of the Effects of Cell Stress and Cytotoxicity on In Vitro Assay Activity Across a Diverse Chemical and Assay Space. TOXICOLOGICAL SCIENCES. 152(2), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/159"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "159",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "159",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "159",
    is_primary_author: false
)

Publication.create!(
    publication_id: 160,
    published_date: "2013-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Kavlock, Robert; Martin, Matthew; Reif, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tice, Raymond R.; Whelan, Maurice; Xia, Menghang; Huang, Ruili; Austin, Christopher; Daston, George; Hartung, Thomas; Fowle, John R., III; Wooge, William; Tong, Weida; Dix, David. Perspectives on Validation of High-Throughput Assays Supporting 21st Century Toxicity Testing. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 30(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/160"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "160",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "160",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "160",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "160",
    is_primary_author: false
)

Publication.create!(
    publication_id: 161,
    doi: "10.14573/altex.2013.1.051",
    published_date: "2013-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Kavlock, Robert; Martin, Matthew; Reif, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tice, Raymond R.; Whelan, Maurice; Xia, Menghang; Huang, Ruili; Austin, Christopher; Daston, George; Hartung, Thomas; Fowle, John R., III; Wooge, William; Tong, Weida; Dix, David. Perspectives on Validation of High-Throughput Assays Supporting 21st Century Toxicity Testing. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 30(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/161"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "161",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "161",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "161",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "161",
    is_primary_author: false
)

Publication.create!(
    publication_id: 162,
    doi: "10.1289/ehp.0800168",
    published_date: "2009-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Martin, Matthew; Kavlock, Robert; Dellarco, Vicki; Henry, Tala; Holderman, Todd; Sayre, Philip; Tan, Shirlee; Carpenter, Thomas; Smith, Edwin. The Toxicity Data Landscape for Environmental Chemicals. ENVIRONMENTAL HEALTH PERSPECTIVES. 117(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/162"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "162",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "162",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "162",
    is_primary_author: false
)

Publication.create!(
    publication_id: 163,
    doi: "10.1016/j.taap.2007.12.037",
    published_date: "2008-11-15",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Dix, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Elloumi, Fathi; Martin, Matthew; Cathey, Tommy; Transue, Thomas R.; Spencer, Richard; Wolf, Maritja. ACTOR - Aggregated Computational Toxicology Resource. TOXICOLOGY AND APPLIED PHARMACOLOGY. 233(1), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/163"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "163",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "163",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "163",
    is_primary_author: false
)

Publication.create!(
    publication_id: 164,
    doi: "10.1186/s13321-015-0072-8",
    published_date: "2015-06-19",
    citation: "Karapetyan, Karen; Batchelor, Colin; Sharpe, David; Tkachenko, Valery; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, Antony J.</a>. The Chemical Validation and Standardization Platform (CVSP): large-scale automated validation of chemical structure datasets. JOURNAL OF CHEMINFORMATICS. 7(), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/164"
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "164",
    is_primary_author: false
)

Publication.create!(
    publication_id: 165,
    doi: "10.1016/j.fct.2016.04.012",
    published_date: "2016-06-1",
    citation: "Karmaus, Agnes L.; Filer, Dayne L.; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>. Evaluation of food-relevant chemicals in the ToxCast high-throughput screening program. FOOD AND CHEMICAL TOXICOLOGY. 92(), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/165"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "165",
    is_primary_author: false
)

Publication.create!(
    publication_id: 166,
    doi: "10.1093/toxsci/kfw002",
    published_date: "2016-04-1",
    citation: "Karmaus, Agnes L.; Toole, Colleen M.; Filer, Dayne L.; Lewis, Kenneth C.; Martin, Matthew T.. High-Throughput Screening of Chemical Effects on Steroidogenesis Using H295R Human Adrenocortical Carcinoma Cells. TOXICOLOGICAL SCIENCES. 150(2), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/166"
)

Publication.create!(
    publication_id: 167,
    doi: "10.1002/bdra.23146",
    published_date: "2013-05-1",
    citation: "Kavlock, R. J.. A Random Walk through Teratology. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 97(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/167"
)

Publication.create!(
    publication_id: 168,
    doi: "10.1002/bdra.20605",
    published_date: "2009-05-1",
    citation: "Kavlock, R. J.. Applications of Computational Toxicology to the Understanding of Risks of Developmental Toxicity.. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/168"
)

Publication.create!(
    publication_id: 169,
    doi: "10.1080/10408440591007377",
    published_date: "2005-10-1",
    citation: "Kavlock, R; Cummings, A. Mode of action: Inhibition of androgen receptor function - Vinclozolin-induced malformations in reproductive development. CRITICAL REVIEWS IN TOXICOLOGY. 35(8-9), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/169"
)

Publication.create!(
    publication_id: 170,
    doi: "10.1080/10408440591007386",
    published_date: "2005-10-1",
    citation: "Kavlock, R; Cummings, A. Mode of action: Reduction of testosterone availability - Molinate-induced inhibition of spermatogenesis. CRITICAL REVIEWS IN TOXICOLOGY. 35(8-9), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/170"
)

Publication.create!(
    publication_id: 171,
    doi: "10.1093/toxsci/kfm297",
    published_date: "2008-05-1",
    citation: "Kavlock, Robert J.; Ankley, Gerald; Blancato, Jerry; Breen, Michael; Conolly, Rory; Dix, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Hubal, Elaine; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Rabinowitz, James; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Villeneuve, Daniel; Weber, Eric. Computational toxicology - A state of the science mini review. TOXICOLOGICAL SCIENCES. 103(1), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/171"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "171",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "171",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "171",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "171",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "171",
    is_primary_author: false
)

Publication.create!(
    publication_id: 172,
    doi: "10.1111/j.1539-6924.2008.01168.x",
    published_date: "2009-04-1",
    citation: "Kavlock, Robert J.; Austin, Christopher P.; Tice, Raymond R.. Toxicity Testing in the 21st Century: Implications for Human Health Risk Assessment. RISK ANALYSIS. 29(4), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/172"
)

Publication.create!(
    publication_id: 173,
    published_date: "2007-01-1",
    citation: "Kavlock, Robert. Computational toxicology: New approaches to improve environmental health protection. Proceedings of the 4th International Academic Conference on Environmental and Occupational Medicine. (), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/173"
)

Publication.create!(
    publication_id: 174,
    doi: "10.1016/j.ntt.2009.04.007",
    published_date: "2009-07-1",
    citation: "Kavlock, Robert. The future of toxicity testing-The NRC vision and the EPA's ToxCast program national center for computational toxicology. NEUROTOXICOLOGY AND TERATOLOGY. 31(4), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/174"
)

Publication.create!(
    publication_id: 175,
    doi: "10.1016/j.reprotox.2006.04.007",
    published_date: "2006-10-1",
    citation: "Kavlock, Robert; Barr, Dana; Boekelheide, Kim; Breslin, William; Breysse, Patrick; Chapin, Robert; Gaido, Kevin; Hodgson, Ernest; Marcus, Michele; Shea, Katherine; Williams, Paige. NTP-CERHR Expert Panel update on the reproductive and developmental toxicity of di(2-ethylhexyl) phthalate. REPRODUCTIVE TOXICOLOGY. 22(3), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/175"
)

Publication.create!(
    publication_id: 176,
    doi: "10.1021/tx3000939",
    published_date: "2012-07-1",
    citation: "Kavlock, Robert; Chandler, Kelly; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Hunter, Sid; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Kleinstreuer, Nicole; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; Martin, Matt; Padilla, Stephanie; Reif, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Rotroff, Daniel; Sipes, Nisha; Dix, David. Update on EPA's ToxCast Program: Providing High Throughput Decision Support Tools for Chemical Risk Management. CHEMICAL RESEARCH IN TOXICOLOGY. 25(7), (2012).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/176"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "176",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "176",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "176",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "176",
    is_primary_author: false
)

Publication.create!(
    publication_id: 177,
    doi: "10.1080/10937404.2010.483935",
    published_date: "2010-01-1",
    citation: "Kavlock, Robert; Dix, David. COMPUTATIONAL TOXICOLOGY AS IMPLEMENTED BY THE US EPA: PROVIDING HIGH THROUGHPUT DECISION SUPPORT TOOLS FOR SCREENING AND ASSESSING CHEMICAL EXPOSURE, HAZARD AND RISK. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/177"
)

Publication.create!(
    publication_id: 178,
    published_date: "2010-01-2",
    citation: "Kesic, M. J.; Zhang, W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>; Jaspers, I.. Nrf2 Dependent Gene Expression Modifies Susceptibility To Influenza A Infection. AMERICAN JOURNAL OF RESPIRATORY AND CRITICAL CARE MEDICINE. 181(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/178"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "178",
    is_primary_author: false
)

Publication.create!(
    publication_id: 179,
    doi: "10.1016/j.freeradbiomed.2011.04.027",
    published_date: "2011-07-15",
    citation: "Kesic, Matthew J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Bauer, Rebecca; Jaspers, Ilona. Nrf2 expression modifies influenza A entry and replication in nasal epithelial cells. FREE RADICAL BIOLOGY AND MEDICINE. 51(2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/179"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "179",
    is_primary_author: false
)

Publication.create!(
    publication_id: 180,
    published_date: "2006-04-1",
    citation: "Kim, SJ; Dix, DJ; Thompson, KE; Murrell, RN; Schmid, JE; Gallagher, JE; Rockett, JC. Gene expression in head hair follicles plucked from men and women. ANNALS OF CLINICAL AND LABORATORY SCIENCE. 36(2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/180"
)

Publication.create!(
    publication_id: 181,
    doi: "10.1373/clinchem.2006.078436",
    published_date: "2007-06-1",
    citation: "Kim, Sung Jae; Dix, David J.; Thompson, Kary E.; Murrell, Rachel N.; Schmid, Judith E.; Gallagher, Jane E.; Rockett, John C.. Effects of storage, RNA extraction, genechip type, and donor sex on gene expression profiling of human whole blood. CLINICAL CHEMISTRY. 53(6), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/181"
)

Publication.create!(
    publication_id: 182,
    doi: "10.1161/CIRCULATIONAHA.105.598409",
    published_date: "2006-06-6",
    citation: "Kim, YK; Suarez, J; Hu, Y; McDonough, PM; Boer, C; Dix, DJ; Dillmann, WH. Deletion of the inducible 70-kDa heat shock protein genes in mice impairs cardiac contractile function and calcium handling associated with hypertrophy. CIRCULATION. 113(22), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/182"
)

Publication.create!(
    publication_id: 183,
    doi: "10.14573/altex.1309261",
    published_date: "2014-01-1",
    citation: "Kleensang, Andre; Maertens, Alexandra; Rosenberg, Michael; Fitzpatrick, Suzanne; Lamb, Justin; Auerbach, Scott; Brennan, Richard; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Gordon, Ben; Fornace, Albert J., Jr.; Gaido, Kevin; Gerhold, David; Haw, Robin; Henney, Adrian; Ma'ayan, Avi; McBride, Mary; Monti, Stefano; Ochs, Michael F.; Pandey, Akhilesh; Sharan, Roded; Stierum, Rob; Tugendreich, Stuart; Willett, Catherine; Wittwehr, Clemens; Xia, Jianguo; Patton, Geoffrey W.; Arvidson, Kirk; Bouhifd, Mounir; Hogberg, Helena T.; Luechtefeld, Thomas; Smirnova, Lena; Zhao, Liang; Adeleye, Yeyejide; Kanehisa, Minoru; Carmichael, Paul; Andersen, Melvin E.; Hartung, Thomas. Pathways of Toxicity. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(1), (2014).",
    project: "Adverse Outcome Pathways",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/183"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "183",
    is_primary_author: false
)

Publication.create!(
    publication_id: 184,
    doi: "10.1002/bdra.23023",
    published_date: "2012-05-1",
    citation: "Kleinstreuer, N. C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. vEmbryo In Silico Models: Predicting Vascular Developmental Toxicity. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 94(5), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/184"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "184",
    is_primary_author: false
)

Publication.create!(
    publication_id: 185,
    doi: "10.1016/j.taap.2011.08.025",
    published_date: "2011-11-15",
    citation: "Kleinstreuer, N. C.; Smith, A. M.; West, P. R.; Conard, K. R.; Fontaine, B. R.; Weir-Hauptman, A. M.; Palmer, J. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Dix, D. J.; Donley, E. L. R.; Cezar, G. G.. Identifying developmental toxicity pathways for a subset of ToxCast chemicals using human embryonic stem cells and metabolomics. TOXICOLOGY AND APPLIED PHARMACOLOGY. 257(1), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/185"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "185",
    is_primary_author: false
)

Publication.create!(
    publication_id: 186,
    doi: "10.1002/bdra.20677",
    published_date: "2010-05-1",
    citation: "Kleinstreuer, N.; Dix, D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R.</a>; Kavlock, R.; Sipes, N.; Reif, D.; Chandler, K.; Rountree, M.; Dewoskin, R.; Singh, A.; Spencer, R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>. A Toxicity Signature for Species-Specific Disruption of Embryonic Vasculogenesis Derived from ToxCast (TM) In Vitro Profiling Data. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 88(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/186"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "186",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "186",
    is_primary_author: false
)

Publication.create!(
    publication_id: 187,
    doi: "10.1002/bdra.23146",
    published_date: "2013-05-1",
    citation: "Kleinstreuer, N.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>; Colaiacovo, M.; Allard, P.. The Use of Genetic Model Systems for Assessing Environmental Effects on Reproduction. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 97(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/187"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "187",
    is_primary_author: false
)

Publication.create!(
    publication_id: 188,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Kleinstreuer, N.; Rountree, M.; Sipes, N.; Chandler, K.; Dewoskin, R.; Singh, A., V; Spencer, R.; Kavlock, R.; Dix, D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>. In Silico Testing of Environmental Impact on Embryonic Vascular Development. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/188"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "188",
    is_primary_author: false
)

Publication.create!(
    publication_id: 189,
    doi: "10.1021/acs.chemrestox.6b00347",
    published_date: "2016-11-18",
    citation: "Kleinstreuer, N.C., P. Ceger, E. Watt, M. Martin, <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">K. Houck</a>, P. Browne, <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">R. Thomas</a>, W. Casey, D. Dix, D. Allen, S. Sakamuru, M. Xia, R. Huang, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>. (Chemical Research in Toxicology) Development and Validation of a Computational Model for Androgen Receptor Activity. 1-59, (2016).",
    project: "Demonstration and Evaluation",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/189"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "189",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "189",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "189",
    is_primary_author: false
)

Publication.create!(
    publication_id: 190,
    doi: "10.1093/toxsci/kfs285",
    published_date: "2013-01-1",
    citation: "Kleinstreuer, Nicole C.; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Paul, Katie B.</a>; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Hamilton, Kerry; Hunter, Ronald; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. In Vitro Perturbations of Targets in Cancer Hallmark Processes Predict Rodent Chemical Carcinogenesis. TOXICOLOGICAL SCIENCES. 131(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/190"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "190",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "190",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "23",
    publication_id: "190",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "190",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "190",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "190",
    is_primary_author: false
)

Publication.create!(
    publication_id: 191,
    doi: "10.1093/toxsci/kfs285",
    published_date: "2013-01-1",
    citation: "Kleinstreuer, Nicole C.; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Paul, Katie B.</a>; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Hamilton, Kerry; Hunter, Ronald; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. In Vitro Perturbations of Targets in Cancer Hallmark Processes Predict Rodent Chemical Carcinogenesis. TOXICOLOGICAL SCIENCES. 131(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/191"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "191",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "191",
    is_primary_author: false
)

Publication.create!(
    publication_id: 192,
    published_date: "2012-01-1",
    citation: "Kleinstreuer, Nicole C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Predictive modeling and computational toxicology. DEVELOPMENTAL AND REPRODUCTIVE TOXICOLOGY: A PRACTICAL APPROACH, 3RD EDITION. (), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/192"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "192",
    is_primary_author: false
)

Publication.create!(
    publication_id: 193,
    doi: "10.1038/nbt.2914",
    published_date: "2014-06-1",
    citation: "Kleinstreuer, Nicole C.; Yang, Jian; Berg, Ellen L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Polokoff, Mark; Dix, David J.; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>. Phenotypic screening of the ToxCast chemical library to classify toxic and therapeutic mechanisms. NATURE BIOTECHNOLOGY. 32(6), (2014).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/193"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "193",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "193",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "193",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "193",
    is_primary_author: false
)

Publication.create!(
    publication_id: 194,
    doi: "10.1371/journal.pcbi.1002996",
    published_date: "2013-04-1",
    citation: "Kleinstreuer, Nicole; Dix, David; Rountree, Michael; Baker, Nancy; Sipes, Nisha; Reif, David; Spencer, Richard; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>. A Computational Model Predicting Disruption of Blood Vessel Development. PLOS COMPUTATIONAL BIOLOGY. 9(4), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/194"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "194",
    is_primary_author: false
)

Publication.create!(
    publication_id: 195,
    doi: "10.1002/em.21934",
    published_date: "2015-06-1",
    citation: "Kligerman , A., R. Young, L. Stankowski, K. Pant, T. Lawlor, M. Aardema, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">K. Houck</a>. An Evaluation of 25 Selected ToxCast Chemicals in Medium-Throughput Assays to Detect Genotoxicity.   ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. John Wiley &amp; Sons, Inc, Hoboken, NJ, USA, 56(5): 468-476, (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/195"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "195",
    is_primary_author: false
)

Publication.create!(
    publication_id: 196,
    doi: "10.1002/em.21734",
    published_date: "2012-09-1",
    citation: "Kligerman, A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, K.</a>. Evaluating ToxCast (TM) High-Throughput Assays for Their Ability to Detect Direct-Acting Genotoxicants. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 53(), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/196"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "196",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "196",
    is_primary_author: false
)

Publication.create!(
    publication_id: 197,
    doi: "10.1016/j.yrtph.2009.07.004",
    published_date: "2009-11-1",
    citation: "Knight, Andrew W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Dix, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; McCarroll, Nancy; Akerman, Gregory; Yang, Chihae; Birrell, Louise; Walmsley, Richard M.. Evaluation of high-throughput genotoxicity assays used in profiling the US EPA ToxCast (TM) chemicals. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 55(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/197"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "197",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "197",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "197",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "197",
    is_primary_author: false
)

Publication.create!(
    publication_id: 198,
    doi: "10.1002/bdra.20677",
    published_date: "2010-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Pathway Profiling and Tissue Modeling Using ToxCast (TM) HTS Data. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 88(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/198"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "198",
    is_primary_author: true
)

Publication.create!(
    publication_id: 199,
    doi: "10.1016/j.ntt.2014.04.004",
    published_date: "2014-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Teratology v2.0: Building a path forward. NEUROTOXICOLOGY AND TERATOLOGY. 43(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/199"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "199",
    is_primary_author: true
)

Publication.create!(
    publication_id: 200,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Use of High-Throughput Testing and Approaches for Evaluating Chemical Risk: Relevance to Humans. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/200"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "200",
    is_primary_author: true
)

Publication.create!(
    publication_id: 201,
    doi: "10.1002/bdra.20476",
    published_date: "2008-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Using web-based tools for teaching embryology. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 82(5), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/201"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "201",
    is_primary_author: true
)

Publication.create!(
    publication_id: 202,
    published_date: "2010-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Daston, G. P.. Virtual Tissues and Developmental Systems Biology. COMPREHENSIVE TOXICOLOGY, VOL 12: DEVELOPMENTAL TOXICOLOGY, 2ND EDITION. (), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/202"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "202",
    is_primary_author: true
)

Publication.create!(
    publication_id: 203,
    doi: "10.1002/bdra.23387",
    published_date: "2015-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Franzosa, J. A.; Baker, N. C.; Spencer, R. S.; Hunter, E. S.; Kleinstreuer, N. C.; Ellis-Hutchings, R.; Carney, E. W.. Vascular Developmental Toxicity of TNP-470 and 5HPP-33 Assessed with ToxCastDB and Anchored to Functional Assays for Angiogenesis and Embryogenesis. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 103(5), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/203"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "203",
    is_primary_author: true
)

Publication.create!(
    publication_id: 204,
    doi: "10.1002/bdra.23387",
    published_date: "2015-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Baker, N. C.; Leung, M. C. K.. Evaluation of 1066 ToxCast Chemicals in a Human Stem Cell Assay for Developmental Toxicity. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 103(5), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/204"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "204",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "204",
    is_primary_author: false
)

Publication.create!(
    publication_id: 205,
    doi: "10.1016/j.ntt.2009.04.023",
    published_date: "2009-01-7",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Martin, M. T.; Kavlock, R. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Dix, D. J.; Singh, A. V.. Profiling developmental toxicity of 387 environmental chemicals using EPA's Toxicity Reference Database (ToxRefDB). NEUROTOXICOLOGY AND TERATOLOGY. 31(4), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/205"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "205",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "205",
    is_primary_author: false
)

Publication.create!(
    publication_id: 206,
    published_date: "2009-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Martin, M. T.; Kavlock, R. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Dix, D. J.; Singh, A., V. Profiling Developmental Toxicity of 387 Environmental Chemicals Using EPA's Toxicity Reference Database (ToxRefDB). BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/206"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "206",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "206",
    is_primary_author: false
)

Publication.create!(
    publication_id: 207,
    published_date: "2013-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>; Allard, P.. Validating Novel Genetic Strategies for the Rapid Assessment of Environmental Perturbation of Germline Integrity.. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 54(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/207"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "207",
    is_primary_author: true
)

Publication.create!(
    publication_id: 208,
    doi: "10.1016/j.reprotox.2007.11.009",
    published_date: "2008-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Untitled. REPRODUCTIVE TOXICOLOGY. 25(1), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/208"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "208",
    is_primary_author: true
)

Publication.create!(
    publication_id: 209,
    doi: "10.1016/j.tox.2010.12.010",
    published_date: "2011-03-28",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Sipes, Nisha S.; Singh, Amar V.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Martin, Matthew T.; Weissman, Arthur; Kleinstreuer, Nicole C.; Mortensen, Holly M.; Reif, David M.; Rabinowitz, James R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Dix, David J.; Kavlock, Roberti.. Activity profiles of 309 ToxCast (TM) chemicals evaluated across 292 biochemical targets. TOXICOLOGY. 282(1-2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/209"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "209",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "209",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "209",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "209",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "209",
    is_primary_author: false
)

Publication.create!(
    publication_id: 210,
    doi: "10.1002/bdrb.20315",
    published_date: "2011-10-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kavlock, Robert J.; Daston, George P.; Stedman, Donald; Hixon, Mary; Kim, James H.. Developmental Toxicity Testing for Safety Assessment: New Approaches and Technologies. BIRTH DEFECTS RESEARCH PART B-DEVELOPMENTAL AND REPRODUCTIVE TOXICOLOGY. 92(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/210"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "210",
    is_primary_author: true
)

Publication.create!(
    publication_id: 211,
    doi: "10.1093/toxsci/kfu234",
    published_date: "2015-02-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Keller, Douglas A.; Sander, Miriam; Carney, Edward W.; Doerrer, Nancy G.; Eaton, David L.; Fitzpatrick, Suzanne Compton; Hastings, Kenneth L.; Mendrick, Donna L.; Tice, Raymond R.; Watkins, Paul B.; Whelan, Maurice. FutureTox II: In vitro Data and In Silico Models for Predictive Toxicology. TOXICOLOGICAL SCIENCES. 143(2), (2015).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/211"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "211",
    is_primary_author: true
)

Publication.create!(
    publication_id: 212,
    doi: "10.1002/bdrc.20223",
    published_date: "2011-12-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kleinstreuer, Nicole C.. Disruption of embryonic vascular development in predictive toxicology. BIRTH DEFECTS RESEARCH PART C-EMBRYO TODAY-REVIEWS. 93(4), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/212"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "212",
    is_primary_author: true
)

Publication.create!(
    publication_id: 213,
    doi: "10.1002/bdrc.20223",
    published_date: "2010-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kochhar, Devendra M.. The Hemimelic Extra Toes Mouse Mutant: Historical Perspective on Unraveling Mechanisms of Dysmorphogenesis. BIRTH DEFECTS RESEARCH PART C-EMBRYO TODAY-REVIEWS. 90(2), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/213"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "213",
    is_primary_author: true
)

Publication.create!(
    publication_id: 214,
    doi: "10.1016/j.reprotox.2009.03.016",
    published_date: "2009-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Dix, David J.; Singh, Amar V.. Profiling the activity of environmental chemicals in prenatal developmental toxicity studies using the US EPA's ToxRefDB. REPRODUCTIVE TOXICOLOGY. 28(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/214"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "214",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "214",
    is_primary_author: false
)

Publication.create!(
    publication_id: 215,
    doi: "10.1289/ehp.12891",
    published_date: "2009-07-1",
    citation: "Kramer, Melissa G.; Firestone, Michael; Kavlock, Robert; Zenick, Harold. The Future of Toxicity Testing for Environmental Contaminants. ENVIRONMENTAL HEALTH PERSPECTIVES. 117(7), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/215"
)

Publication.create!(
    publication_id: 216,
    doi: "10.1002/jat.3265",
    published_date: "2016-08-1",
    citation: "Kuo, Byron; Webster, A. Francina; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Yauk, Carole L.. BMDExpress Data Viewer - a visualization tool to analyze BMDExpress datasets. JOURNAL OF APPLIED TOXICOLOGY. 36(8), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/216"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "216",
    is_primary_author: false
)

Publication.create!(
    publication_id: 217,
    doi: "10.1016/j.drudis.2016.10.011",
    published_date: "2016-10-29",
    citation: "Langley, G.R., I.M. Adcock, F. Busquet, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>, E. Csernok, C. Giese, T. Heinonen, K. Herrmann, M. Hofmann-Apitius, B. Landesmann, L.J. Marshall 11, E. McIvor, A.R. Muotri, F. Noor, K. Schutte, T. Seidle, A. van de Stolpe, H. Van Esch, C. Willett, and G. Woszczek. (DRUG DISCOVERY TODAY) Towards a 21st century roadmap for biomedical research and drug discovery: Consensus report and recommendations.   DRUG DISCOVERY TODAY. Elsevier Science Ltd, New York, NY, USA,  1-13, (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/217"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "217",
    is_primary_author: false
)

Publication.create!(
    publication_id: 218,
    doi: "10.1289/ehp.1510345",
    published_date: "2015-11-1",
    citation: "Langley, Gill; Austin, Christopher P.; Balapure, Anil K.; Birnbaum, Linda S.; Bucher, John R.; Fentem, Julia; Fitzpatrick, Suzanne C.; Fowle, John R.; Kavlock, Robert J.; Kitano, Hiroaki; Lidbury, Brett A.; Muotri, Alysson R.; Peng, Shuang-Qing; Sakharov, Dmitry; Seidle, Troy; Trez, Thales; Tonevitsky, Alexander; van de Stolpe, Anja; Whelan, Maurice; Willett, Catherine. Lessons from Toxicology: Developing a 21st-Century Paradigm for Medical Research. ENVIRONMENTAL HEALTH PERSPECTIVES. 123(11), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/218"
)

Publication.create!(
    publication_id: 219,
    doi: "10.14573/altex.1406091",
    published_date: "2014-01-1",
    citation: "Leist, Marcel; Hasiwa, Nina; Rovida, Costanza; Daneshian, Mardas; Basketter, David; Kimber, Ian; Clewell, Harvey; Gocht, Tilman; Goldberg, Alan; Busquet, Francois; Rossi, Anna-Maria; Schwarz, Michael; Stephens, Martin; Taalman, Rob; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; McKim, James; Harris, Georgina; Pamies, David; Hartung, Thomas. Consensus Report on the Future of Animal-Free Systemic Toxicity Testing. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(3), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/219"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "219",
    is_primary_author: false
)

Publication.create!(
    publication_id: 220,
    doi: "10.1002/bdra.23251",
    published_date: "2014-05-1",
    citation: "Leung, M. C. K.; Hutson, M. S.; Belmonte, J. M.; Swat, M.; Sipes, N.; Baker, N. C.; Spencer, R. M.; Seifert, A. W.; Perreault, S. D.; Glazier, J. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Computational Embryology and Predictive Toxicology of Hypospadias. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 100(5), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/220"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "220",
    is_primary_author: false
)

Publication.create!(
    publication_id: 221,
    doi: "10.1002/bdra.23519",
    published_date: "2016-05-1",
    citation: "Leung, M. C. K.; Kapraun, D. F.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, A. J.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. An Evaluation of ToxCast Angiogenic Disruptors for Effects on Mitochondrial Bioactivity Profiles. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 106(5), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/221"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "221",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "221",
    is_primary_author: false
)

Publication.create!(
    publication_id: 222,
    doi: "10.1016/j.reprotox.2016.05.005",
    published_date: "2016-09-1",
    citation: "Leung, Maxwell C. K.; Hutson, M. Shane; Seifert, Ashley W.; Spencer, Richard M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Computational modeling and simulation of genital tubercle development. REPRODUCTIVE TOXICOLOGY. 64(), (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/222"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "222",
    is_primary_author: false
)

Publication.create!(
    publication_id: 223,
    doi: "10.1289/ehp.1510385",
    published_date: "2016-07-1",
    citation: "Leung, Maxwell C. K.; Phuong, Jimmy; Baker, Nancy C.; Sipes, Nisha S.; Klinefelter, Gary R.; Martin, Matthew T.; McLaurin, Keith W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Darney, Sally Perreault; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Systems Toxicology of Male Reproductive Development: Profiling 774 Chemicals for Molecular Targets and Adverse Outcomes. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(7), (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/223"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "223",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "223",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "223",
    is_primary_author: false
)

Publication.create!(
    publication_id: 224,
    doi: "10.1097/01.ede.0000340351.70222.65",
    published_date: "2008-11-1",
    citation: "Little, J. C.; Xu, Y.; Hubal, Cohen E.; Clausen, P.. Exposure to Phthalate Emitted from Vinyl Flooring and Sorbed to Interior Surfaces, Dust, Airborne Particles and Human Skin. EPIDEMIOLOGY. 19(6), (2008).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/224"
)

Publication.create!(
    publication_id: 225,
    doi: "10.1021/es301088a",
    published_date: "2012-10-16",
    citation: "Little, John C.; Weschler, Charles J.; Nazaroff, William W.; Liu, Zhe; Hubal, Elaine A. Cohen. Rapid Methods to Estimate Potential Exposure to Semivolatile Organic Compounds in the Indoor Environment. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 46(20), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/225"
)

Publication.create!(
    publication_id: 226,
    doi: "10.1021/tx500501h",
    published_date: "2015-04-1",
    citation: "Liu, Jie; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Martin, Matthew T.; Hong, Huixiao; Chen, Minjun; Xu, Xiaowei; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. Predicting Hepatotoxicity Using ToxCast in Vitro Bioactivity and Chemical Structure. CHEMICAL RESEARCH IN TOXICOLOGY. 28(4), (2015).",
    project: "Virtual Tissues, vLiver",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/226"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "226",
    is_primary_author: false
)

Publication.create!(
    publication_id: 227,
    doi: "10.1080/15287394.2013.874246",
    published_date: "2014-01-1",
    citation: "Liu, Jun; Simmons, Steve O.; Pei, Ruoting. REGULATION OF IL-8 PROMOTER ACTIVITY BY VERRUCARIN A IN HUMAN MONOCYTIC THP-1 CELLS. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART A-CURRENT ISSUES. 77(19), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/227"
)

Publication.create!(
    publication_id: 228,
    doi: "10.1093/toxsci/kfn234",
    published_date: "2009-02-1",
    citation: "Lou, Inchio; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Lau, Christopher; Hanson, Roger G.; Lindstrom, Andrew B.; Strynar, Mark J.; Zehr, R. Dan; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Barton, Hugh A.. Modeling Single and Repeated Dose Pharmacokinetics of PFOA in Mice. TOXICOLOGICAL SCIENCES. 107(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/228"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "228",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "228",
    is_primary_author: false
)

Publication.create!(
    publication_id: 229,
    doi: "10.1371/journal.pone.0055603",
    published_date: "2013-02-7",
    citation: "Luijten, Mirjam; Singh, Amar V.; Bastian, Caleb A.; Westerman, Anja; Pisano, M. Michele; Pennings, Jeroen L. A.; Verhoef, Aart; Green, Maia L.; Piersma, Aldert H.; de Vries, Annemieke; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Lasting Effects on Body Weight and Mammary Gland Gene Expression in Female Mice upon Early Life Exposure to n-3 but Not n-6 High-Fat Diets. PLOS ONE. 8(2), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/229"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "229",
    is_primary_author: false
)

Publication.create!(
    publication_id: 230,
    doi: "10.1007/s11538-010-9508-5",
    published_date: "2010-10-1",
    citation: "Luke, Nicholas S.; DeVito, Michael J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; El-Masri, Hisham A.. Development of a Quantitative Model of Pregnane X Receptor (PXR) Mediated Xenobiotic Metabolizing Enzyme Induction. BULLETIN OF MATHEMATICAL BIOLOGY. 72(7), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/230"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "230",
    is_primary_author: false
)

Publication.create!(
    publication_id: 231,
    doi: "10.1002/em.20653",
    published_date: "2011-06-1",
    citation: "Mahadevan, Brinda; Snyder, Ronald D.; Waters, Michael D.; Benz, R. Daniel; Kemper, Raymond A.; Tice, Raymond R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Genetic Toxicology in the 21st Century: Reflections and Future Directions. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 52(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/231"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "231",
    is_primary_author: false
)

Publication.create!(
    publication_id: 232,
    doi: "10.1016/j.reprotox.2016.08.014",
    published_date: "2016-10-1",
    citation: "Makris, Susan L.; Scott, Cheryl Siegel; Fox, John; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Hotchkiss, Andrew K.; Arzuaga, Xabier; Euling, Susan Y.; Powers, Christina M.; Jinot, Jennifer; Hogan, Karen A.; Abbott, Barbara D.; Hunter, E. Sidney, III; Narotsky, Michael G.. A systematic evaluation of the potential effects of trichloroethylene exposure on cardiac development. REPRODUCTIVE TOXICOLOGY. 65(), (2016).",
    project: "Human Health Risk Assessment",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/232"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "232",
    is_primary_author: false
)

Publication.create!(
    publication_id: 233,
    doi: "10.1002/ieam.1923",
    published_date: "2017-03-1",
    citation: "Malloy, T.F., E. Beryt, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a>. (ESandT) Advancing Alternatives Analysis: The Role of Predictive Toxicology in Selecting Safer Chemical Products and Processes.   ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. American Chemical Society, Washington, DC, USA, (2017).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/233"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "233",
    is_primary_author: false
)

Publication.create!(
    publication_id: 234,
    doi: "10.1080/1062936X.2016.1253611",
    published_date: "2016-01-1",
    citation: "Mansouri, K.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">Grulke, C. M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A. M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, A. J.</a>. An automated curation procedure for addressing chemical errors and inconsistencies in public datasets used in QSAR modelling. SAR AND QSAR IN ENVIRONMENTAL RESEARCH. 27(11), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/234"
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "234",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "234",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "234",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "234",
    is_primary_author: false
)

Publication.create!(
    publication_id: 235,
    doi: "10.1289/ehp.1510267",
    published_date: "2016-07-1",
    citation: "Mansouri, Kamel; Abdelaziz, Ahmed; Rybacka, Aleksandra; Roncaglioni, Alessandra; Tropsha, Alexander; Varnek, Alexandre; Zakharov, Alexey; Worth, Andrew; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">Grulke, Christopher M.</a>; Trisciuzzi, Daniela; Fourches, Denis; Horvath, Dragos; Benfenati, Emilio; Muratov, Eugene; Wedebye, Eva Bay; Grisoni, Francesca; Mangiatordi, Giuseppe F.; Incisivo, Giuseppina M.; Hong, Huixiao; Ng, Hui W.; Tetko, Igor V.; Balabin, Ilya; Kancherla, Jayaram; Shen, Jie; Burton, Julien; Nicklaus, Marc; Cassotti, Matteo; Nikolov, Nikolai G.; Nicolotti, Orazio; Andersson, Patrik L.; Zang, Qingda; Politi, Regina; Beger, Richard D.; Todeschini, Roberto; Huang, Ruili; Farag, Sherif; Rosenberg, Sine A.; Slavov, Svetoslav; Hu, Xin; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. CERAPP: Collaborative Estrogen Receptor Activity Prediction Project. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(7), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/235"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "235",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "235",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "235",
    is_primary_author: false
)

Publication.create!(
    publication_id: 236,
    doi: "10.1007/978-1-4939-3609-0_16",
    published_date: "2016-01-1",
    citation: "Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. In Silico Study of In Vitro GPCR Assays by QSAR Modeling. IN SILICO METHODS FOR PREDICTING DRUG TOXICITY. 1425(), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/236"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "236",
    is_primary_author: false
)

Publication.create!(
    publication_id: 237,
    published_date: "2014-08-10",
    citation: "Mansouri, Kamel; Sipes, Nisha; Nicolas, Chantel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>. In-silico study of ToxCast GPCR assays by quantitative structure-activity relationships (QSARs) modeling. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 248(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/237"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "237",
    is_primary_author: false
)

Publication.create!(
    publication_id: 238,
    doi: "10.1093/toxsci/kfm065",
    published_date: "2007-06-1",
    citation: "Martin, Matthew T.; Brennan, Richard J.; Hu, Wenyue; Ayanoglu, Eser; Lau, Christopher; Ren, Hongzu; Wood, Carmen R.; Corton, J. Christopher; Kavlock, Robert J.; Dix, David J.. Toxicogenomic study of triazole fungicides and perfluoroalkyl acids in rat livers predicts toxicity and categorizes chemicals based on mechanisms of toxicity. TOXICOLOGICAL SCIENCES. 97(2), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/238"
)

Publication.create!(
    publication_id: 239,
    doi: "10.1289/ehp.0900951R",
    published_date: "2009-10-1",
    citation: "Martin, Matthew T.; Dix, David J.. US EPA's Toxicity Reference Database: Martin and Dix Respond. ENVIRONMENTAL HEALTH PERSPECTIVES. 117(10), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/239"
)

Publication.create!(
    publication_id: 240,
    doi: "10.1021/tx900325g",
    published_date: "2010-03-1",
    citation: "Martin, Matthew T.; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Rotroff, Daniel M.; Romanov, Sergei; Medvedev, Alexander; Poltoratskaya, Natalia; Gambarian, Maria; Moeser, Matt; Makarov, Sergei S.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>. Impact of Environmental Chemicals on Key Transcription Regulators and Correlation to Toxicity End Points within EPA's ToxCast Program. CHEMICAL RESEARCH IN TOXICOLOGY. 23(3), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/240"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "240",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "240",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "240",
    is_primary_author: false
)

Publication.create!(
    publication_id: 241,
    doi: "10.1289/ehp.0800074",
    published_date: "2009-03-1",
    citation: "Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Reif, David M.; Kavlock, Robert J.; Dix, David J.. Profiling Chemicals Based on Chronic Toxicity Results from the US EPA ToxRef Database. ENVIRONMENTAL HEALTH PERSPECTIVES. 117(3), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/241"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "241",
    is_primary_author: false
)

Publication.create!(
    publication_id: 242,
    doi: "10.3109/19396368.2011.652288",
    published_date: "2012-02-1",
    citation: "Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Dix, David J.. Economic benefits of using adaptive predictive models of reproductive toxicity in the context of a tiered testing program. SYSTEMS BIOLOGY IN REPRODUCTIVE MEDICINE. 58(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/242"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "242",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "242",
    is_primary_author: false
)

Publication.create!(
    publication_id: 243,
    doi: "10.1095/biolreprod.111.090977",
    published_date: "2011-08-1",
    citation: "Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Dix, David J.. Predictive Model of Rat Reproductive Toxicity from ToxCast High Throughput Screening. BIOLOGY OF REPRODUCTION. 85(2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/243"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "243",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "243",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "243",
    is_primary_author: false
)

Publication.create!(
    publication_id: 244,
    doi: "10.1093/toxsci/kfp080",
    published_date: "2009-07-1",
    citation: "Martin, Matthew T.; Mendez, Elizabeth; Corum, Daniel G.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Rotroff, Daniel M.; Dix, David J.. Profiling the Reproductive Toxicity of Chemicals from Multigeneration Studies in the Toxicity Reference Database. TOXICOLOGICAL SCIENCES. 110(1), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/244"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "244",
    is_primary_author: false
)

Publication.create!(
    publication_id: 245,
    doi: "10.1093/biolreprod/85.s1.791",
    published_date: "2011-07-1",
    citation: "Martin, Matthew T.; Rotroff, Daniel; Dix, David J.. Validation, Acceptance, and Extension of a Predictive Model of Rodent Reproductive Toxicity Using Toxcast High-Throughput Screening. BIOLOGY OF REPRODUCTION. 85(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/245"
)

Publication.create!(
    publication_id: 246,
    doi: "10.1021/es2033857",
    published_date: "2012-03-20",
    citation: "Mattingly, Carolyn J.; McKone, Thomas E.; Callahan, Michael A.; Blake, Judith A.; Hubal, Elaine A. Cohen. Providing the Missing Link: the Exposure Science Ontology ExO. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 46(6), (2012).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/246"
)

Publication.create!(
    publication_id: 247,
    doi: "10.1016/j.reprotox.2016.11.005",
    published_date: "2016-11-10",
    citation: "McCollum, C., J. Conde Vancells, C. Hans, M. Vazquez-Chantada, N. Kleinstreuer, T. Tal , <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a>, S. Shah, F. Merchant, R. Finnell, J. Gustafsson, R. Cabrera, and M. Bondesson. (Reproductive Toxicology) Identification of vascular disruptor compounds by a tiered analysis in zebrafish embryos and mouse embryonic endothelial cells.   REPRODUCTIVE TOXICOLOGY. Elsevier Science Ltd, New York, NY, USA, (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/247"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "247",
    is_primary_author: false
)

Publication.create!(
    publication_id: 248,
    doi: "10.1007/s00216-016-0139-z",
    published_date: "2016-12-16",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/30\">Mceachran, A.</a>, J. Sobus, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">A. Williams</a>. (Analytical and Bioanalytical Chemistry) Identifying known unknowns using the US EPAs CompTox Chemistry Dashboard.   Analytical and Bioanalytical Chemistry. Springer, New York, NY, USA,  1-7, (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/248"
)

ScientistPublication.create!(
    scientist_id: "30",
    publication_id: "248",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "248",
    is_primary_author: false
)

Publication.create!(
    publication_id: 249,
    doi: "10.1093/toxsci/kfr295",
    published_date: "2012-03-1",
    citation: "McLanahan, Eva D.; El-Masri, Hisham A.; Sweeney, Lisa M.; Kopylev, Leonid Y.; Clewell, Harvey J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Schlosser, P. M.. Physiologically Based Pharmacokinetic Model Use in Risk Assessment-Why Being Published Is Not Enough. TOXICOLOGICAL SCIENCES. 126(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/249"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "249",
    is_primary_author: false
)

Publication.create!(
    publication_id: 250,
    doi: "10.1371/journal.pone.0070911",
    published_date: "2013-08-5",
    citation: "Mitchell, J., N. Parbon, Z.A. Collier, P. Egeghy , E. Hubal , I. Linkov, and D. Vallero. A Decision Analytic Approach to Exposure-Based Chemical Prioritization.   PLoS ONE. Public Library of Science, San Francisco, CA, USA, 8(8): 1-13, (2013).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/250"
)

Publication.create!(
    publication_id: 251,
    doi: "10.1016/j.scitotenv.2013.04.051",
    published_date: "2013-08-1",
    citation: "Mitchell, Jade; Arnot, Jon A.; Jolliet, Olivier; Georgopoulos, Panos G.; Isukapalli, Sastry; Dasgupta, Surajit; Pandian, Muhilan; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; Egeghy, Peter; Hubal, Elaine A. Cohen; Vallero, Daniel A.. Comparison of modeling approaches to prioritize chemicals based on estimates of exposure and exposure potential. SCIENCE OF THE TOTAL ENVIRONMENT. 458(), (2013).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/251"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "251",
    is_primary_author: false
)

Publication.create!(
    publication_id: 252,
    doi: "10.2217/14622416.8.9.1229",
    published_date: "2007-09-1",
    citation: "Motsinger, Alison A.; Ritchie, Marylyn D.; Reif, David M.. Novel methods for detecting epistasis in pharmacogenomics studies. PHARMACOGENOMICS. 8(9), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/252"
)

Publication.create!(
    publication_id: 253,
    doi: "10.1002/gepi.20420",
    published_date: "2009-01-1",
    citation: "Motsinger-Reif, Alison A.; Reif, David M.; Fanelli, Theresa J.; Ritchie, Marylyn D.. A Comparison of Analytical Methods for Genetic Association Studies (vol 32, pg 767, 2008). GENETIC EPIDEMIOLOGY. 33(8), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/253"
)

Publication.create!(
    publication_id: 254,
    doi: "10.1002/gepi.20345",
    published_date: "2008-12-1",
    citation: "Motsinger-Reif, Alison A.; Reif, David M.; Fanelli, Theresa J.; Ritchie, Marylyn D.. A Comparison of Analytical Methods for Genetic Association Studies. GENETIC EPIDEMIOLOGY. 32(8), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/254"
)

Publication.create!(
    publication_id: 255,
    doi: "10.1016/j.tiv.2013.02.012",
    published_date: "2013-06-1",
    citation: "Murk, AlberTinka J.; Rijntjes, Eddy; Blaauboer, Bas J.; Clewell, Rebecca; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Dingemans, Milou M. L.; Furlow, J. David; Kavlock, Robert; Koehrle, Josef; Opitz, Robert; Traas, Theo; Visser, Theo J.; Xia, Menghang; Gutleb, Arno C.. Mechanism-based testing strategy using in vitro approaches for identification of thyroid hormone disrupting chemicals. TOXICOLOGY IN VITRO. 27(4), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/255"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "255",
    is_primary_author: false
)

Publication.create!(
    publication_id: 256,
    doi: "10.1289/ehp.1204992",
    published_date: "2012-12-1",
    citation: "Nazaroff, William; Weschler, Charles J.; Little, John C.; Hubal, Elaine A. Cohen. Intake to Production Ratio: A Measure of Exposure Intimacy for Manufactured Chemicals. ENVIRONMENTAL HEALTH PERSPECTIVES. 120(12), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/256"
)

Publication.create!(
    publication_id: 257,
    doi: "10.1021/nn4037927",
    published_date: "2013-08-1",
    citation: "Nel, Andre E.; Nasser, Elina; Godwin, Hilary; Avery, David; Bahadori, Tina; Bergeson, Lynn; Beryt, Elizabeth; Bonner, James C.; Boverhof, Darrell; Carter, Janet; Castranova, Vince; DeShazo, J. R.; Hussain, Saber M.; Kane, Agnes B.; Klaessig, Frederick; Kuempel, Eileen; Lafranconi, Mark; Landsiedel, Robert; Malloy, Timothy; Miller, Mary Beth; Morris, Jeffery; Moss, Kenneth; Oberdorster, Gunter; Pinkerton, Kent; Pleus, Richard C.; Shatkin, Jo Anne; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell</a>; Tolaymat, Thabet; Wang, Amy; Wong, Jeffrey. A Multi-Stakeholder Perspective on the Use of Alternative Test Strategies for Nanomaterial Safety Assessment. ACS NANO. 7(8), (2013).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/257"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "257",
    is_primary_author: false
)

Publication.create!(
    publication_id: 258,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Nichols, H.; Barrier, M.; Jeffay, S.; Chandler, K.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>; Hunter, S.. Assessment of a 42 Metal Salts Chemical Library in Mouse Embryonic Stem Cells. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/258"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "258",
    is_primary_author: false
)

Publication.create!(
    publication_id: 259,
    published_date: "2014-08-10",
    citation: "Nicolas, Chantel I.; Goldsmith, Michael R.; Ahir, Bhavesh K.; Wetmore, Barbara A.; Dionisio, Kathie L.; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Rabinowitz, James; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>. High-throughput exposure modeling of semi-volatile chemicals in articles of commerce. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 248(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/259"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "259",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "259",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "259",
    is_primary_author: false
)

Publication.create!(
    publication_id: 260,
    doi: "10.1016/j.tox.2015.07.005",
    published_date: "2015-10-2",
    citation: "Oshida, Keiyu; Vasani, Naresh; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Applegate, Dawn; Gonzalez, Frank J.; Aleksunes, Lauren M.; Klaassen, Curtis D.; Corton, J. Christopher. Screening a mouse liver gene expression compendium identifies modulators of the aryl hydrocarbon receptor (AhR). TOXICOLOGY. 336(), (2015).",
    project: "Virtual Tissues, vLiver",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/260"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "260",
    is_primary_author: false
)

Publication.create!(
    publication_id: 261,
    doi: "10.1371/journal.pone.0112655",
    published_date: "2015-02-17",
    citation: "Oshida, Keiyu; Vasani, Naresh; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Applegate, Dawn; Rosen, Mitch; Abbott, Barbara; Lau, Christopher; Guo, Grace; Aleksunes, Lauren M.; Klaassen, Curtis; Corton, J. Christopher. Identification of Modulators of the Nuclear Receptor Peroxisome Proliferator-Activated Receptor alpha (PPAR alpha) in a Mouse Liver Gene Expression Compendium. PLOS ONE. 10(2), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/261"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "261",
    is_primary_author: false
)

Publication.create!(
    publication_id: 262,
    doi: "10.1016/j.fertnstert.2004.12.046",
    published_date: "2005-06-1",
    citation: "Ostermeier, CG; Goodrich, RJ; Diamond, MP; Dix, DJ; Krawetz, SA. Toward using stable spermatozoal RNAs for prognostic assessment of male factor fertility. FERTILITY AND STERILITY. 83(6), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/262"
)

Publication.create!(
    publication_id: 263,
    doi: "10.1016/j.reprotox.2011.10.018",
    published_date: "2012-04-1",
    citation: "Padilla, S.; Corum, D.; Padnos, B.; Hunter, D. L.; Beam, A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, K. A.</a>; Sipes, N.; Kleinstreuer, N.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>; Dix, D. J.; Reif, D. M.. Zebrafish developmental screening of the ToxCast (TM) Phase I chemical library. REPRODUCTIVE TOXICOLOGY. 33(2), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/263"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "263",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "263",
    is_primary_author: false
)

Publication.create!(
    publication_id: 264,
    doi: "10.1016/j.yrtph.2015.03.015",
    published_date: "2015-06-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, G.</a>; Ball, N.; Boogaard, P. J.; Becker, R. A.; Hubesch, B.. Building scientific confidence in the development and evaluation of read-across. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 72(1), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/264"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "264",
    is_primary_author: true
)

Publication.create!(
    publication_id: 265,
    doi: "10.1016/j.yrtph.2016.08.007",
    published_date: "2016-12-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Casati, Silvia; Basketter, David A.; Asturiol, David; Roberts, David W.; Lepoittevin, Jean-Pierre; Worth, Andrew P.; Aschberger, Karin. Can currently available non-animal methods detect pre and pro-haptens relevant for skin sensitization?. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 82(), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/265"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "265",
    is_primary_author: true
)

Publication.create!(
    publication_id: 266,
    doi: "10.1021/acs.chemrestox.5b00388",
    published_date: "2016-04-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/10\">Fitzpatrick, Jeremy M.</a>. Current and Future Perspectives on the Development, Evaluation, and Application of in Silico Approaches for Predicting Toxicity. CHEMICAL RESEARCH IN TOXICOLOGY. 29(4), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/266"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "266",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "10",
    publication_id: "266",
    is_primary_author: false
)

Publication.create!(
    publication_id: 267,
    doi: "10.1016/j.yrtph.2015.02.011",
    published_date: "2015-04-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Simon, Ted W.; Rowlands, J. Craig; Budinsky, Robert A.; Becker, Richard A.. Proposing a scientific confidence framework to help support the application of adverse outcome pathways for regulatory purposes. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 71(3), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/267"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "267",
    is_primary_author: true
)

Publication.create!(
    publication_id: 268,
    doi: "10.1016/j.tox.2013.08.006",
    published_date: "2013-10-4",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Paul, Katie B.</a>; Hedge, Joan M.; Macherla, Chitralekha; Filer, Dayne L.; Burgess, Emily; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Hornung, Michael W.. Cross-species analysis of thyroperoxidase inhibition by xenobiotics demonstrates conservation of response between pig and rat. TOXICOLOGY. 312(), (2013).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/268"
)

ScientistPublication.create!(
    scientist_id: "23",
    publication_id: "268",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "268",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "268",
    is_primary_author: false
)

Publication.create!(
    publication_id: 269,
    doi: "10.1021/tx400310w",
    published_date: "2014-03-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Paul, Katie B.</a>; Hedge, Joan M.; Rotroff, Daniel M.; Hornung, Michael W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>. Development of a Thyroperoxidase Inhibition Assay for High-Throughput Screening. CHEMICAL RESEARCH IN TOXICOLOGY. 27(3), (2014).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/269"
)

ScientistPublication.create!(
    scientist_id: "23",
    publication_id: "269",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "269",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "269",
    is_primary_author: false
)

Publication.create!(
    publication_id: 270,
    doi: "10.1016/j.tiv.2013.07.008",
    published_date: "2013-10-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/23\">Paul, Katie B.</a>; Thompson, Jerry T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Vanden Heuvel, John P.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>. Evidence for triclosan-induced activation of human and rodent xenobiotic nuclear receptors. TOXICOLOGY IN VITRO. 27(7), (2013).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/270"
)

ScientistPublication.create!(
    scientist_id: "23",
    publication_id: "270",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "270",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "270",
    is_primary_author: false
)

Publication.create!(
    publication_id: 271,
    doi: "10.1007/978-1-4939-2778-4_1",
    published_date: "2015-01-1",
    citation: "Perkins, E., N. Garcia-Reyero, S. Edwards , C. Wittwehr, D. Villeneuve , D. Lyons , and G. Ankley. The Adverse Outcome Pathway: A conceptual framework to support toxicity testing in the 21st century.  Chapter 1,  Computational Systems Toxicology: Discovering and Using the Toxicological Blueprint of Active Substances. Springer Science + Business Media, New York, NY, USA,  1-26, (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/271"
)

Publication.create!(
    publication_id: 272,
    doi: "10.1289/ehp.1306638",
    published_date: "2013-09-1",
    citation: "Perkins, Edward J.; Ankley, Gerald T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Garcia-Reyero, Natalia; LaLone, Carlie A.; Johnson, Mark S.; Tietge, Joseph E.; Villeneuve, Daniel L.. Current Perspectives on the Use of Alternative Species in Human Health and Ecological Hazard Assessments. ENVIRONMENTAL HEALTH PERSPECTIVES. 121(9), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/272"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "272",
    is_primary_author: false
)

Publication.create!(
    publication_id: 273,
    doi: "10.1039/C6GC02744J",
    published_date: "2017-01-1",
    citation: "Phillips, K., <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">J. Wambaugh</a>, <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">C. Grulke</a>, K. Dionisio, and K. Isaacs. High-throughput screening of chemicals as functional substitutes using structure-based classification models.   GREEN CHEMISTRY. Royal Society of Chemistry, Cambridge,  UK, 19: 1063-1074, (2017).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/273"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "273",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "273",
    is_primary_author: false
)

Publication.create!(
    publication_id: 274,
    doi: "10.1021/acs.chemrestox.6b00079",
    published_date: "2016-09-1",
    citation: "Pinto, Caroline L.; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Browne, Patience. Prediction of Estrogenic Bioactivity of Environmental Chemical Metabolites. CHEMICAL RESEARCH IN TOXICOLOGY. 29(9), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/274"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "274",
    is_primary_author: false
)

Publication.create!(
    publication_id: 275,
    doi: "10.1021/es3023072",
    published_date: "2012-09-4",
    citation: "Powers, Christina M.; Dana, Genya; Gillespie, Patricia; Gwinn, Maureen R.; Hendren, Christine Ogilvie; Long, Thomas C.; Wang, Amy; Davis, J. Michael. Comprehensive Environmental Assessment: A Meta-Assessment Approach. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 46(17), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/275"
)

Publication.create!(
    publication_id: 276,
    doi: "10.1002/em.21734",
    published_date: "2012-09-1",
    citation: "Prasad, R. Y.; McGee, J. K.; Killius, M. G.; Ackerman, D.; Blackman, C. F.; DeMarini, D. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S. O.</a>. Cellular Stress Response to Engineered Nanoparticles: Effect of Size, Surface Coating, and Cellular Uptake. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 53(), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/276"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "276",
    is_primary_author: false
)

Publication.create!(
    publication_id: 277,
    doi: "10.1016/j.tiv.2013.07.005",
    published_date: "2013-09-1",
    citation: "Prasad, Raju Y.; McGee, John K.; Killius, Micaela G.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/6\">Suarez, Danielle A.</a>; Blackman, Carl F.; DeMarini, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>. Investigating oxidative stress and inflammatory responses elicited by silver nanoparticles using high-throughput reporter genes in HepG2 cells: Effect of size, surface coating, and intracellular uptake. TOXICOLOGY IN VITRO. 27(6), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/277"
)

ScientistPublication.create!(
    scientist_id: "6",
    publication_id: "276",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "277",
    is_primary_author: false
)

Publication.create!(
    publication_id: 278,
    doi: "10.1289/ehp.11077",
    published_date: "2008-05-1",
    citation: "Rabinowitz, James R.; Goldsmith, Michael-Rock; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen B.</a>; Pasquinelli, Melissa A.. Computational molecular modeling for evaluating the toxicity of environmental chemicals: Prioritizing bioassay requirements. ENVIRONMENTAL HEALTH PERSPECTIVES. 116(5), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/278"
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "278",
    is_primary_author: false
)

Publication.create!(
    publication_id: 279,
    doi: "10.1021/tx900135x",
    published_date: "2009-09-1",
    citation: "Rabinowitz, James R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen B.</a>; Laws, Susan C.; Goldsmith, Michael-Rock. Molecular Modeling for Screening Environmental Chemicals for Estrogenicity: Use of the Toxicant-Target Approach. CHEMICAL RESEARCH IN TOXICOLOGY. 22(9), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/279"
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "279",
    is_primary_author: false
)

Publication.create!(
    publication_id: 280,
    doi: "10.1016/j.ntt.2011.05.051",
    published_date: "2011-07-1",
    citation: "Raffaele, Kathleen; Bergfeldt, Don; Burgess-Herbert, Sarah; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Diwan, Sanjivani; Makris, Susan; Segal, Deborah; Gilbert, Mary. Next Generation Risk Assessment and Developmental Neurotoxicity: Potential and Challenges in Evaluation of the Thyroid Hormonal Pathway. NEUROTOXICOLOGY AND TERATOLOGY. 33(4), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/280"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "280",
    is_primary_author: false
)

Publication.create!(
    publication_id: 281,
    doi: "10.1016/j.envint.2015.12.008",
    published_date: "2016-03-1",
    citation: "Rager, Julia E.; Strynar, Mark J.; Liang, Shuang; McMahen, Rebecca L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">Grulke, Christopher M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Isaacs, Kristin K.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, Antony J.</a>; Sobus, Jon R.. Linking high resolution mass spectrometry data with exposure and toxicity forecasts to advance high-throughput environmental monitoring. ENVIRONMENT INTERNATIONAL. 88(), (2016).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/281"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "281",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "281",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "281",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "281",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "281",
    is_primary_author: false
)

Publication.create!(
    publication_id: 282,
    doi: "10.1164/ajrccm-conference.2009.179.1_MeetingAbstracts.A2757",
    published_date: "2009-01-1",
    citation: "Reif, D. M.; Gallagher, J. E.; Hubal, E. Cohen; Neas, L. M.; Hudgens, E. E.; Heidenfelder, B. L.; Edwards, S. W.. Integrated Analysis of Blood Gene Expression Data with Demographic, Clinical, and Environmental Exposure Information To Identify Subtypes of Childhood Asthma. AMERICAN JOURNAL OF RESPIRATORY AND CRITICAL CARE MEDICINE. 179(), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/282"
)

Publication.create!(
    publication_id: 283,
    doi: "10.1097/01.ede.0000340497.85202.c0",
    published_date: "2008-11-1",
    citation: "Reif, D. M.; Heidenfelder, B.; Edwards, S.; Gallagher, J.; Hudgens, E.; Neas, L.; Rogers, J.; Williams, A.; Hubal, Cohen E.. Integrating Demographic, Clinical, and Environmental Exposure Information to Identify Genomic Biomarkers Associated with Subtypes of Childhood Asthma. EPIDEMIOLOGY. 19(6), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/283"
)

Publication.create!(
    publication_id: 284,
    doi: "10.1038/gene.2008.80",
    published_date: "2009-03-1",
    citation: "Reif, D. M.; Motsinger-Reif, A. A.; McKinney, B. A.; Rock, M. T.; Crowe, J. E., Jr.; Moore, J. H.. Integrated analysis of genetic and proteomic data identifies biomarkers associated with adverse events following smallpox vaccination. GENES AND IMMUNITY. 10(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/284"
)

Publication.create!(
    publication_id: 285,
    doi: "10.1289/ehp.1002180",
    published_date: "2010-12-1",
    citation: "Reif, David M.; Martin, Matthew T.; Tan, Shirlee W.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Dix, David J.; Kavlock, Robert J.. Endocrine Profiling and Prioritization of Environmental Chemicals Using ToxCast Data. ENVIRONMENTAL HEALTH PERSPECTIVES. 118(12), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/285"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "285",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "285",
    is_primary_author: false
)


ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "285",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "285",
    is_primary_author: false
)

Publication.create!(
    publication_id: 286,
    doi: "10.1093/bioinformatics/bts686",
    published_date: "2013-02-1",
    citation: "Reif, David M.; Sypa, Myroslav; Lock, Eric F.; Wright, Fred A.; Wilson, Ander; Cathey, Tommy; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard R.</a>; Rusyn, Ivan. ToxPi GUI: an interactive visualization tool for transparent integration of data from diverse sources of evidence. BIOINFORMATICS. 29(3), (2013).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/286"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "286",
    is_primary_author: false
)

Publication.create!(
    publication_id: 287,
    doi: "10.1002/em.20522",
    published_date: "2009-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A. M.</a>. Chemical and Biological Profiling Approaches for Exploring Mutagenicity and Carcinogenicity of EPA ToxCast (TM) Chemicals. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 50(7), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/287"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "287",
    is_primary_author: true
)

Publication.create!(
    publication_id: 288,
    doi: "10.1002/bdra.20373",
    published_date: "2007-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A.</a>; Julien, E.; Yang, C.. Cheminformatic approaches in predictive toxicology. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 79(5), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/288"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "288",
    is_primary_author: true
)

Publication.create!(
    publication_id: 289,
    published_date: "2005-08-28",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, AM</a>. Promoting data standards and open public access to structure-searchable toxicity databases: DSSTox and coordinated public efforts. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 230(), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/289"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "289",
    is_primary_author: true
)

Publication.create!(
    publication_id: 290,
    published_date: "2006-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, AM</a>; Gold, LS; Nicklaus, MC. Chemical structure indexing of toxicity data on the Internet: Moving toward a flat world. CURRENT OPINION IN DRUG DISCOVERY &amp; DEVELOPMENT. 9(3), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/290"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "290",
    is_primary_author: true
)

Publication.create!(
    publication_id: 291,
    doi: "10.1021/tx060116u",
    published_date: "2006-10-16",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Future of toxicologys - Predictive toxicology: An expanded view of chemical toxicity. CHEMICAL RESEARCH IN TOXICOLOGY. 19(10), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/291"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "291",
    is_primary_author: true
)

Publication.create!(
    publication_id: 292,
    doi: "10.1021/acs.chemrestox.6b00135",
    published_date: "2016-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/4\">Grulke, Christopher M.</a>; Volarath, Patra; Thillainadarajah, Inthirany; Yang, Chihae; Rathman, James; Martin, Matthew T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kancherla, Jayaram; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, Antony J.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. ToxCast Chemical Landscape: Paving the Road to 21st Century Toxicology. CHEMICAL RESEARCH IN TOXICOLOGY. 29(8), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/292"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "292",
    is_primary_author: true
)


ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "4",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "292",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "292",
    is_primary_author: false
)


Publication.create!(
    publication_id: 293,
    published_date: "2009-08-16",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Wolf, Maritja A.; Williams-Devane, ClarLynda R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>. CINF 1-US EPA computational toxicology programs: Central role of chemical-annotation efforts and molecular databases. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 238(), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/293"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "293",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "293",
    is_primary_author: false
)

Publication.create!(
    publication_id: 294,
    doi: "10.1080/15376510701857452",
    published_date: "2008-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Yang, Chihae; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. Toxicity data informatics: Supporting a new paradigm for toxicity prediction. TOXICOLOGY MECHANISMS AND METHODS. 18(2-3), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/294"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "294",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "294",
    is_primary_author: false
)

Publication.create!(
    publication_id: 295,
    doi: "10.1038/NNANO.2015.141",
    published_date: "2015-09-1",
    citation: "Richter, Alexander P.; Brown, Joseph S.; Bharti, Bhuvnesh; Wang, Amy; Gangwal, Sumit; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Hubal, Elaine A. Cohen; Paunov, Vesselin N.; Stoyanov, Simeon D.; Velev, Orlin D.. An environmentally benign antimicrobial nanoparticle based on a silver-infused lignin core. NATURE NANOTECHNOLOGY. 10(9), (2015).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/295"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "295",
    is_primary_author: false
)

Publication.create!(
    publication_id: 296,
    doi: "10.1016/j.reprotox.2006.05.008",
    published_date: "2006-11-1",
    citation: "Rockett, John C.; Narotsky, Michael G.; Thompson, Kary E.; Thillainadarajah, Inthirany; Blystone, Chad R.; Goetz, Amber K.; Ren, Hongzu; Best, Deborah S.; Murrell, Rachel N.; Nichols, Harriette P.; Schmid, Judith E.; Wolf, Douglas C.; Dix, David J.. Effect of conazole fungicides on reproductive development in the female rat. REPRODUCTIVE TOXICOLOGY. 22(4), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/296"
)

Publication.create!(
    publication_id: 297,
    doi: "10.1080/10937404.2010.483949",
    published_date: "2010-01-1",
    citation: "Rotroff, Daniel M.; Beam, Andrew L.; Dix, David J.; Farmer, Adam; Freeman, Kimberly M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; LeCluyse, Edward L.; Martin, Matthew T.; Reif, David M.; Ferguson, Stephen S.. XENOBIOTIC-METABOLIZING ENZYME AND TRANSPORTER GENE EXPRESSION IN PRIMARY CULTURES OF HUMAN HEPATOCYTES MODULATED BY TOXCAST CHEMICALS. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/297"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "297",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "297",
    is_primary_author: false
)

Publication.create!(
    publication_id: 298,
    doi: "10.1021/tx400117y",
    published_date: "2013-07-1",
    citation: "Rotroff, Daniel M.; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Sipes, Nisha S.; Abassi, Yama A.; Jin, Can; Stampfl, Melinda; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. Real-Time Growth Kinetics Measuring Hormone Mimicry for ToxCast Chemicals in T-47D Human Ductal Carcinoma Cells. CHEMICAL RESEARCH IN TOXICOLOGY. 26(7), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/298"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "298",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "298",
    is_primary_author: false
)


ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "298",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "298",
    is_primary_author: false
)

Publication.create!(
    publication_id: 299,
    doi: "10.1289/ehp.1205065",
    published_date: "2013-01-1",
    citation: "Rotroff, Daniel M.; Dix, David J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Martin, Matthew T.; McLaurin, Keith W.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Singh, Amar V.; Xia, Menghang; Huang, Ruili; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. Using in Vitro High Throughput Screening Assays to Identify Potential Endocrine-Disrupting Chemicals. ENVIRONMENTAL HEALTH PERSPECTIVES. 121(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/299"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "299",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "299",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "299",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "299",
    is_primary_author: false
)

Publication.create!(
    publication_id: 300,
    doi: "10.1093/biolreprod/85.s1.797",
    published_date: "2011-07-1",
    citation: "Rotroff, Daniel M.; Dix, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas</a>; Martin, Matthew; Singh, Amar V.; McLaurin, Keith; Reif, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>. Using ToxCast Data to Characterize Assay Utility for More Efficient Endocrine Disruptor Screening. BIOLOGY OF REPRODUCTION. 85(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/300"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "300",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "300",
    is_primary_author: false
)

Publication.create!(
    publication_id: 301,
    doi: "10.1021/es502676e",
    published_date: "2014-08-5",
    citation: "Rotroff, Daniel M.; Martin, Matt T.; Dix, David J.; Filer, Dayne L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Sipes, Nisha S.; Reif, David M.; Xia, Menghang; Huang, Ruili; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. Predictive Endocrine Testing in the 21st Century Using in Vitro Assays of Estrogen Receptor Signaling Responses. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 48(15), (2014).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/301"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "301",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "301",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "301",
    is_primary_author: false
)

Publication.create!(
    publication_id: 302,
    doi: "10.1093/toxsci/kfq220",
    published_date: "2010-10-1",
    citation: "Rotroff, Daniel M.; Wetmore, Barbara A.; Dix, David J.; Ferguson, Stephen S.; Clewell, Harvey J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; LeCluyse, Edward L.; Andersen, Melvin E.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Smith, Cornelia M.; Sochaski, Mark A.; Kavlock, Robert J.; Boellmann, Frank; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Incorporating Human Dosimetry and Exposure into High-Throughput In Vitro Toxicity Screening. TOXICOLOGICAL SCIENCES. 117(2), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/302"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "302",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "302",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "302",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "302",
    is_primary_author: false
)

Publication.create!(
    publication_id: 303,
    doi: "10.1093/toxsci/kfw026",
    published_date: "2016-05-1",
    citation: "Ryan, Natalia; Chorley, Brian; Tice, Raymond R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Corton, J. Christopher. Moving Toward Integrating Gene Expression Profiling Into High-Throughput Testing: A Gene Expression Biomarker Accurately Predicts Estrogen Receptor alpha Modulation in a Microarray Compendium. TOXICOLOGICAL SCIENCES. 151(1), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/303"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "303",
    is_primary_author: false
)

Publication.create!(
    publication_id: 304,
    doi: "10.1016/j.envint.2016.03.010",
    published_date: "2016-07-1",
    citation: "Samuel, Gbeminiyi O.; Hoffmann, Sebastian; Wright, Robert A.; Lalu, Manoj Mathew; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Becker, Richard A.; DeGeorge, George L.; Fergusson, Dean; Hartung, Thomas; Lewis, R. Jeffrey; Stephens, Martin L.. Guidance on assessing the methodological and reporting quality of toxicologically relevant studies: A scoping review. ENVIRONMENT INTERNATIONAL. 92-93(), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/304"
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "304",
    is_primary_author: false
)

Publication.create!(
    publication_id: 305,
    doi: "10.1038/jes.2009.8",
    published_date: "2010-03-4",
    citation: "Sanchez, Yolanda Anita; Deener, Kacee; Hubal, Elaine Cohen; Knowlton, Carrie; Reif, David; Segal, Deborah. Research needs for community-based risk assessment: findings from a multi-disciplinary workshop. JOURNAL OF EXPOSURE SCIENCE AND ENVIRONMENTAL EPIDEMIOLOGY. 20(2), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/305"
)

Publication.create!(
    publication_id: 306,
    doi: "10.1210/er.2014-v35i3-2331",
    published_date: "2014-06-1",
    citation: "Sauer, Scott Jeffrey; Davis, John B.; Lyerly, H. Kim; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Williams, Kevin P.; Devi, Gayathri R.. Bisphenol a Interacts with Gper, Activates EGFR and ERK Signaling and Antagonizes Efficacy of Epidermal Growth Factor Receptor Tyrosine Kinase Inhibitors in Breast Cancer Cells. ENDOCRINE REVIEWS. 35(3), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/306"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "306",
    is_primary_author: false
)

Publication.create!(
    publication_id: 307,
    doi: "10.1002/etc.3309",
    published_date: "2016-03-1",
    citation: "Schroeder, Anthony L.; Ankley, Gerald T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Villeneuve, Daniel L.. Environmental surveillance and monitoringThe next frontiers for high-throughput toxicology. ENVIRONMENTAL TOXICOLOGY AND CHEMISTRY. 35(3), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/307"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "307",
    is_primary_author: false
)

Publication.create!(
    publication_id: 308,
    doi: "10.1289/ehp.1002476",
    published_date: "2011-03-1",
    citation: "Sedykh, Alexander; Zhu, Hao; Tang, Hao; Zhang, Liying; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Rusyn, Ivan; Tropsha, Alexander. Use of in Vitro HTS-Derived Concentration-Response Data as Biological Descriptors Improves the Accuracy of QSAR Models of in Vivo Toxicity. ENVIRONMENTAL HEALTH PERSPECTIVES. 119(3), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/308"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "308",
    is_primary_author: false
)

Publication.create!(
    publication_id: 309,
    doi: "10.1080/10408440591007133",
    published_date: "2005-10-4",
    citation: "Seed, J; Carney, EW; Corley, RA; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, KM</a>; DeSesso, JM; Foster, PMD; Kavlock, R; Kimmel, G; Klaunig, J; Meek, ME; Preston, RJ; Slikker, W; Tabacova, S; Williams, GM; Wiltse, J; Zoeller, RT; Fenner-Crisp, P; Patton, DE. Overview: Using mode of action and life stage information to evaluate the human relevance of animal toxicity data. CRITICAL REVIEWS IN TOXICOLOGY. 35(8-9), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/309"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "309",
    is_primary_author: false
)


Publication.create!(
    publication_id: 310,
    doi: "10.1016/j.yrtph.2015.03.005",
    published_date: "2015-04-14",
    citation: "Segal , D., S. Makris , A. Kraft , A. Bale, M. Gilbert , D. Bergfelt , K. Raffaele , R.B. Blain, K.M. Fedak, M.J. Selegrade, and <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>. Evaluation of the ToxRTool's ability to rate the reliability of toxicological data for human health hazard assessments.   REGULATORY TOXICOLOGY AND PHARMACOLOGY. Elsevier Science Ltd, New York, NY, USA, 72(1): 94-101, (2015).",
    project: "Human Health Risk Assessment",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/310"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "310",
    is_primary_author: false
)

Publication.create!(
    publication_id: 311,
    doi: "10.1289/ehp.7254",
    published_date: "2005-02-1",
    citation: "Shafer, TJ; Meyer, DA; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, KM</a>. Developmental neurotoxicity of pyrethroid insecticides: Critical review and future research needs. ENVIRONMENTAL HEALTH PERSPECTIVES. 113(2), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/311"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "311",
    is_primary_author: false
)


Publication.create!(
    publication_id: 312,
    doi: "10.1371/journal.pone.0014584",
    published_date: "2011-02-14",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Houck, Keith; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Kavlock, Robert J.; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; Dix, David J.. Using Nuclear Receptor Activity to Stratify Hepatocarcinogens. PLOS ONE. 6(2), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/312"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "312",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "312",
    is_primary_author: false
)
ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "312",
    is_primary_author: false
)

Publication.create!(
    publication_id: 313,
    doi: "10.1016/j.yrtph.2016.05.008",
    published_date: "2016-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Liu, Jie; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>. Systematically evaluating read-across prediction and performance using a local validity approach characterized by chemical structure and bioactivity information. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 79(), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/313"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "313",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "313",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "313",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "313",
    is_primary_author: false
)

Publication.create!(
    publication_id: 314,
    doi: "10.1289/ehp.1409029",
    published_date: "2016-07-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Jack, John; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Liu, Jie; Martin, Matthew T.; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; Dix, David J.; Kavlock, Robert J.. Using ToxCast (TM) Data to Reconstruct Dynamic Cell State Trajectories and Estimate Toxicological Points of Departure. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(7), (2016).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/314"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "314",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "314",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "314",
    is_primary_author: false
)

Publication.create!(
    publication_id: 315,
    doi: "10.1080/10937404.2010.483948",
    published_date: "2010-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>. VIRTUAL TISSUES IN TOXICOLOGY. JOURNAL OF TOXICOLOGY AND ENVIRONMENTAL HEALTH-PART B-CRITICAL REVIEWS. 13(2-4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/315"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "315",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "315",
    is_primary_author: false
)

Publication.create!(
    publication_id: 316,
    doi: "10.1093/toxsci/kft164",
    published_date: "2013-10-1",
    citation: "Shen, Jie; Xu, Lei; Fang, Hong; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Bray, Jeffrey D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Zhou, Guangxu; Colatsky, Thomas J.; Aungst, Jason L.; Teng, Christina; Harris, Steve C.; Ge, Weigong; Dai, Susie Y.; Su, Zhenqiang; Jacobs, Abigail C.; Harrouk, Wafa; Perkins, Roger; Tong, Weida; Hong, Huixiao. EADB: An Estrogenic Activity Database for Assessing Potential Endocrine Activity. TOXICOLOGICAL SCIENCES. 135(2), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/316"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "316",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "316",
    is_primary_author: false
)

Publication.create!(
    publication_id: 317,
    doi: "10.1039/c6gc01058j",
    published_date: "2016-01-1",
    citation: "Shen, Longzhu Q.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Melnikov, Fjodor; Roethle, John; Gudibanda, Aditya; Zimmerman, Julie B.; Anastas, Paul T.. Probabilistic diagram for designing chemicals with reduced potency to incur cytotoxicity. GREEN CHEMISTRY. 18(16), (2016).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/317"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "317",
    is_primary_author: false
)

Publication.create!(
    publication_id: 318,
    doi: "10.1039/c6gc02073a",
    published_date: "2016-01-1",
    citation: "Shen, Longzhu Q.; Melnikov, Fjodor; Roethle, John; Gudibanda, Aditya; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Zimmerman, Julie B.; Anastas, Paul T.. Coupled molecular design diagrams to guide safer chemical design with reduced likelihood of perturbing the NRF2-ARE antioxidant pathway and inducing cytotoxicity. GREEN CHEMISTRY. 18(23), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/318"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "318",
    is_primary_author: false
)

Publication.create!(
    publication_id: 319,
    doi: "10.1038/nbt.1665",
    published_date: "2010-08-1",
    citation: "Shi, Leming; Campbell, Gregory; Jones, Wendell D.; Campagne, Fabien; Wen, Zhining; Walker, Stephen J.; Su, Zhenqiang; Chu, Tzu-Ming; Goodsaid, Federico M.; Pusztai, Lajos; Shaughnessy, John D., Jr.; Oberthuer, Andre; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Paules, Richard S.; Fielden, Mark; Barlogie, Bart; Chen, Weijie; Du, Pan; Fischer, Matthias; Furlanello, Cesare; Gallas, Brandon D.; Ge, Xijin; Megherbi, Dalila B.; Symmans, W. Fraser; Wang, May D.; Zhang, John; Bitter, Hans; Brors, Benedikt; Bushel, Pierre R.; Bylesjo, Max; Chen, Minjun; Cheng, Jie; Cheng, Jing; Chou, Jeff; Davison, Timothy S.; Delorenzi, Mauro; Deng, Youping; Devanarayan, Viswanath; Dix, David J.; Dopazo, Joaquin; Dorff, Kevin C.; Elloumi, Fathi; Fan, Jianqing; Fan, Shicai; Fan, Xiaohui; Fang, Hong; Gonzaludo, Nina; Hess, Kenneth R.; Hong, Huixiao; Huan, Jun; Irizarry, Rafael A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Juraeva, Dilafruz; Lababidi, Samir; Lambert, Christophe G.; Li, Li; Li, Yanen; Li, Zhen; Lin, Simon M.; Liu, Guozhen; Lobenhofer, Edward K.; Luo, Jun; Luo, Wen; McCall, Matthew N.; Nikolsky, Yuri; Pennello, Gene A.; Perkins, Roger G.; Philip, Reena; Popovici, Vlad; Price, Nathan D.; Qian, Feng; Scherer, Andreas; Shi, Tieliu; Shi, Weiwei; Sung, Jaeyun; Thierry-Mieg, Danielle; Thierry-Mieg, Jean; Thodima, Venkata; Trygg, Johan; Vishnuvajjala, Lakshmi; Wang, Sue Jane; Wu, Jianping; Wu, Yichao; Xie, Qian; Yousef, Waleed A.; Zhang, Liang; Zhang, Xuegong; Zhong, Sheng; Zhou, Yiming; Zhu, Sheng; Arasappan, Dhivya; Bao, Wenjun; Lucas, Anne Bergstrom; Berthold, Frank; Brennan, Richard J.; Buness, Andreas; Catalano, Jennifer G.; Chang, Chang; Chen, Rong; Cheng, Yiyu; Cui, Jian; Czika, Wendy; Demichelis, Francesca; Deng, Xutao; Dosymbekov, Damir; Eils, Roland; Feng, Yang; Fostel, Jennifer; Fulmer-Smentek, Stephanie; Fuscoe, James C.; Gatto, Laurent; Ge, Weigong; Goldstein, Darlene R.; Guo, Li; Halbert, Donald N.; Han, Jing; Harris, Stephen C.; Hatzis, Christos; Herman, Damir; Huang, Jianping; Jensen, Roderick V.; Jiang, Rui; Johnson, Charles D.; Jurman, Giuseppe; Kahlert, Yvonne; Khuder, Sadik A.; Kohl, Matthias; Li, Jianying; Li, Li; Li, Menglong; Li, Quan-Zhen; Li, Shao; Li, Zhiguang; Liu, Jie; Liu, Ying; Liu, Zhichao; Meng, Lu; Madera, Manuel; Martinez-Murillo, Francisco; Medina, Ignacio; Meehan, Joseph; Miclaus, Kelci; Moffitt, Richard A.; Montaner, David; Mukherjee, Piali; Mulligan, George J.; Neville, Padraic; Nikolskaya, Tatiana; Ning, Baitang; Page, Grier P.; Parker, Joel; Parry, R. Mitchell; Peng, Xuejun; Peterson, Ron L.; Phan, John H.; Quanz, Brian; Ren, Yi; Riccadonna, Samantha; Roter, Alan H.; Samuelson, Frank W.; Schumacher, Martin M.; Shambaugh, Joseph D.; Shi, Qiang; Shippy, Richard; Si, Shengzhu; Smalter, Aaron; Sotiriou, Christos; Soukup, Mat; Staedtler, Frank; Steiner, Guido; Stokes, Todd H.; Sun, Qinglan; Tan, Pei-Yi; Tang, Rong; Tezak, Zivana; Thorn, Brett; Tsyganova, Marina; Turpaz, Yaron; Vega, Silvia C.; Visintainer, Roberto; von Frese, Juergen; Wang, Charles; Wang, Eric; Wang, Junwei; Wang, Wei; Westermann, Frank; Willey, James C.; Woods, Matthew; Wu, Shujian; Xiao, Nianqing; Xu, Joshua; Xu, Lei; Yang, Lun; Zeng, Xiao; Zhang, Jialu; Zhang, Li; Zhang, Min; Zhao, Chen; Puri, Raj K.; Scherf, Uwe; Tong, Weida; Wolfinger, Russell D.. The MicroArray Quality Control (MAQC)-IIII study of common practices for the development and validation of microarray-based predictive models. NATURE BIOTECHNOLOGY. 28(8), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/319"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "319",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "319",
    is_primary_author: false
)

Publication.create!(
    publication_id: 320,
    doi: "10.1038/nbt1239",
    published_date: "2006-09-1",
    citation: "Shi, Leming; Reid, Laura H.; Jones, Wendell D.; Shippy, Richard; Warrington, Janet A.; Baker, Shawn C.; Collins, Patrick J.; de Longueville, Francoise; Kawasaki, Ernest S.; Lee, Kathleen Y.; Luo, Yuling; Sun, Yongming Andrew; Willey, James C.; Setterquist, Robert A.; Fischer, Gavin M.; Tong, Weida; Dragan, Yvonne P.; Dix, David J.; Frueh, Felix W.; Goodsaid, Federico M.; Herman, Damir; Jensen, Roderick V.; Johnson, Charles D.; Lobenhofer, Edward K.; Puri, Raj K.; Scherf, Uwe; Thierry-Mieg, Jean; Wang, Charles; Wilson, Mike; Wolber, Paul K.; Zhang, Lu; Amur, Shashi; Bao, Wenjun; Barbacioru, Catalin C.; Lucas, Anne Bergstrom; Bertholet, Vincent; Boysen, Cecilie; Bromley, Bud; Brown, Donna; Brunner, Alan; Canales, Roger; Cao, Xiaoxi Megan; Cebula, Thomas A.; Chen, James J.; Cheng, Jing; Chu, Tzu-Ming; Chudin, Eugene; Corson, John; Corton, J. Christopher; Croner, Lisa J.; Davies, Christopher; Davison, Timothy S.; Delenstarr, Glenda; Deng, Xutao; Dorris, David; Eklund, Aron C.; Fan, Xiao-hui; Fang, Hong; Fulmer-Smentek, Stephanie; Fuscoe, James C.; Gallagher, Kathryn; Ge, Weigong; Guo, Lei; Guo, Xu; Hager, Janet; Haje, Paul K.; Han, Jing; Han, Tao; Harbottle, Heather C.; Harris, Stephen C.; Hatchwell, Eli; Hauser, Craig A.; Hester, Susan; Hong, Huixiao; Hurban, Patrick; Jackson, Scott A.; Ji, Hanlee; Knight, Charles R.; Kuo, Winston P.; LeClerc, J. Eugene; Levy, Shawn; Li, Quan-Zhen; Liu, Chunmei; Liu, Ying; Lombardi, Michael J.; Ma, Yunqing; Magnuson, Scott R.; Maqsodi, Botoul; McDaniel, Tim; Mei, Nan; Myklebost, Ola; Ning, Baitang; Novoradovskaya, Natalia; Orr, Michael S.; Osborn, Terry W.; Papallo, Adam; Patterson, Tucker A.; Perkins, Roger G.; Peters, Elizabeth H.; Peterson, Ron; Philips, Kenneth L.; Pine, P. Scott; Pusztai, Lajos; Qian, Feng; Ren, Hongzu; Rosen, Mitch; Rosenzweig, Barry A.; Samaha, Raymond R.; Schena, Mark; Schroth, Gary P.; Shchegrova, Svetlana; Smith, Dave D.; Staedtler, Frank; Su, Zhenqiang; Sun, Hongmei; Szallasi, Zoltan; Tezak, Zivana; Thierry-Mieg, Danielle; Thompson, Karol L.; Tikhonova, Irina; Turpaz, Yaron; Vallanat, Beena; Van, Christophe; Walker, Stephen J.; Wang, Sue Jane; Wang, Yonghong; Wolfinger, Russ; Wong, Alex; Wu, Jie; Xiao, Chunlin; Xie, Qian; Xu, Jun; Yang, Wen; Zhang, Liang; Zhong, Sheng; Zong, Yaping; Slikker, William, Jr.. The MicroArray Quality Control (MAQC) project shows inter- and intraplatform reproducibility of gene expression measurements. NATURE BIOTECHNOLOGY. 24(9), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/320"
)

Publication.create!(
    publication_id: 321,
    doi: "10.1289/ehp.1104709",
    published_date: "2012-08-1",
    citation: "Shukla, Sunita J.; Huang, Ruili; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Tice, Raymond R.; Witt, Kristine L.; VanLeer, Danielle; Ramabhadran, Ram; Austin, Christopher P.; Xia, Menghang. Profiling Environmental Chemicals for Activity in the Antioxidant Response Element Signaling Pathway Using a High Throughput Screening Approach. ENVIRONMENTAL HEALTH PERSPECTIVES. 120(8), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/321"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "321",
    is_primary_author: false
)

Publication.create!(
    publication_id: 322,
    published_date: "2010-01-1",
    citation: "Silbajoris, R.; Dailey, L. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>; Osornio-Vargas, A. R.; Samet, J. M.. Exposure To Mexicali PM10 Induces IL-8 Expression Through An Alternative NF kappa B Mechanism In Human Airway Epithelial Cells. AMERICAN JOURNAL OF RESPIRATORY AND CRITICAL CARE MEDICINE. 181(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/322"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "322",
    is_primary_author: false
)

Publication.create!(
    publication_id: 323,
    doi: "10.1164/ajrccm-conference.2009.179.1_MeetingAbstracts.A3151",
    published_date: "2009-01-1",
    citation: "Silbajoris, R.; Tal, T. L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>; Osornio-Vargas, A. R.; Samet, J. M.. Exposure to Mexicali PM Induces NF kappa beta-Dependent Il-8 Transcriptional Activity in Human Airway Epithelial Cells.. AMERICAN JOURNAL OF RESPIRATORY AND CRITICAL CARE MEDICINE. 179(), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/323"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "323",
    is_primary_author: false
)

Publication.create!(
    publication_id: 324,
    published_date: "2014-01-1",
    citation: "Silbajoris, R.; Wages, P.; Speen, A.; Dailey, L. A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>; Bromberg, P. A.; Samet, J. M.. The Ubiquitous Pm Component Zinc Induces Ho-1 Expression Through Multiple Targets In The Nrf2/keap1 Signaling Pathway. AMERICAN JOURNAL OF RESPIRATORY AND CRITICAL CARE MEDICINE. 189(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/324"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "324",
    is_primary_author: false
)

Publication.create!(
    publication_id: 325,
    doi: "10.1289/ehp.1103594",
    published_date: "2011-10-1",
    citation: "Silbajoris, Robert; Osornio-Vargas, Alvaro R.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Reed, William; Bromberg, Philip A.; Dailey, Lisa A.; Samet, James M.. Ambient Particulate Matter Induces Interleukin-8 Expression through an Alternative NF-kappa B (Nuclear Factor-Kappa B) Mechanism in Human Airway Epithelial Cells. ENVIRONMENTAL HEALTH PERSPECTIVES. 119(10), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/325"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "325",
    is_primary_author: false
)

Publication.create!(
    publication_id: 326,
    doi: "10.1002/em.20625",
    published_date: "2010-08-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S. O.</a>. Systems Biology Approach for Understanding MOA, Dose-Response and Susceptibility to Environmental Chemicals. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 51(7), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/326"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "326",
    is_primary_author: true
)

Publication.create!(
    publication_id: 327,
    doi: "10.1002/bdra.23519",
    published_date: "2016-05-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S.</a>. A High-Throughput Screening Assay to Detect Thyroperoxidase Inhibitors and Discover Structural Alerts. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 106(5), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/327"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "327",
    is_primary_author: true
)

Publication.create!(
    publication_id: 328,
    doi: "10.2174/138620711796504451",
    published_date: "2011-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>. Fireflies in the Coalmine: Luciferase Technologies in Next-Generation Toxicity Testing. COMBINATORIAL CHEMISTRY &amp; HIGH THROUGHPUT SCREENING. 14(8), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/328"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "328",
    is_primary_author: true
)

Publication.create!(
    publication_id: 329,
    doi: "10.1093/toxsci/kfp193",
    published_date: "2009-11-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>. Hypoxia Response: A Model Toxicity Pathway for High-Throughput Screening. TOXICOLOGICAL SCIENCES. 112(1), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/329"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "329",
    is_primary_author: true
)

Publication.create!(
    publication_id: 330,
    doi: "10.1093/toxsci/kfp140",
    published_date: "2009-10-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Fan, Chun-Yang; Ramabhadran, Ram. Cellular Stress Response Pathway System as a Sentinel Ensemble in Toxicological Screening. TOXICOLOGICAL SCIENCES. 111(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/330"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "330",
    is_primary_author: true
)

Publication.create!(
    publication_id: 331,
    doi: "10.1002/bdra.20605",
    published_date: "2009-05-1",
    citation: "Singh, A., V; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Implementation of a Flexible Tool for Automated Literature-Mining and Knowledgebase Development (DevToxMine (TM)). BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 85(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/331"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "331",
    is_primary_author: false
)

Publication.create!(
    publication_id: 332,
    doi: "10.1002/bdra.20475",
    published_date: "2008-05-1",
    citation: "Singh, A., V; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, I</a>; Kavalock, R. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Knowledge base for v-Embryo: Information infrastructure for In silico modeling. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 82(5), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/332"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "332",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "332",
    is_primary_author: false
)

Publication.create!(
    publication_id: 333,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Singh, A., V; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, I</a>; Sipes, N. S.; Reif, D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Chemical Prioritization for Developmental Toxicity Using Literature Mining-Based Weighting of Toxcast (TM) Assays. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/333"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "333",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "333",
    is_primary_author: false
)

Publication.create!(
    publication_id: 334,
    doi: "10.1002/bdra.20677",
    published_date: "2010-05-1",
    citation: "Singh, A., V; Sipes, N. S.; Kleinstreuer, N.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, I</a>. Literature Mining and Knowledge Discovery Tools for Virtual Tissues Knowledgebase (VTKB). BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 88(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/334"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "334",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "334",
    is_primary_author: false
)

Publication.create!(
    publication_id: 335,
    doi: "10.1021/tx400021f",
    published_date: "2013-04-23",
    citation: "Sipes , N., M. Martin , P. Kothiya , D. Reif, <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">R. Judson</a> , <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">A. Richard</a> , <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">K. Houck</a> , D. Dix , R. Kavlock , and <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a>. Profiling 976 ToxCast chemicals across 331 enzymatic and receptor signaling assays.   CHEMICAL RESEARCH IN TOXICOLOGY. American Chemical Society, Washington, DC, USA, 26: 878&minus;895, (2013).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/335"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "335",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "335",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "335",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "335",
    is_primary_author: false
)

Publication.create!(
    publication_id: 336,
    doi: "10.1002/bdra.23146",
    published_date: "2013-05-1",
    citation: "Sipes, N. S.; Hutson, M. S.; Baker, N. C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Computational Embryology and Predictive Toxicology of Cleft Palate. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 97(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/336"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "336",
    is_primary_author: false
)

Publication.create!(
    publication_id: 337,
    doi: "10.1002/bdra.23251",
    published_date: "2014-05-1",
    citation: "Sipes, N. S.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Firestone, M. P.; Cohen-Hubal, E.. EPA's Children's Environmental Health Roadmap: Applying the 21st Century Vision to Prenatal Development. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 100(5), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/337"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "337",
    is_primary_author: false
)

Publication.create!(
    publication_id: 338,
    doi: "10.1002/bdra.23023",
    published_date: "2012-05-1",
    citation: "Sipes, N. S.; Martin, M. T.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Species-Specific Predictive Signatures of Developmental Toxicity Using the ToxCast (TM) Chemical Library. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 94(5), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/338"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "338",
    is_primary_author: false
)

Publication.create!(
    publication_id: 339,
    doi: "10.1002/bdra.20834",
    published_date: "2011-05-1",
    citation: "Sipes, N. S.; Martin, M. T.; Reif, D. R.; Kleinstreuer, N. C.; Padilla, S.; Rountree, M. R.; Singh, A., V; Chandler, K. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Dix, D. J.; Kavlock, R. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Predictive Modeling of Developmental Toxicity. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 91(5), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/339"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "339",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "339",
    is_primary_author: false
)

Publication.create!(
    publication_id: 340,
    doi: "10.1002/bdra.20677",
    published_date: "2010-05-1",
    citation: "Sipes, N. S.; Rountree, M. R.; Kleinstreuer, N. C.; Dix, D. J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, R. S.</a>; Kavlock, R. J.; Swat, M.; Glazier, J. A.; Dewoskin, R. S.; Singh, A., V; Spencer, R. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>. Development of a Computational (In Silico) Model of Ocular Teratogenesis. BIRTH DEFECTS RESEARCH PART A-CLINICAL AND MOLECULAR TERATOLOGY. 88(5), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/340"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "340",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "340",
    is_primary_author: false
)

Publication.create!(
    publication_id: 341,
    doi: "10.1021/tx400021",
    published_date: "2013-06-1",
    citation: "Sipes, Nisha S.; Martin, Matthew T.; Kothiya, Parth; Reif, David M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Dix, David J.; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Profiling 976 ToxCast Chemicals across 331 Enzymatic and Receptor Signaling Assays. CHEMICAL RESEARCH IN TOXICOLOGY. 26(6), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/341"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "341",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "341",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "341",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "341",
    is_primary_author: false
)

Publication.create!(
    publication_id: 342,
    doi: "10.1093/toxsci/kfr220",
    published_date: "2011-11-1",
    citation: "Sipes, Nisha S.; Martin, Matthew T.; Reif, David M.; Kleinstreuer, Nicole C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Singh, Amar V.; Chandler, Kelly J.; Dix, David J.; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Predictive Models of Prenatal Developmental Toxicity from ToxCast High-Throughput Screening Data. TOXICOLOGICAL SCIENCES. 124(1), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/342"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "342",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "342",
    is_primary_author: false
)

Publication.create!(
    publication_id: 343,
    doi: "10.1002/bdrc.20214",
    published_date: "2011-09-1",
    citation: "Sipes, Nisha S.; Padilla, Stephanie; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>. Zebrafish-As an Integrative Model for Twenty-first Century Toxicity Testing. BIRTH DEFECTS RESEARCH PART C-EMBRYO TODAY-REVIEWS. 93(3), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/343"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "343",
    is_primary_author: false
)

Publication.create!(
    publication_id: 344,
    doi: "10.3109/10408444.2013.853726",
    published_date: "2014-01-1",
    citation: "Slob, W., and <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">W. Setzer</a>. (Critical Reviews in Toxicology) Shape and Steepness of Toxicological Dose-Response Relationships of Continuous Endpoints.   CRITICAL REVIEWS IN TOXICOLOGY. CRC Press LLC, Boca Raton, FL, USA, 44(3): 270-297, (2014).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/344"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "344",
    is_primary_author: false
)

Publication.create!(
    publication_id: 345,
    doi: "10.1371/journal.pone.0162428",
    published_date: "2016-09-16",
    citation: "Sluka, James P.; Fu, Xiao; Swat, Maciej; Belmonte, Julio M.; Cosmanescu, Alin; Clendenon, Sherry G.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Glazier, James A.. A Liver-Centric Multiscale Modeling Framework for Xenobiotics. PLOS ONE. 11(9), (2016).",
    project: "Virtual Tissues, vLiver",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/345"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "345",
    is_primary_author: false
)

Publication.create!(
    publication_id: 346,
    doi: "10.1289/ehp.1509912",
    published_date: "2016-06-1",
    citation: "Smith, Martyn T.; Guyton, Kathryn Z.; Gibbons, Catherine F.; Fritz, Jason M.; Portier, Christopher J.; Rusyn, Ivan; DeMarini, David M.; Caldwell, Jane C.; Kavlock, Robert J.; Lambert, Paul F.; Hecht, Stephen S.; Bucher, John R.; Stewart, Bernard W.; Baan, Robert A.; Cogliano, Vincent J.; Straif, Kurt. Key Characteristics of Carcinogens as a Basis for Organizing Data on Mechanisms of Carcinogenesis. ENVIRONMENTAL HEALTH PERSPECTIVES. 124(6), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/346"
)

Publication.create!(
    publication_id: 347,
    doi: "10.1289/ehp.1409177",
    published_date: "2015-10-1",
    citation: "Sobus, Jon R.; DeWoskin, Robert S.; Tan, Yu-Mei; Pleil, Joachim D.; Phillips, Martin Blake; George, Barbara Jane; Christensen, Krista; Schreinemachers, Dina M.; Williams, Marc A.; Hubal, Elaine A. Cohen; Edwards, Stephen W.. Uses of NHANES Biomarker Data for Chemical Risk Assessment: Trends, Challenges, and Opportunities. ENVIRONMENTAL HEALTH PERSPECTIVES. 123(10), (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/347"
)

Publication.create!(
    publication_id: 348,
    doi: "10.1016/j.tiv.2016.08.006",
    published_date: "2016-10-1",
    citation: "Soldatow, Valerie; Peffer, Richard C.; Trask, O. Joseph; Cowie, David E.; Andersen, Melvin E.; LeCluyse, Edward; <a href=\"http://comptox.ag.epa.gov/impact/scientists/7\">Deisenroth, Chad</a>. Development of an in vitro high content imaging assay for quantitative assessment of CAR-dependent mouse, rat, and human primary hepatocyte proliferation. TOXICOLOGY IN VITRO. 36(), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/348"
)

ScientistPublication.create!(
    scientist_id: "7",
    publication_id: "348",
    is_primary_author: false
)

Publication.create!(
    publication_id: 349,
    doi: "10.1016/j.reprotox.2012.06.006",
    published_date: "2013-01-1",
    citation: "Solecki, Roland; Barbellion, Stephane; Bergmann, Brigitte; Buergin, Heinrich; Buschmann, Jochen; Clark, Ruth; Comotto, Laura; Fuchs, Antje; Faqi, Ali Said; Gerspach, Ralph; Grote, Konstanze; Hakansson, Helen; Heinrich, Verena; Heinrich-Hirsch, Barbara; Hofmann, Thomas; Huebel, Ulrich; Inazaki, Thelma Helena; Khalil, Samia; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Kudicke, Sabine; Lingk, Wolfgang; Makris, Susan; Mueller, Simone; Paumgartten, Francisco; Pfeil, Rudolf; Rama, Elkiane Macedo; Schneiders, Steffen; Shiota, Kohei; Tamborini, Eva; Tegelenbosch, Mariska; Ulbrich, Beate; van Duijnhoven, E. A. J.; Wise, David; Chahoud, Ibrahim. Harmonization of description and classification of fetal observations: Achievements and problems still unresolved Report of the 7th Workshop on the Terminology in Developmental Toxicology Berlin, 4-6 May 2011. REPRODUCTIVE TOXICOLOGY. 35(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/349"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "349",
    is_primary_author: false
)

Publication.create!(
    publication_id: 350,
    doi: "10.1016/j.reprotox.2015.06.046",
    published_date: "2015-11-1",
    citation: "Solecki, Roland; Rauch, Martina; Gall, Andrea; Buschmann, Jochen; Clark, Ruth; Fuchs, Antje; Kan, Haidong; Heinrich, Verena; Kellner, Rupert; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Li, Weihua; Makris, Susan L.; Ooshima, Yojiro; Paumgartten, Francisco; Piersma, Aldert H.; Schoenfelder, Gilbert; Oelgeschlaeger, Michael; Schaefer, Christof; Shiota, Kohei; Ulbrich, Beate; Ding, Xuncheng; Chahoud, Ibrahim. Continuing harmonization of terminology and innovations for methodologies in developmental toxicology: Report of the 8th Berlin Workshop on Developmental Toxicity, 14-16 May 2014. REPRODUCTIVE TOXICOLOGY. 57(), (2015).",
    project: "Human Health Risk Assessment",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/350"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "350",
    is_primary_author: false
)

Publication.create!(
    publication_id: 351,
    doi: "10.1016/j.tox.2014.02.016",
    published_date: "2014-03-11",
    citation: "Starr , J., S. Graham , D. Ross , R. Tornero-Velez , E. Scollon , M.J. DeVito, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a> , M. Wolansky, and M. Hughes. Environmentally Relevant Mixing Ratios in Cumulative Assessments: A Study of the Kinetics of Pyrethroids and Their Ester Cleavage Metabolites in Blood and Brain; and the Effect of a Pyrethroid Mixture on the Motor Activity of Rats.   TOXICOLOGY. Elsevier Science Ltd, New York, NY, USA, 320: 1-82, (2014).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/351"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "351",
    is_primary_author: false
)

Publication.create!(
    publication_id: 352,
    published_date: "2013-01-1",
    citation: "Stephens, Martin L.; Andersen, Melvin; Becker, Richard A.; Betts, Kellyn; Boekelheide, Kim; Carney, Ed; Chapin, Robert; Devlin, Dennis; Fitzpatrick, Suzanne; Fowle, John R., III; Harlow, Patricia; Hartung, Thomas; Hoffmann, Sebastian; Holsapple, Michael; Jacobs, Abigail; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Naidenko, Olga; Pastoor, Tim; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Rowan, Andrew; Scherer, Roberta; Shaikh, Rashid; Simon, Ted; Wolf, Douglas; Zurlo, Joanne. Evidence-based Toxicology for the 21st Century: Opportunities and Challenges. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 30(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/352"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "352",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "352",
    is_primary_author: false
)

Publication.create!(
    publication_id: 353,
    doi: "10.14573/altex.2013.1.074",
    published_date: "2013-01-1",
    citation: "Stephens, Martin L.; Andersen, Melvin; Becker, Richard A.; Betts, Kellyn; Boekelheide, Kim; Carney, Ed; Chapin, Robert; Devlin, Dennis; Fitzpatrick, Suzanne; Fowle, John R., III; Harlow, Patricia; Hartung, Thomas; Hoffmann, Sebastian; Holsapple, Michael; Jacobs, Abigail; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Naidenko, Olga; Pastoor, Tim; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>; Rowan, Andrew; Scherer, Roberta; Shaikh, Rashid; Simon, Ted; Wolf, Douglas; Zurlo, Joanne. Evidence-based Toxicology for the 21st Century: Opportunities and Challenges. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 30(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/353"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "353",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "353",
    is_primary_author: false
)

Publication.create!(
    publication_id: 354,
    doi: "10.1016/B978-0-12-374367-1.00018-5",
    published_date: "2010-01-1",
    citation: "Stoker, Tammy E.; Kavlock, Robert J.. Pesticides as Endocrine-Disrupting Chemicals. HAYES' HANDBOOK OF PESTICIDE TOXICOLOGY, VOLS 1 AND 2, 3RD EDITION. (), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/354"
)

Publication.create!(
    publication_id: 355,
    doi: "10.1016/j.ntt.2015.04.095",
    published_date: "2015-05-1",
    citation: "Strickland, Jenna; Martin, Matt; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>; Shafer, Tim. Screening the ToxCast Phase I and II libraries for acute neurotoxicity using cortical neurons grown on multi-well microelectrode array (mwMEA) plates. NEUROTOXICOLOGY AND TERATOLOGY. 49(), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/355"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "355",
    is_primary_author: false
)

Publication.create!(
    publication_id: 356,
    doi: "10.1016/j.toxlet.2005.11.015",
    published_date: "2006-06-20",
    citation: "Sun, GB; Thai, SF; Lambert, GR; Wolf, DC; Tully, DB; Goetz, AK; George, MH; Grindstaff, RD; Dix, DJ; Nesnow, S. Fluconazole-induced hepatic cytochrome P450 gene expression and enzymatic activities in rats and mice. TOXICOLOGY LETTERS. 164(1), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/356"
)

Publication.create!(
    publication_id: 357,
    doi: "10.1016/j.toxlet.2004.10.006",
    published_date: "2005-02-15",
    citation: "Sun, GB; Thai, SF; Tully, DB; Lambert, GR; Goetz, AK; Wolf, DC; Dix, DJ; Nesnow, S. Propiconazole-induced cytochrome P450 gene expression and enzymatic activities in rat and mouse liver. TOXICOLOGY LETTERS. 155(2), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/357"
)

Publication.create!(
    publication_id: 358,
    doi: "10.1016/j.reprotox.2016.12.004",
    published_date: "2016-12-19",
    citation: "Tal, T., C. Kilty, A. Smith, C. LaLone , B. Kennedy, A. Tennant , C. McCollum, M. Bondesson, <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a> , S. Padilla , and N. Kleinstreuer. Screening for angiogenic inhibitors in zebrafish to evaluate a predictive model for developmental vascular toxicity. REPRODUCTIVE TOXICOLOGY. Elsevier Science Ltd, New York, NY, USA. (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/358"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "358",
    is_primary_author: false
)

Publication.create!(
    publication_id: 359,
    doi: "10.1016/j.reprotox.2014.05.014",
    published_date: "2014-09-1",
    citation: "Tal, T. L.; McCollum, C. W.; Harris, P. S.; Olin, J.; Kleinstreuer, N.; Wood, C. E.; Hans, C.; Shah, S.; Merchant, F. A.; Bondesson, M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>; Padilla, S.; Hemmer, M. J.. Immediate and long-term consequences of vascular toxicity during zebrafish development. REPRODUCTIVE TOXICOLOGY. 48(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/359"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "359",
    is_primary_author: false
)

Publication.create!(
    publication_id: 360,
    published_date: "2010-02-15",
    citation: "Tal, Tamara L.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Silbajoris, Robert; Dailey, Lisa; Cho, Seung-Hyun; Ramabhadran, Ram; Linak, William; Reed, William; Bromberg, Philip A.; Samet, James M.. Differential transcriptional regulation of IL-8 expression by human airway epithelial cells exposed to diesel exhaust particles. TOXICOLOGY AND APPLIED PHARMACOLOGY. 243(1), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/360"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "360",
    is_primary_author: false
)

Publication.create!(
    publication_id: 361,
    published_date: "2010-08-22",
    citation: "Tang, Hao; Zhu, Hao; Zhang, Liying; Sedykh, Alexander; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Rusyn, Ivan; Tropsha, Alexander. Toxicity reference database (ToxRefDB) to develop predictive toxicity models and prioritize compounds for future toxicity testing. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 240(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/361"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "361",
    is_primary_author: false
)

Publication.create!(
    publication_id: 362,
    doi: "10.1016/j.tox.2011.01.003",
    published_date: "2011-03-15",
    citation: "Tatum-Gibbs, Katoria; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Das, Kaberi P.; Zehr, Robert D.; Strynar, Mark J.; Lindstrom, Andrew B.; Delinsky, Amy; Lau, Christopher. Comparative pharmacokinetics of perfluorononanoic acid in rat and mouse. TOXICOLOGY. 281(1-3), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/362"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "362",
    is_primary_author: false
)

Publication.create!(
    publication_id: 363,
    doi: "10.1080/10408444.2016.1224808",
    published_date: "2016-10-21",
    citation: "Theunissen, P., S. Beken, B. Beyer, W. Breslin, G. Cappon, C. Chen, G. Chmielewski, L. De Schaepdrijver, B. Enright, J. Foreman, W. Harrouk, K. Hew, A. Hoberman, J. Hui, <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">T. Knudsen</a> , S. Laffan, S. Makris , M. Martin , M. McNerney, C. Siezen, D. Stanislaus, J. Stewart, K. Thompson, B. Tornesi, G. Weinbauer, S. Wood, J. Van der Laan, and A. Piersma. Comparison of rat and rabbit embryo-fetal developmental toxicity data for 379 pharmaceuticals: on the nature and severity of developmental effects.   CRITICAL REVIEWS IN TOXICOLOGY. CRC Press LLC, Boca Raton, FL, USA, (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/363"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "363",
    is_primary_author: false
)

Publication.create!(
    publication_id: 364,
    doi: "10.1080/10408444.2016.1224807",
    published_date: "2016-01-1",
    citation: "Theunissen, Peter T.; Beken, Sonja; Beyer, Bruce K.; Breslin, William J.; Cappon, Gregg D.; Chen, Connie L.; Chmielewski, Gary; De Schaepdrijver, Luc; Enright, Brian; Foreman, Jennifer E.; Harrouk, Wafa; Hew, Kok-Wah; Hoberman, Alan M.; Hui, Julia Y.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; Laffan, Susan B.; Makris, Susan L.; Martin, Matt; McNerney, Mary Ellen; Siezen, Christine L.; Stanislaus, Dinesh J.; Stewart, Jane; Thompson, Kary E.; Tornesi, Belen; Van der Laan, Jan Willem; Weinbauer, Gerhard F.; Wood, Sandra; Piersma, Aldert H.. Comparison of rat and rabbit embryo-fetal developmental toxicity data for 379 pharmaceuticals: on the nature and severity of developmental effects. CRITICAL REVIEWS IN TOXICOLOGY. 46(10), (2016).",
    project: "Virtual Tissues, vEmbryo",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/364"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "364",
    is_primary_author: false
)

Publication.create!(
    publication_id: 365,
    doi: "10.1039/9781782624059-00154",
    published_date: "2016-07-26",
    citation: "Thomas , R., and M.D. Waters. (Book chapter) Transcriptomic Dose-Response Analysis for Mode of Action and Risk Assessment.  Chapter 5, Michael D. Waters, Russell S. Thomas  Issues in Toxicology: Toxicogenomics in Predictive Carcinogenicity: Current Issues and Future Applications. Royal Society of Chemistry, Cambridge,  UK, issue}: 154-184, (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/365"
)

Publication.create!(
    publication_id: 366,
    doi: "10.1002/em.21895",
    published_date: "2014-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, R. S.</a>. Toxicogenomics and Dose-Response: Applications to Risk Assessment.. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 55(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/366"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "366",
    is_primary_author: true
)

Publication.create!(
    publication_id: 367,
    doi: "10.1093/toxsci/kft178",
    published_date: "2013-11-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Philbert, Martin A.; Auerbach, Scott S.; Wetmore, Barbara A.; Devito, Michael J.; Cote, Ila; Rowlands, J. Craig; Whelan, Maurice P.; Hays, Sean M.; Andersen, Melvin E.; Meek, M. E. (Bette); Reiter, Lawrence W.; Lambert, Jason C.; Clewell, Harvey J., III; Stephens, Martin L.; Zhao, Q. Jay; Wesselkamper, Scott C.; Flowers, Lynn; Carney, Edward W.; Pastoor, Timothy P.; Petersen, Dan D.; Yauk, Carole L.; Nong, Andy. Incorporating New Technologies Into Toxicity Testing and Risk Assessment: Moving From 21st Century Vision to a Data-Driven Framework. TOXICOLOGICAL SCIENCES. 136(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/367"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "367",
    is_primary_author: true
)

Publication.create!(
    publication_id: 368,
    doi: "10.1016/j.toxlet.2014.06.039",
    published_date: "2014-09-10",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell</a>. Integration of high-throughput in vitro assays and human exposure modeling for risk-based chemical safety decisions. TOXICOLOGY LETTERS. 229(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/368"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "368",
    is_primary_author: true
)

Publication.create!(
    publication_id: 369,
    doi: "10.3109/03602532.2015.1071937",
    published_date: "2015-11-20",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell</a>. TEMPORAL AND DOSE-RESPONSE PATHWAY ANALYSIS FOR PREDICTING CHRONIC CHEMICAL TOXICITY. DRUG METABOLISM REVIEWS. 47(), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/369"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "369",
    is_primary_author: true
)

Publication.create!(
    publication_id: 370,
    doi: "10.1289/ehp.1205784",
    published_date: "2013-07-1",
    citation: "Tice, Raymond R.; Austin, Christopher P.; Kavlock, Robert J.; Bucher, John R.. Improving the Human Hazard Characterization of Chemicals: A Tox21 Update. ENVIRONMENTAL HEALTH PERSPECTIVES. 121(7), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/370"
)

Publication.create!(
    publication_id: 371,
    doi: "10.1016/j.yrtph.2011.09.005",
    published_date: "2011-12-1",
    citation: "Tluczkiewicz, I.; Buist, H. E.; Martin, M. T.; Mangelsdorf, I.; Escher, S. E.. Improvement of the Cramer classification for oral exposure using the database TTC RepDose - A strategy description. REGULATORY TOXICOLOGY AND PHARMACOLOGY. 61(3), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/371"
)

Publication.create!(
    publication_id: 372,
    doi: "10.1007/s00210-010-0508-7",
    published_date: "2010-03-1",
    citation: "Tluczkiewicz, I.; Mangelsdorf, I.; Buist, H.; Martin, M.; Escher, S.. Use of combined databases RepDose (FhG), Toxbase (TNO), MunroDB and ToxRefDB (USEPA) to refine TTCs for oral exposure. NAUNYN-SCHMIEDEBERGS ARCHIVES OF PHARMACOLOGY. 381(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/372"
)

Publication.create!(
    publication_id: 373,
    doi: "10.1016/j.yrtph.2014.09.009",
    published_date: "2014-12-1",
    citation: "Tollefsen, Knut Erik; Scholz, Stefan; Cronin, Mark T.; Edwards, Stephen W.; de Knecht, Joop; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin</a>; Garcia-Reyero, Natalia; Hartung, Thomas; Worth, Andrew; <a href=\"http://comptox.ag.epa.gov/impact/scientists/8\">Patlewicz, Grace</a>. Applying Adverse Outcome Pathways (AOPs) to support Integrated Approaches to Testing and Assessment (IATA). REGULATORY TOXICOLOGY AND PHARMACOLOGY. 70(3), (2014).",
    project: "Adverse Outcome Pathways",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/373"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "373",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "8",
    publication_id: "373",
    is_primary_author: false
)

Publication.create!(
    publication_id: 374,
    doi: "10.1016/j.taap.2005.10.001",
    published_date: "2006-01-1",
    citation: "Tolson, JK; Dix, DJ; Voellmy, RW; Roberts, SM. Increased hepatotoxicity of acetaminophen in Hsp70i knockout mice. TOXICOLOGY AND APPLIED PHARMACOLOGY. 210(1-2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/374"
)

Publication.create!(
    publication_id: 375,
    doi: "10.1093/toxsci/kfs236",
    published_date: "2012-11-1",
    citation: "Tornero-Velez, Rogelio; Davis, Jimena; Scollon, Edward J.; Starr, James M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Goldsmith, Michael-Rock; Chang, Daniel T.; Xue, Jianping; Zartarian, Valerie; DeVito, Michael J.; Hughes, Michael F.. A Pharmacokinetic Model of cis- and trans-Permethrin Disposition in Rats and Humans With Aggregate Exposure Application. TOXICOLOGICAL SCIENCES. 130(1), (2012).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/375"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "375",
    is_primary_author: false
)

Publication.create!(
    publication_id: 376,
    doi: "10.1111/j.1539-6924.2011.01658.x",
    published_date: "2012-02-1",
    citation: "Tornero-Velez, Rogelio; Egeghy, Peter P.; Hubal, Elaine A. Cohen. Biogeographical Analysis of Chemical Co-Occurrence Data to Identify Priorities for Mixtures Research. RISK ANALYSIS. 32(2), (2012).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/376"
)

Publication.create!(
    publication_id: 377,
    doi: "10.4155/fmc.15.103",
    published_date: "2015-01-1",
    citation: "Trisciuzzi, Daniela; Alberga, Domenico; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; Cellamare, Saverio; Catto, Marco; Carotti, Angelo; Benfenati, Emilio; Novellino, Ettore; Mangiatordi, Giuseppe Felice; Nicolotti, Orazio. Docking-based classification models for exploratory toxicology studies on high-quality estrogenic experimental data. FUTURE MEDICINAL CHEMISTRY. 7(14), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/377"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "377",
    is_primary_author: false
)

Publication.create!(
    publication_id: 378,
    doi: "10.1111/j.1741-4520.2012.00374.x",
    published_date: "2012-09-1",
    citation: "Tsuji, Ryozo; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>. Developmental neurotoxicity guideline study: Issues with methodology, evaluation and regulation*. CONGENITAL ANOMALIES. 52(3), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/378"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "378",
    is_primary_author: false
)

Publication.create!(
    publication_id: 379,
    doi: "10.1016/j.taap.2006.02.015",
    published_date: "2006-09-15",
    citation: "Tully, Douglas B.; Bao, Wenjun; Goetz, Amber K.; Blystone, Chad R.; Ren, Hongzu; Schmid, Judith E.; Strader, Lillian F.; Wood, Carmen R.; Best, Deborah S.; Narotsk, Michael G.; Wolf, Douglas C.; Rockett, John C.; Dix, David J.. Gene expression profiling in liver and testis of rats to characterize the toxicity of triazole fungicides. TOXICOLOGY AND APPLIED PHARMACOLOGY. 215(3), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/379"
)

Publication.create!(
    publication_id: 380,
    doi: "10.1016/j.envres.2006.10.001",
    published_date: "2007-05-1",
    citation: "Vahter, Marie; Gochfeld, Michael; Casati, Barbara; Thiruchelvam, Mona; Falk-Filippson, Agneta; Kavlock, Robert; Marafante, Erminio; Cory-Slechta, Deborah. Implications of gender differences for human health risk assessment and toxicology. ENVIRONMENTAL RESEARCH. 104(1), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/380"
)

Publication.create!(
    publication_id: 381,
    doi: "10.1016/j.neuro.2014.06.012",
    published_date: "2014-09-1",
    citation: "Valdivia, Pablo; Martin, Matt; LeFew, William R.; Ross, James; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Shafer, Timothy J.. Multi-well microelectrode array recordings detect neuroactivity of ToxCast compounds. NEUROTOXICOLOGY. 44(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/381"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "381",
    is_primary_author: false
)

Publication.create!(
    publication_id: 382,
    doi: "10.14573/altex.1405271",
    published_date: "2014-01-1",
    citation: "van Vliet, Erwin; Daneshian, Mardas; Beilmann, Mario; Davies, Anthony; Fava, Eugenio; Fleck, Roland; Jule, Yvon; Kansy, Manfred; Kustermann, Stefan; Macko, Peter; Mundy, William R.; Roth, Adrian; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Uteng, Marianne; van de Water, Bob; Hartung, Thomas; Leist, Marcel. Current Approaches and Future Role of High Content Imaging in Safety Sciences and Drug Discovery. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(4), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/382"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "382",
    is_primary_author: false
)

Publication.create!(
    publication_id: 383,
    doi: "10.1021/sc5000896",
    published_date: "2014-07-1",
    citation: "Veronesi, Bellina; Chorley, Brian; Ward, William; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Tennant, Alan; Vallanat, Beena. The Physicochemistry of Capped Nanosilver Predicts Its Biological Activity in Rat Brain Endothelial Cells (RBEC4). ACS SUSTAINABLE CHEMISTRY &amp; ENGINEERING. 2(7), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/383"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "383",
    is_primary_author: false
)

Publication.create!(
    publication_id: 384,
    doi: "10.1093/toxsci/kft177",
    published_date: "2013-11-1",
    citation: "Vinken, Mathieu; Landesmann, Brigitte; Goumenou, Marina; Vinken, Stefanie; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Jaeschke, Hartmut; Willett, Catherine; Whelan, Maurice; Rogiers, Vera. Development of an Adverse Outcome Pathway From Drug-Mediated Bile Salt Export Pump Inhibition to Cholestatic Liver Injury. TOXICOLOGICAL SCIENCES. 136(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/384"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "384",
    is_primary_author: false
)

Publication.create!(
    publication_id: 385,
    published_date: "2010-08-22",
    citation: "Volarath, Patra; <a href=\"http://comptox.ag.epa.gov/impact/scientists/18\">Little, Stephen</a>; Yang, Chihae; Martin, Matt; Reif, David; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>. Feature analysis of ToxCast (TM) compounds. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 240(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/385"
)

ScientistPublication.create!(
    scientist_id: "18",
    publication_id: "385",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "385",
    is_primary_author: false
)

Publication.create!(
    publication_id: 386,
    doi: "10.1021/acs.chemrestox.5b00424",
    published_date: "2015-12-1",
    citation: "Wages, Phillip A.; Lavrich, Katelyn S.; Zhang, Zhenfa; Cheng, Wan-Yun; Corteselli, Elizabeth; Gold, Avram; Bromberg, Philip; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Samet, James M.. Protein Sulfenylation: A Novel Readout of Environmental Oxidant Stress. CHEMICAL RESEARCH IN TOXICOLOGY. 28(12), (2015).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/386"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "386",
    is_primary_author: false
)

Publication.create!(
    publication_id: 387,
    doi: "10.1016/j.freeradbiomed.2014.10.573",
    published_date: "2014-11-1",
    citation: "Wages, Phillip A.; Silbajoris, Robert; Bromberg, Philip A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Samet, James M.. Exploring the Role of H2O2 in Zinc-Induced Cellular Oxidative Effects. FREE RADICAL BIOLOGY AND MEDICINE. 76(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/387"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "387",
    is_primary_author: false
)

Publication.create!(
    publication_id: 388,
    doi: "10.1016/j.redox.2014.104405",
    published_date: "2014-01-1",
    citation: "Wages, Phillip A.; Silbajoris, Robert; Speen, Adam; Brighton, Luisa; Henriquez, Andres; Tong, Haiyan; Bromberg, Philip A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, Steven O.</a>; Samet, James M.. Role of H2O2 in the oxidative effects of zinc exposure in human airway epithelial cells. REDOX BIOLOGY. 3(), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/388"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "388",
    is_primary_author: false
)

Publication.create!(
    publication_id: 389,
    doi: "10.1002/em.20693",
    published_date: "2011-10-1",
    citation: "Wallace, K.; Blackman, C. F.; DeMarini, D. M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/19\">Simmons, S. O.</a>. Cellular Stress Responses Elicited by Engineered Nanomaterials.. ENVIRONMENTAL AND MOLECULAR MUTAGENESIS. 52(), (2011).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/389"
)

ScientistPublication.create!(
    scientist_id: "19",
    publication_id: "389",
    is_primary_author: false
)

Publication.create!(
    publication_id: 390,
    doi: "10.1140/epje/i2010-10608-1",
    published_date: "2010-06-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, J. F.</a>; Hartley, R. R.; Behringer, R. P.. Force networks and elasticity in granular silos. EUROPEAN PHYSICAL JOURNAL E. 32(2), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/390"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "390",
    is_primary_author: true
)

Publication.create!(
    publication_id: 391,
    doi: "10.1016/j.physd.2010.06.005",
    published_date: "2010-09-15",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>. Simple models for granular force networks. PHYSICA D-NONLINEAR PHENOMENA. 239(18), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/391"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "391",
    is_primary_author: true
)

Publication.create!(
    publication_id: 392,
    doi: "10.1007/s10928-008-9108-2",
    published_date: "2008-12-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Barton, Hugh A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>. Comparing models for perfluorooctanoic acid pharmacokinetics using Bayesian analysis. JOURNAL OF PHARMACOKINETICS AND PHARMACODYNAMICS. 35(6), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/392"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "392",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "392",
    is_primary_author: false
)

Publication.create!(
    publication_id: 393,
    doi: "10.1103/PhysRevE.76.051303",
    published_date: "2007-11-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Behringer, Robert P.; Matthews, John V.; Gremaud, Pierre A.. Response to perturbations for granular flow in a hopper. PHYSICAL REVIEW E. 76(5), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/393"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "393",
    is_primary_author: true
)

Publication.create!(
    publication_id: 394,
    doi: "10.1093/toxsci/kft204",
    published_date: "2013-12-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Pitruzzello, Ann M.; Liu, Jie; Reif, David M.; Kleinstreuer, Nicole C.; Wang, Nina Ching Y.; Sipes, Nisha; Martin, Matthew; Das, Kaberi; DeWitt, Jamie C.; Strynar, Mark; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Lau, Christopher. Dosimetric Anchoring of In Vivo and In Vitro Studies for Perfluorooctanoate and Perfluorooctanesulfonate. TOXICOLOGICAL SCIENCES. 136(2), (2013).",
    project: "High-throughput Tox Testing",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/394"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "394",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "394",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "394",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "394",
    is_primary_author: false
)

Publication.create!(
    publication_id: 395,
    doi: "10.1021/es400482g",
    published_date: "2013-08-6",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; Reif, David M.; Gangwal, Sumit; Mitchell-Blackwood, Jade; Arnot, Jon A.; Joliet, Olivier; Frame, Alicia; Rabinowitz, James; <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, Thomas B.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Egeghy, Peter; Vallero, Daniel; Hubal, Elaine A. Cohen. High-Throughput Models for Exposure-Based Chemical Prioritization in the Expo Cast Project. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 47(15), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/395"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "395",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "395",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "395",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "395",
    is_primary_author: false
)

Publication.create!(
    publication_id: 396,
    doi: "10.1021/es503583j",
    published_date: "2014-11-4",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Wang, Anran; Dionisio, Kathie L.; Frame, Alicia; Egeghy, Peter; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>. High Throughput Heuristics for Prioritizing Human Exposure to Environmental Chemicals. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 48(21), (2014).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/396"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "396",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "396",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "396",
    is_primary_author: false
)

Publication.create!(
    publication_id: 397,
    doi: "10.1093/toxsci/kfv118",
    published_date: "2015-09-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Wetmore, Barbara A.; Pearce, Robert; Strope, Cory; Goldsmith, Rocky; Sluka, James P.; Sedykh, Alexander; Tropsha, Alex; Bosgra, Sieto; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>. Toxicokinetic Triage for Environmental Chemicals. TOXICOLOGICAL SCIENCES. 147(1), (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/397"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "397",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "397",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "397",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "397",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "397",
    is_primary_author: false
)

Publication.create!(
    publication_id: 398,
    doi: "10.1007/978-3-319-15518-0_14",
    published_date: "2015-01-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>. Dosimetric Anchoring of Toxicological Studies. TOXICOLOGICAL EFFECTS OF PERFLUOROALKYL AND POLYFLUOROALKYL SUBSTANCES. (), (2015).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/398"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "398",
    is_primary_author: true
)

Publication.create!(
    publication_id: 399,
    published_date: "2013-09-8",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>. New technologies for exposure assessment. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 246(), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/399"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "399",
    is_primary_author: true
)

Publication.create!(
    publication_id: 400,
    doi: "10.1371/journal.pcbi.1000756",
    published_date: "2010-04-1",
    citation: "<a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>. Simulating Microdosimetry in a Virtual Hepatic Lobule. PLOS COMPUTATIONAL BIOLOGY. 6(4), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/400"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "400",
    is_primary_author: true
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "400",
    is_primary_author: false
)

Publication.create!(
    publication_id: 401,
    doi: "10.1002/wnan.1229",
    published_date: "2013-09-1",
    citation: "Wang, Amy; Marinakos, Stella M.; Badireddy, Appala Raju; Powers, Christina M.; A. <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith</a>. Characterization of physicochemical properties of nanomaterials and their immediate environments in high-throughput screening of nanomaterial biological activity. WILEY INTERDISCIPLINARY REVIEWS-NANOMEDICINE AND NANOBIOTECHNOLOGY. 5(5), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/401"
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "401",
    is_primary_author: false
)

Publication.create!(
    publication_id: 402,
    doi: "10.1021/tx7003129",
    published_date: "2007-08-19",
    citation: "Wang, Kun; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Rusyn, Ivan; Tropsha, Alexander. Toxico-cheminformatics and QSPR modeling of the carcinogenic potency database. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 234(), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/402"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "402",
    is_primary_author: false
)

Publication.create!(
    publication_id: 403,
    published_date: "2007-12-1",
    citation: "Wang, Kun; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Rusyn, Ivan; Tropsha, Alexander. Toxico-cheminformatics and QSPR modeling of the carcinogenic potency database. CHEMICAL RESEARCH IN TOXICOLOGY. 20(12), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/403"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "403",
    is_primary_author: false
)

Publication.create!(
    publication_id: 404,
    doi: "10.1021/tx050285z",
    published_date: "2006-02-1",
    citation: "Welch, KD; Reilly, TP; Bourdi, M; Hays, T; Pise-Masison, CA; Radonovich, MF; Brady, JN; Dix, DJ; Pohl, LR. Genomic identification of potential risk factors during acetaminophen-induced liver disease in susceptible and resistant strains of mice. CHEMICAL RESEARCH IN TOXICOLOGY. 19(2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/404"
)

Publication.create!(
    publication_id: 405,
    doi: "10.1093/toxsci/kfu169",
    published_date: "2014-11-1",
    citation: "Wetmore, Barbara A.; Allen, Brittany; Clewell, Harvey J., III; Parker, Timothy; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Almond, Lisa M.; Sochaski, Mark A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Incorporating Population Variability and Susceptible Subpopulations into Dosimetry for High-Throughput Toxicity Testing. TOXICOLOGICAL SCIENCES. 142(1), (2014).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/405"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "405",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "405",
    is_primary_author: false
)

Publication.create!(
    publication_id: 406,
    doi: "10.1093/toxsci/kfv171",
    published_date: "2015-11-1",
    citation: "Wetmore, Barbara A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Allen, Brittany; Ferguson, Stephen S.; Sochaski, Mark A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, R. Woodrow</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Strope, Cory L.; Cantwell, Katherine; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; LeCluyse, Edward; Clewell, Harvey J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Andersen, Melvin E.. Incorporating High-Throughput Exposure Predictions With Dosimetry-Adjusted In Vitro Bioactivity to Inform Chemical Toxicity Testing. TOXICOLOGICAL SCIENCES. 148(1), (2015).",
    project: "Rapid Exposure and Dose",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/406"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "406",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "406",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "406",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "406",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "406",
    is_primary_author: false
)

Publication.create!(
    publication_id: 407,
    doi: "10.1093/toxsci/kft012",
    published_date: "2013-04-1",
    citation: "Wetmore, Barbara A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Ferguson, Stephen S.; Li, Lili; Clewell, Harvey J., III; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Freeman, Kimberly; Bao, Wenjun; Sochaski, Mark A.; Chu, Tzu-Ming; Black, Michael B.; Healy, Eric; Allen, Brittany; Andersen, Melvin E.; Wolfinger, Russell D.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Relative Impact of Incorporating Pharmacokinetics on Predicting In Vivo Hazard and Mode of Action from High-Throughput In Vitro Toxicity Assays. TOXICOLOGICAL SCIENCES. 132(2), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/407"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "407",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "407",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "407",
    is_primary_author: false
)

Publication.create!(
    publication_id: 408,
    doi: "10.1093/toxsci/kfr254",
    published_date: "2012-01-1",
    citation: "Wetmore, Barbara A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Ferguson, Stephen S.; Sochaski, Mark A.; Rotroff, Daniel M.; Freeman, Kimberly; Clewell, Harvey J., III; Dix, David J.; Andersen, Melvin E.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Allen, Brittany; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Singh, Reetu; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Integration of Dosimetry, Exposure, and High-Throughput Screening Data in Chemical Toxicity Assessment. TOXICOLOGICAL SCIENCES. 125(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/408"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "408",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "408",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "408",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "408",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "408",
    is_primary_author: false
)

Publication.create!(
    publication_id: 409,
    doi: "10.1093/toxsci/kfs144",
    published_date: "2012-07-1",
    citation: "Wetmore, Barbara A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/12\">Wambaugh, John F.</a>; Ferguson, Stephen S.; Sochaski, Mark A.; Rotroff, Daniel M.; Freeman, Kimberly; Clewell, Harvey J., III; Dix, David J.; Andersen, Melvin E.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/13\">Houck, Keith A.</a>; Allen, Brittany; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Singh, Reetu; Kavlock, Robert J.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>. Response to Accurate Risk-Based Chemical Screening Relies on Robust Exposure Estimates. TOXICOLOGICAL SCIENCES. 128(1), (2012).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/409"
)

ScientistPublication.create!(
    scientist_id: "12",
    publication_id: "409",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "13",
    publication_id: "409",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "409",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "409",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "409",
    is_primary_author: false
)

Publication.create!(
    publication_id: 410,
    doi: "10.1016/j.lfs.2015.10.002",
    published_date: "2016-01-15",
    citation: "Wexler, Philip; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard</a>; de Marcellus, Sally; de Knecht, Joop; Leinala, Eeva. Health effects of toxicants: Online knowledge support. LIFE SCIENCES. 145(), (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/410"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "410",
    is_primary_author: false
)

Publication.create!(
    publication_id: 411,
    doi: "10.14573/altex.1401281",
    published_date: "2014-01-1",
    citation: "Willett, Catherine; Rae, Jessica Caverly; Goyak, Katy O.; Minsavage, Gary; Westmoreland, Carl; Andersen, Melvin; Avigan, Mark; Duche, Daniel; Harris, Georgina; Hartung, Thomas; Jaeschke, Hartmut; Kleensang, Andre; Landesmann, Brigitte; Martos, Suzanne; Matevia, Marilyn; Toole, Colleen; Rowan, Andrew; Schultz, Terry; Seed, Jennifer; Senior, John; <a href=\"http://comptox.ag.epa.gov/impact/scientists/9\">Shah, Imran</a>; Subramanian, Kalyanasundaram; Vinken, Mathieu; Watkins, Paul. Building Shared Experience to Advance Practical Application of Pathway-Based Toxicology: Liver Toxicity Mode-of-Action. ALTEX-ALTERNATIVES TO ANIMAL EXPERIMENTATION. 31(4), (2014).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/411"
)

ScientistPublication.create!(
    scientist_id: "9",
    publication_id: "411",
    is_primary_author: false
)

Publication.create!(
    publication_id: 412,
    doi: "10.1186/1752-0509-7-119",
    published_date: "2013-11-4",
    citation: "Williams-DeVane, ClarLynda R.; Reif, David M.; Hubal, Elaine Cohen; Bushel, Pierre R.; Hudgens, Edward E.; Gallagher, Jane E.; Edwards, Stephen W.. Decision tree-based method for integrating gene expression, demographic, and clinical data to determine disease endotypes. BMC SYSTEMS BIOLOGY. 7(), (2013).",
    project: "Sustainable Healthy Communities",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/412"
)

Publication.create!(
    publication_id: 413,
    doi: "10.1093/bioinformatics/btp042",
    published_date: "2009-03-1",
    citation: "Williams-DeVane, ClarLynda R.; Wolf, Maritja A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. DSSTox chemical-index files for exposure-related experiments in ArrayExpress and Gene Expression Omnibus: enabling toxico-chemogenomics data linkages. BIOINFORMATICS. 25(5), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/413"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "413",
    is_primary_author: false
)

Publication.create!(
    publication_id: 414,
    doi: "10.1093/toxsci/kfp061",
    published_date: "2009-06-1",
    citation: "Williams-Devane, ClarLynda R.; Wolf, Maritja A.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Toward a Public Toxicogenomics Capability for Supporting Predictive Toxicology: Survey of Current Resources and Chemical Indexing of Experiments in GEO and ArrayExpress. TOXICOLOGICAL SCIENCES. 109(2), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/414"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "414",
    is_primary_author: false
)

Publication.create!(
    publication_id: 415,
    doi: "10.7287/peerj.preprints.2605v1",
    published_date: "2016-11-21",
    citation: "Wilson, V., G. LeBlanc, S. Kullman, <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">K. Crofton</a>, P. Schmieder, and M. Jacobs. Where do we go from here: Challenges and the future of endocrine disrupting compound screening and testing. PeerJ. PeerJ Inc., Corte Madera, CA, USA, (2016).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/415"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "415",
    is_primary_author: false
)

Publication.create!(
    publication_id: 416,
    doi: "10.1021/es801354f",
    published_date: "2009-04-1",
    citation: "Xu, Ying; Hubal, Elaine A. Cohen; Clausen, Per A.; Little, John C.. Predicting Residential Exposure to Phthalate Plasticizer Emitted from Vinyl Flooring: A Mechanistic Analysis. ENVIRONMENTAL SCIENCE &amp; TECHNOLOGY. 43(7), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/416"
)

Publication.create!(
    publication_id: 417,
    doi: "10.1289/ehp.0900559",
    published_date: "2010-02-1",
    citation: "Xu, Ying; Hubal, Elaine A. Cohen; Little, John C.. Predicting Residential Exposure to Phthalate Plasticizer Emitted from Vinyl Flooring: Sensitivity, Uncertainty, and Implications for Biomonitoring. ENVIRONMENTAL HEALTH PERSPECTIVES. 118(2), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/417"
)


Publication.create!(
    publication_id: 418,
    doi: "10.1080/15376510701857502",
    published_date: "2008-01-1",
    citation: "Yang, C.; Hasselgren, C. H.; Boyer, S.; Arvidson, K.; Aveston, S.; Dierkes, P.; Benigni, R.; Benz, R. D.; Contrera, J.; Kruhlak, N. L.; Matthews, E. J.; Han, X.; Jaworska, J.; Kemper, R. A.; Rathman, J. F.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, A. M.</a>. Understanding genetic toxicity through data mining: The process of building knowledge by integrating multiple genetic toxicity databases. TOXICOLOGY MECHANISMS AND METHODS. 18(2-3), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/418"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "418",
    is_primary_author: false
)

Publication.create!(
    publication_id: 419,
    published_date: "2007-03-25",
    citation: "Yang, Chihae; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>. Applying data mining approaches to further understanding chemical effects on biological systems. ABSTRACTS OF PAPERS OF THE AMERICAN CHEMICAL SOCIETY. 233(), (2007).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/419"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "419",
    is_primary_author: false
)

Publication.create!(
    publication_id: 420,
    doi: "10.2174/157340906777441672",
    published_date: "2006-06-1",
    citation: "Yang, Chihae; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann M.</a>; Cross, Kevin P.. The Art of Data Mining the Minefields of Toxicity Databases to Link Chemistry to Biology. CURRENT COMPUTER-AIDED DRUG DESIGN. 2(2), (2006).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/420"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "420",
    is_primary_author: false
)

Publication.create!(
    publication_id: 421,
    doi: "10.1021/ci500667v",
    published_date: "2015-03-1",
    citation: "Yang, Chihae; Tarkhov, Aleksey; Marusczyk, Joerg; Bienfait, Bruno; Gasteiger, Johann; Kleinoeder, Thomas; Magdziarz, Tomasz; Sacher, Oliver; Schwab, Christof H.; Schwoebel, Johannes; Terfloth, Lothar; Arvidson, Kirk; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Worth, Andrew; Rothman, James. New Publicly Available Chemical Query Language, CSRML, To Support Chemotype Representations for Application to Data Mining and Modeling. JOURNAL OF CHEMICAL INFORMATION AND MODELING. 55(3), (2015).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/421"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "421",
    is_primary_author: false
)

Publication.create!(
    publication_id: 422,
    doi: "10.1021/acs.jcim.6b00625",
    published_date: "2017-01-1",
    citation: "Zang, Qingda; Mansouri, Kamel; <a href=\"http://comptox.ag.epa.gov/impact/scientists/2\">Williams, Antony J.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>; Allen, David G.; Casey, Warren M.; Kleinstreuer, Nicole C.. In Silico Prediction of Physicochemical Properties of Environmental Chemicals Using Molecular Fingerprints and Machine Learning. JOURNAL OF CHEMICAL INFORMATION AND MODELING. 57(1), (2017).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/422"
)

ScientistPublication.create!(
    scientist_id: "2",
    publication_id: "422",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "422",
    is_primary_author: false
)

Publication.create!(
    publication_id: 423,
    doi: "10.1021/ci400527b",
    published_date: "2013-12-1",
    citation: "Zang, Qingda; Rotroff, Daniel M.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/16\">Judson, Richard S.</a>. Binary Classification of a Large Collection of Environmental Chemicals from Estrogen Receptor Assays by Quantitative Structure-Activity Relationship and Machine Learning Methods. JOURNAL OF CHEMICAL INFORMATION AND MODELING. 53(12), (2013).",
    project: "Sustainable Chemistry",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/423"
)

ScientistPublication.create!(
    scientist_id: "16",
    publication_id: "423",
    is_primary_author: false
)

Publication.create!(
    publication_id: 424,
    doi: "10.1186/1752-0509-4-40",
    published_date: "2010-04-1",
    citation: "Zhang, Qiang; Bhattacharya, Sudin; Kline, Douglas E.; Crawford, Robert B.; Conolly, Rory B.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Kaminski, Norbert E.; Andersen, Melvin E.. Stochastic Modeling of B Lymphocyte Terminal Differentiation and Its Suppression by Dioxin. BMC SYSTEMS BIOLOGY. 4(), (2010).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/424"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "424",
    is_primary_author: false
)

Publication.create!(
    publication_id: 425,
    doi: "10.1016/j.taap.2013.01.015",
    published_date: "2013-03-1",
    citation: "Zhang, Qiang; Kline, Douglas E.; Bhattacharya, Sudin; Crawford, Robert B.; Conolly, Rory B.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/17\">Thomas, Russell S.</a>; Andersen, Melvin E.; Kaminski, Norbert E.. All-or-none suppression of B cell terminal differentiation by environmental contaminant 2,3,7,8-tetrachlorodibenzo-p-dioxin. TOXICOLOGY AND APPLIED PHARMACOLOGY. 268(1), (2013).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/425"
)

ScientistPublication.create!(
    scientist_id: "17",
    publication_id: "425",
    is_primary_author: false
)

Publication.create!(
    publication_id: 426,
    doi: "10.1289/ehp.10573",
    published_date: "2008-04-1",
    citation: "Zhu, Hao; Rusyn, Ivan; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Tropsha, Alexander. Use of cell viability assay data improves the prediction accuracy of conventional quantitative structure-activity relationship models of animal carcinogenicity. ENVIRONMENTAL HEALTH PERSPECTIVES. 116(4), (2008).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/426"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "426",
    is_primary_author: false
)

Publication.create!(
    publication_id: 427,
    doi: "10.1289/ehp.0800471",
    published_date: "2009-08-1",
    citation: "Zhu, Hao; Ye, Lin; <a href=\"http://comptox.ag.epa.gov/impact/scientists/1\">Richard, Ann</a>; Golbraikh, Alexander; Wright, Fred A.; Rusyn, Ivan; Tropsha, Alexander. A Novel Two-Step Hierarchical Quantitative Structure-Activity Relationship Modeling Work Flow for Predicting Acute Toxicity of Chemicals in Rodents. ENVIRONMENTAL HEALTH PERSPECTIVES. 117(8), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/427"
)

ScientistPublication.create!(
    scientist_id: "1",
    publication_id: "427",
    is_primary_author: false
)

Publication.create!(
    publication_id: 428,
    doi: "10.1080/10408440591007313",
    published_date: "2005-10-1",
    citation: "Zoeller, RT; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, KM</a>. Mode of action: Developmental thyroid hormone insufficiency - Neurological abnormalities resulting from exposure to propylthiouracil. CRITICAL REVIEWS IN TOXICOLOGY. 35(8-9), (2005).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/428"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "428",
    is_primary_author: false
)

Publication.create!(
    publication_id: 429,
    doi: "10.1093/toxsci/kfn225",
    published_date: "2009-01-1",
    citation: "Zorrilla, Leah M.; Gibson, Emily K.; Jeffay, Susan C.; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, Kevin M.</a>; <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Setzer, Woodrow R.</a>; Cooper, Ralph L.; Stoker, Tammy E.. The Effects of Triclosan on Puberty and Thyroid Hormones in Male Wistar Rats. TOXICOLOGICAL SCIENCES. 107(1), (2009).",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/429"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "429",
    is_primary_author: false
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "429",
    is_primary_author: false
)

ScientistPublication.create!(
    publication_id: "429",
    is_primary_author: true,
    scientist_alias: "Zorrilla, Leah M.",
    order: 1
)