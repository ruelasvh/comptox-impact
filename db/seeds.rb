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
    title: "A C. elegans screening platform for the rapid assessment of chemical disruption of germline function.",
    doi: "10.1289/ehp.1206301",
    published_date: "2013-01-01",
    citation: "Allard, P., Kleinstreuer, N. C., <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T. B.</a>, &amp; Colaiacovo, M. P. (2013). A C. elegans screening platform for the rapid assessment of chemical disruption of germline function. Environ Health Perspect, 121(6), 717-724.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/1"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "1",
    is_primary_author: false
)

Publication.create!(
    publication_id: 2,
    title: "Endocrine disrupting chemicals in fish: developing exposure indicators and predictive models of effects based on mechanism of action.",
    doi: "10.1016/j.aquatox.2009.01.013",
    published_date: "2009-01-01",
    citation: "Ankley, G. T., Bencic, D. C., Breen, M. S., Collette, T. W., Conolly, R. B., Denslow, N. D., . . . Watanabe, K. H. (2009). Endocrine disrupting chemicals in fish: developing exposure indicators and predictive models of effects based on mechanism of action. Aquat Toxicol, 92(3), 168-178.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/2"
)

Publication.create!(
    publication_id: 3,
    title: "Developmental Neurotoxicology: History and Outline of Developmental Neurotoxicity Study Guidelines.",
    doi: "10.14252/foodsafetyfscj.2015012",
    published_date: "2015-01-01",
    citation: "Aoyama, H., Takahashi, N., Shutoh, Y., Motomura, A., &amp; <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K. M.</a> (2015). Developmental Neurotoxicology: History and Outline of Developmental Neurotoxicity Study Guidelines. Food Safety, 2(2), 48-61.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/3"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "3",
    is_primary_author: false
)

Publication.create!(
    publication_id: 4,
    title: "The Tox21 robotic platform for the assessment of environmental chemicals - from vision to reality.",
    doi: "10.1016/j.drudis.2013.05.015",
    published_date: "2013-01-01",
    citation: "Attene-Ramos, M. S., Miller, N., Huang, R., Michael, S., Itkin, M., Kavlock, R. J., . . . Xia, M. (2013). The Tox21 robotic platform for the assessment of environmental chemicals - from vision to reality. Drug Discov Today, 18(15-16), 716-723.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/4"
)

Publication.create!(
    publication_id: 5,
    title: "Biomonitoring Equivalents (BE) dossier for toluene (CAS No. 108-88-3).",
    doi: "10.1016/j.yrtph.2008.05.009",
    published_date: "2008-01-01",
    citation: "Aylward, L. L., Barton, H. A., &amp; Hays, S. M. (2008). Biomonitoring Equivalents (BE) dossier for toluene (CAS No. 108-88-3). Regul Toxicol Pharmacol, 51(3 Suppl), S27-36.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/5"
)

Publication.create!(
    publication_id: 6,
    title: "Drug Side Effect Profiles as Molecular Descriptors for Predictive Modeling of Target Bioactivity.",
    doi: "10.1002/minf.201400134",
    published_date: "2015-01-01",
    citation: "Baker, N. C., Fourches, D., &amp; Tropsha, A. (2015). Drug Side Effect Profiles as Molecular Descriptors for Predictive Modeling of Target Bioactivity. Molecular Informatics, 34(2-3), 160-170.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/6"
)

Publication.create!(
    publication_id: 7,
    title: "Toward Good Read-Across Practice (GRAP) guidance.",
    doi: "10.14573/altex.1601251",
    published_date: "2016-01-01",
    citation: "Ball, N., Cronin, M. T., Shen, J., Blackburn, K., Booth, E. D., Bouhifd, M., . . . Hartung, T. (2016). Toward Good Read-Across Practice (GRAP) guidance. ALTEX.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/7"
)

Publication.create!(
    publication_id: 8,
    title: "International STakeholder NETwork (ISTNET): creating a developmental neurotoxicity (DNT) testing road map for regulatory purposes.",
    doi: "10.1007/s00204-015-1464-2",
    published_date: "2015-01-01",
    citation: "Bal-Price, A., <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K. M.</a>, Leist, M., Allen, S., Arand, M., Buetler, T., . . . Fritsche, E. (2015). International STakeholder NETwork (ISTNET): creating a developmental neurotoxicity (DNT) testing road map for regulatory purposes. Arch Toxicol, 89(2), 269-287.",
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
    title: "Putative adverse outcome pathways relevant to neurotoxicity.",
    doi: "10.3109/10408444.2014.981331",
    published_date: "2015-01-01",
    citation: "Bal-Price, A., <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K. M.</a>, Sachana, M., Shafer, T. J., Behl, M., Forsby, A., . . . Fritsche, E. (2015). Putative adverse outcome pathways relevant to neurotoxicity. Crit Rev Toxicol, 45(1), 83-91.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/9"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "9",
    is_primary_author: false
)

Publication.create!(
    publication_id: 10,
    title: "Advancing the science of developmental neurotoxicity (DNT): testing for better safety evaluation.",
    doi: nil,
    external_url: "http://www.ncbi.nlm.nih.gov/pubmed/22892558",
    published_date: "2012-01-01",
    citation: "Bal-Price, A. K., Coecke, S., Costa, L., <a href=\"http://comptox.ag.epa.gov/impact/scientists/14\">Crofton, K. M.</a>, Fritsche, E., Goldberg, A., . . . Kreysa, J. (2012). Advancing the science of developmental neurotoxicity (DNT): testing for better safety evaluation. ALTEX, 29(2), 202-215.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/10"
)

ScientistPublication.create!(
    scientist_id: "14",
    publication_id: "10",
    is_primary_author: false
)

Publication.create!(
    publication_id: 11,
    title: "Mouse embryonic stem cell adherent cell differentiation and cytotoxicity assay.",
    doi: "10.1007/978-1-61779-867-2_11",
    published_date: "2012-01-01",
    citation: "Barrier, M., Chandler, K., Jeffay, S., Hoopes, M., <a href=\"http://comptox.ag.epa.gov/impact/scientists/20\">Knudsen, T.</a>, &amp; Hunter, S. (2012). Mouse embryonic stem cell adherent cell differentiation and cytotoxicity assay. Methods Mol Biol, 889, 181-195.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/11"
)

ScientistPublication.create!(
    scientist_id: "20",
    publication_id: "11",
    is_primary_author: false
)

Publication.create!(
    publication_id: 12,
    title: "Inducible 70 kDa heat shock proteins protect embryos from teratogen-induced exencephaly: Analysis using Hspa1a/a1b knockout mice.",
    doi: "10.1002/bdra.20610",
    published_date: "2009-01-01",
    citation: "Barrier, M., Dix, D. J., &amp; Mirkes, P. E. (2009). Inducible 70 kDa heat shock proteins protect embryos from teratogen-induced exencephaly: Analysis using Hspa1a/a1b knockout mice. Birth Defects Res A Clin Mol Teratol, 85(8), 732-740.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/12"
)

Publication.create!(
    publication_id: 13,
    title: "Characterizing uncertainty and variability in physiologically based pharmacokinetic models: state of the science and needs for research and implementation.",
    doi: "10.1093/toxsci/kfm100",
    published_date: "2007-01-01",
    citation: "Barton, H. A., Chiu, W. A., <a href=\"http://comptox.ag.epa.gov/impact/scientists/21\">Woodrow Setzer, R.</a>, Andersen, M. E., Bailer, A. J., Bois, F. Y., . . . Tan, Y. M. (2007). Characterizing uncertainty and variability in physiologically based pharmacokinetic models: state of the science and needs for research and implementation. Toxicol Sci, 99(2), 395-402.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/13"
)

ScientistPublication.create!(
    scientist_id: "21",
    publication_id: "13",
    is_primary_author: false
)

Publication.create!(
    publication_id: 14,
    title: "A roadmap for the development of alternative (non-animal) methods for systemic toxicity testing - t4 report*.",
    doi: nil,
    external_url: "http://www.ncbi.nlm.nih.gov/pubmed/22307314",
    published_date: "2012-01-01",
    citation: "Basketter, D. A., Clewell, H., Kimber, I., Rossi, A., Blaauboer, B., Burrier, R., . . . Hartung, T. (2012). A roadmap for the development of alternative (non-animal) methods for systemic toxicity testing - t4 report*. ALTEX, 29(1), 3-91.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/14"
)

Publication.create!(
    publication_id: 15,
    title: "Predictive models for carcinogenicity and mutagenicity: frameworks, state-of-the-art, and perspectives.",
    doi: "10.1080/10590500902885593",
    published_date: "2009-01-01",
    citation: "Benfenati, E., Benigni, R., Demarini, D. M., Helma, C., Kirkland, D., Martin, T. M., . . . Yang, C. (2009). Predictive models for carcinogenicity and mutagenicity: frameworks, state-of-the-art, and perspectives. J Environ Sci Health C Environ Carcinog Ecotoxicol Rev, 27(2), 57-90.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/15"
)

Publication.create!(
    publication_id: 16,
    title: "Application of the Margin of Exposure (MOE) approach to substances in food that are genotoxic and carcinogenic.",
    doi: "10.1016/j.fct.2009.11.003",
    published_date: "2010-01-01",
    citation: "Benford, D., Bolger, P. M., Carthew, P., Coulet, M., DiNovi, M., Leblanc, J. C., . . . Wildemann, T. (2010). Application of the Margin of Exposure (MOE) approach to substances in food that are genotoxic and carcinogenic. Food Chem Toxicol, 48 Suppl 1, S2-24.",
    publication_type_id: 1,
    publication_url: "http://comptox.ag.epa.gov/impact/api/publications/16"
)