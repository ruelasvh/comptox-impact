# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Scientist.delete_all

Scientist.create!(
    scientistId: 1,
    firstName: "Ann",
    lastName: "Richard",
    email: "richard.ann@epa.gov",
    title: "Research Chemist",
    photoUrl: "richard_ann.jpg",
    orcid: "0000-0003-2116-2300",
    researchGate: "https://www.researchgate.net/profile/Ann_Richard",
    linkedIn: "https://www.linkedin.com/in/ann-richard-77b1b64",
    vivo: "http://vivo.epa.gov/vivo/individual/person2461",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Richard has worked as a computational chemist researcher in EPA&apos;s Office of Research and Development for over 30 years, joining the National Center for Computational Toxicology (NCCT) in 2005.  Within NCCT, she has led the DSSTox project and chemical management efforts in support of EPA&apos;s ToxCast and Tox21 programs.  Her research interests lie in creating a knowledge-informed cheminformatics interface between the chemical landscape and the in vitro and in vivo data landscapes that can be used to guide modeling into productive areas of mechanistic inquiry. </p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A./B.S., State University of New York at Oswego, NY; Math/Chemistry, 1978</li><li>Ph.D., University of North Carolina at Chapel Hill, NC; Theoretical Physical Chemistry, 1983</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>ORD Science &amp; Technology Achievement Awards, Level III, 2011, 2012, 2015</li><li>EPA National Honor Award: Science Achievement Awards, 2012, 2013, 2014</li><li>White House Invitation for Champions of Change: Open Science Award Ceremony, 2013</li><li>EPA Superior Achievement Recognition Awards, 2009-2015</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/1"
)

Scientist.create!(
    scientistId: 2,
    firstName: "Antony",
    lastName: "Williams",
    email: "williams.antony@epa.gov",
    title: "Chemist",
    photoUrl: "williams_antony.jpg",
    orcid: "0000-0002-2668-4821",
    plumx: "https://plu.mx/u/awilliams/",
    researchGate: "https://www.researchgate.net/profile/Antony_Williams",
    googleScholar: "https://scholar.google.com/citations?user=O2L8nh4AAAAJ",
    linkedIn: "https://www.linkedin.com/in/antonywilliams",
    vivo: "http://vivo.epa.gov/vivo/individual/person1386434520",
    publons: "https://publons.com/a/306575/",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Williams&apos; present focus at NCCT is as part of the Chemical Safety for Sustainability (CSS) Research Program to develop a cheminformatics architecture for the center. This work has already produced the publicly accessible website, the iCSS Chemistry Dashboard, providing access to chemistry related data for over 700,000 chemicals (<a href=\"https://comptox.epa.gov/dashboard\" target=\"_blank\">https://comptox.epa.gov/dashboard</a>).</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Liverpool University, Liverpool, UK; Chemistry, 1985</li><li>Ph.D., University of London, London, UK; Chemistry, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>North Carolina ACS Distinguished Lecturer, 2016</li><li>Microsoft eScience Jim Gray Award, 2012</li><li>Fellow of the Royal Society of Chemistry, 2009</li><li>University of London Bourne Medal for best Chemistry Thesis, 1988</li><li>Morris Ranger Undergraduate scholarship, 1983</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/2"
)

Scientist.create!(
    scientistId: 3,
    firstName: "Audrey",
    lastName: "Bone",
    email: "bone.audrey@epa.gov",
    title: "Toxicologist",
    photoUrl: "bone_audrey.jpg",
    researchGate: "https://www.researchgate.net/profile/Audrey_Bone",
    googleScholar: "https://scholar.google.com/citations?user=zzJk_hIAAAAJ",
    linkedIn: "https://www.linkedin.com/in/audrey-bone-20b23186",
    vivo: "http://vivo.epa.gov/vivo/individual/person1353701027",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Bone is a toxicologist with 7 years of experience conducting independent research on the impact of environmental exposures on biological pathways. She has experience in mechanistic and eco-toxicology using zebrafish, mosquitofish and Atlantic killifish as model systems as well as computational toxicology using quantitative high throughput screening (qHTS) datasets such as ToxCast.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Clemson University, Clemson, SC; Chemistry, 2009</li><li>Ph.D., Duke University, Durham, NC; Integrated Toxicology and Environmental Health</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>K.C. Donnelly Externship Award Supplement, 2013</li><li>Duke Integrated Toxicology and Environmental Health Program Fellowship, 2009</li><li>Undergraduate Award for Excellence in Environmental Chemistry, ACS, 2007</li><li>Robert C. Byrd Fellowship, 2005-2009</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/3"
)

Scientist.create!(
    scientistId: 4,
    firstName: "Chris",
    lastName: "Grulke",
    email: "grulke.chris@epa.gov",
    title: "Cheminformatician",
    photoUrl: "grulke_chris.jpg",
    orcid: "0000-0001-5606-7560 ",
    researchGate: "https://www.researchgate.net/profile/Christopher_Grulke",
    linkedIn: "https://www.linkedin.com/in/christopher-grulke-05486727",
    vivo: "http://vivo.epa.gov/vivo/individual/person2745",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Grulke is an advanced cheminformatics scientist and software developer with comprehensive knowledge in integrating chemical and biological data into models for decision support. He has ten years of hands-on experience storing, integrating, visualizing and analyzing complex datasets. He also has a broad array of interests and skills including cheminformatics, toxicological modeling, exposure modeling, PBPK modeling, ADME property prediction, statistical analysis, machine learning, text-mining, natural language processing, programming, and software engineering.</p></br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S.E., University of Michigan, Ann Arbor, MI; Chemical Engineering, 2003</li><li>Ph.D., University of North Carolina at Chapel Hill; Pharmaceutical Science, Medicinal Chemistry, and Biophysics, 2011</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA Special Accomplishment Award, 2013</li><li>NERL Exposure Science Excellence Award, 2013</li><li>HEASD Paper of the Year Award, 2013</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/4"
)

Scientist.create!(
    scientistId: 5,
    firstName: "Danica",
    lastName: "DeGroot",
    email: "degroot.danica@epa.gov",
    title: "Post-Doctoral Fellow",
    photoUrl: "degroot_danica.jpg",
    linkedIn: "https://www.linkedin.com/in/danica-degroot-434494a4",
    vivo: "http://vivo.epa.gov/vivo/individual/person2132516277",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. DeGroot is involved in the design and refinement of in vitro assays to detect environmental toxicants and is currently researching methods to retrofit existing high-throughput screening (HTS) assays with metabolic competence.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., summa cum laude, Colorado State University, Fort Collins, CO; Environmental Health, 2001</li><li>Ph.D., University of California, Davis, CA; Pharmacology and Toxicology, 2012</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Graduate Student Researcher Traineeship, UC Davis Superfund Basic Research and Training Program, 2008</li><li>Honorable Mention for Graduate Student Poster, Molecular Biology Specialty Section, Annual Meeting of the Society of Toxicology, 2008.</li><li>Trainee, NIEHS Training Grant in Environmental Toxicology, UC Davis, 2005-2008.</li><li>Schwall Fellowship in Medical Research, UC Davis, 2003-2005</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/5"
)

Scientist.create!(
    scientistId: 6,
    firstName: "Danielle",
    lastName: "Suarez",
    email: "suarez.danielle@epa.gov",
    title: "Biologist",
    photoUrl: "suarez_danielle.jpg",
    researchGate: "https://www.researchgate.net/profile/Danielle_Suarez",
    linkedIn: "https://www.linkedin.com/in/danielle-suarez-7772bb15",
    vivo: "http://vivo.epa.gov/vivo/individual/person1853",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Danielle Suarez’s academic training includes a B.S in Zoology from North Carolina State University. During her studies, Ms. Suarez was a student intern at the National Institutes of Environmental Health Sciences in the Laboratory of Respiratory Biology (now known as the Cell Biology Group) headed by Dr. Anton M. Jetten. During this internship she was able to learn a vast array of cell biology laboratory techniques. After her 2 year internship at NIEHS, Ms. Suarez was a medium throughput protein screener at Agarigen, a startup biotechnology company. During this time she developed protein assays to analyze bio manufactured proteins of interest. Currently, Ms. Suarez is a Biologist in NCCT, working to help develop cell based assays to determine mitochondrial toxicants in environmental chemicals.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., North Carolina State University, Raleigh, NC; Zoology, 2007.</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/6"
)

Scientist.create!(
    scientistId: 7,
    firstName: "Dustin",
    lastName: "Kapraun",
    email: "kapraun.dustin@epa.gov",
    title: "Mathematical Statistician",
    photoUrl: "kapraun_dustin.jpg",
    orcid: "0000-0001-5570-6383",
    researchGate: "https://www.researchgate.net/profile/Dustin_Kapraun",
    googleScholar: "https://scholar.google.com/citations?user=LrRLN6IAAAAJ",
    linkedIn: "https://www.linkedin.com/in/dfkapraun",
    vivo: "",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Kapraun contributes mathematical and statistical expertise to the NCCT, utilizing exposure and dosimetry models in conjunction with chemical-specific gestational PBPK models in order to assess chemical safety in the context of in utero human development.  He also synthesizes exposure models and data, concentration-response models for individual chemicals, pattern mining techniques, and machine learning in order to prioritize chemical mixtures for high-throughput screening.  Another important part of his work is assessing interval estimation methods for toxicity parameters through computationally intensive parallel processing of multidimensional simulated data sets.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., North Carolina State University, Raleigh, NC; Mathematics, 1998</li><li>M.S., North Carolina State University, Raleigh, NC; Physics, 2002</li><li>Ph.D., North Carolina State University, Raleigh, NC; Applied Mathematics, 2014</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Travel Award, Rocky Mountain Summer Workshop on Uncertainty Quantification, 2015</li><li>ORISE Postdoctoral Fellowship, Oak Ridge Institute for Science and Education, 2014-2015</li><li>Research Training Group Fellowship, National Science Foundation, 2012-2013</li><li>Lord Fellowship, Center for Research in Scientific Computation, 2011-2012</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/7"
)

Scientist.create!(
    scientistId: 8,
    firstName: "Grace",
    lastName: "Patlewicz",
    email: "tier.grace@epa.gov",
    title: "Chemist",
    photoUrl: "patlewicztier_grace.jpg",
    orcid: "0000-0003-3863-9689",
    researchGate: "https://www.researchgate.net/profile/Grace_Patlewicz",
    linkedIn: "https://www.linkedin.com/in/grace-p-0341b84",
    vivo: "http://vivo.epa.gov/vivo/individual/person838233731",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Patlewicz is a computational toxicologist with industrial and regulatory experience especially in the field of mammalian toxicity.  She helps lead an innovative research programme for the development and application of computational chemistry to identify chemical features associated with specific biological interactions or modes of action and predict specific manifestations of toxicity of environmental and industrial chemicals.  Dr. Patlewicz also leverages the principles of computational chemistry in the development of tools that chemical regulators, researchers, and practitioners use to predict the hazard, pharmacokinetic, and exposure related properties of new and legacy chemicals or as an adjunct to mode of action in risk assessment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of Manchester, Manchester, UK; Chemsitry, 1994</li><li>M.S., University of Surrey, Guildford, UK; Toxicology, 1996</li><li>Post-graduate Diploma, Henley College, Henley-on-Thames, UK; Management, 2000</li><li>Ph.D., University of Santiago de Compostela, Spain; Organic Chemistry, 2007</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/8"
)

Scientist.create!(
    scientistId: 9,
    firstName: "Imran",
    lastName: "Shah",
    email: "shah.imran@epa.gov",
    title: "Computational Systems Biologist",
    photoUrl: "shah_imran.jpg",
    researchGate: "https://www.researchgate.net/profile/Imran_Shah6",
    googleScholar: "https://scholar.google.com/citations?user=JLB6_1MAAAAJ",
    linkedIn: "https://www.linkedin.com/in/imranshah",
    vivo: "http://vivo.epa.gov/vivo/individual/person2808",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Imran Shah is a computational systems biologist in EPA&apos;s National Center for Computational Toxicology (NCCT). Dr. Shah provides NCCT leadership in innovative computational approaches to rapidly evaluate health implications for thousands of environmental stressors. His research focuses on predicting chemical-induced toxicity from complex large-scale molecular data sets using novel machine learning and systems biology methods.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.Sc., Imperial College of Science, Technology and Medicine, London, UK; 1989</li><li>M.S., George Mason University, Fairfax, VA; 1993</li><li>Ph.D., George Mason University, Fairfax, VA; 1999</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA, Pathfinder Innovation Project (PIP) Award, 2015</li><li>EPA, Science and Technical Achievement Award, 2013</li><li>EPA, Chemical Safety for Sustainability, Bronze Medal for Commendable Service, 2011</li><li>Best poster in session, International Conference on Systems Biology, 2010</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/9"
)

Scientist.create!(
    scientistId: 10,
    firstName: "Jeremy",
    lastName: "Fitzpatrick",
    email: "fitzpatrick.jeremy@epa.gov",
    title: "Chemist",
    photoUrl: "fitzpatrick_jeremy.jpg",
    orcid: "0000-0002-5401-9706",
    linkedIn: "https://www.linkedin.com/in/jeremyfitzpatrickphd",
    vivo: "http://vivo.epa.gov/vivo/individual/person1726165655",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Fitzpatrick&apos;s work at Dartmouth included the structure based drug design of a compound to inhibit the interaction of sodium hydrogen exchange regulatory factors 1 and 2 with the parathyroid hormone 1 receptor.  It has been proposed that inhibiting this interaction could be helpful for the treatment of osteoporosis.  Another of his projects at Dartmouth was to observe cell penetrating peptides binding to their targets in E. coli using in-cell nuclear magnetic resonance.  Currently, at the National Center for Computational Chemistry, he develops methods to determine if particular chemicals may be hazardous to humans of the environment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of North Carolina at Asheville; Chemistry, 2008</li><li>Ph.D., Dartmouth College; Biophysical Chemistry, 2014</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Graduate Assistance in Areas of National Need Fellowship, Department of Education, 2012</li><li>Research Scholar, University of North Carolina at Asheville, 2008</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/10"
)

Scientist.create!(
    scientistId: 11,
    firstName: "John",
    lastName: "Cowden",
    email: "cowden.john@epa.gov",
    title: "Biologist",
    photoUrl: "cowden_john.jpg",
    linkedIn: "https://www.linkedin.com/in/john-cowden-4729a27",
    vivo: "http://vivo.epa.gov/vivo/individual/person2321",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Cowden has worked for more than 10 years at the US EPA. He has performed research on chemical safety using alternative species to identify developmental neurotoxicants. He has also worked on human health risk assessments, serving as an expert in developmental biology and neurodevelopment. In his current role, Dr. Cowden manages NCCT&apos;s research portfolio for the Chemical Safety for Sustainability, Human Health Risk Assessment, and Safe and Sustainable Water Research National Programs. He helps facilitate communications between the National Programs and NCCT on initiation, progress, and delivery of research products, and he works to align NCCT scientific research with National Program strategic vision.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>BS in Biology, minor in Chemistry, College of William and Mary</li><li>Ph.D. in Molecular and Cell Biology, University of California at Berkeley</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>ORD Bronze Medal for IRIS Outreach</li><li>NCEA Gold Medal for inorganic arsenic public workshop</li><li>ORD Bronze Medal for working on EPA response to E15 biofuel waiver request</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/11"
)

Scientist.create!(
    scientistId: 12,
    firstName: "John",
    lastName: "Wambaugh",
    email: "wambaugh.john@epa.gov",
    title: "Physical ScientistMain",
    photoUrl: "wambaugh_john.jpg",
    orcid: "0000-0002-4024-534X",
    researchGate: "https://www.researchgate.net/profile/John_Wambaugh",
    googleScholar: "https://scholar.google.com/citations?user=t2MGODwAAAAJ",
    linkedIn: "https://www.linkedin.com/in/john-wambaugh-90a2586",
    vivo: "http://vivo.epa.gov/vivo/individual/person2464",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Wambaugh&apos;s areas of active research include high throughput methods for exposure, toxicokinetics, and toxicology; Bayesian statistics; and biostatistics. He co-leads the EPA ExpoCast project and is a member of the ToxCast team. John&apos;s research on these projects focuses on predicting human chemical effects and exposures using in vitro laboratory measurements and computer simulations, and rigorously evaluating these predictions using statistical methodology.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., University of Michigan, Ann Arbor, MI; Physics, 1999</li><li>M.S., Georgia Institute of Technology, Atlanta, GA; Physics, 2001</li><li>M.S., Duke University, Durham, NC; Computer Science, 2005</li><li>Ph.D., Duke University, Durham, NC; Physics, 2006</li><li>Post-Doc, National Center for Computational Toxicology, Durham, NC; Statistical Analysis of Biological Models, 2008</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Risk Assessment Specialty Section of the Society of Toxicology Top Ten Abstracts: Rager, et al. “Linking High Resolution Mass Spectrometry Data with Exposure and Toxicity Forecasts to Advance High-Throughput Environmental Monitoring, 2016</li><li>Honorable Mention, Best Paper in Biological Modeling, Biological Modeling Specialty Section of the Society of Toxicology: Wetmore et al., &#8220;Incorporating High-Throughput Exposure Predictions with Dosimetry-Adjusted In Vitro Bioactivity to Inform Chemical Toxicity Testing&#8221;, 2016</li><li>U.S. E.P.A. Scientific and Technological Achievement Award for &#8220;High Throughput Heuristics for Prioritizing Human Exposure to Environmental Chemicals&#8221;, 2015</li><li>U.S. E.P.A. Bronze Medal for National Research Program Team for &#8220;Chemicals Safety for Sustainability&#8221;, 2015</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/12"
)

Scientist.create!(
    scientistId: 13,
    firstName: "Keith",
    lastName: "Houck",
    email: "houck.keith@epa.gov",
    title: "Physical ScientistMain",
    photoUrl: "houck_keith.jpg",
    orcid: "0000-0002-0055-2249",
    researchGate: "https://www.researchgate.net/profile/Keith_Houck",
    googleScholar: "https://scholar.google.com/citations?user=1JpQzTYAAAAJ",
    linkedIn: "https://www.linkedin.com/in/keith-houck-9732972",
    vivo: "http://vivo.epa.gov/vivo/individual/person2465",
    publons: "https://publons.com/a/1202553/",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Prior to joining the EPA, Dr. Houck worked in the biotechnology and pharmaceutical fields where he applied molecular and cellular biology skills towards identification of drug candidates for Sphinx Pharmaceuticals and Eli Lilly &amp; Co.  He leads efforts within the EPA&apos;s Chemical Safety for Sustainability Program is researching new, more efficient, ways to address managing the safety of chemicals, particularly in assessing chemicals for potential risk to human health and the environment.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Guilford College, Greensboro, NC; Biology, 1980</li><li>M.S., University of North Carolina, Chapel Hill; Chemistry, 1982</li><li>Ph.D., Duke University, Durham, NC; Pathology/Toxicology, 1989</li><li>Post-doc, Genentech, Inc.; Molecular and Cellular Biology, 1992</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Editorial Board, Journal of Biomolecular Screening, 2010-present</li><li>Exceptional/Outstanding ORD Technical Assistance to the Regions of Program Offices: Assistance with Multiple SAP Reviews for OSCP, 2014</li><li>White House invitation for the Champions of Change award ceremony for efforts to provide public access to innovative science, 2013</li><li>U.S. EPA Level I Scientific and Technological Achievement Award: Advancing Chemical Safety Assessment via the Development of Predictive Reproductive and Developmental Toxicity Models, 2013</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/13"
)

Scientist.create!(
    scientistId: 14,
    firstName: "Kevin",
    lastName: "Crofton",
    email: "crofton.kevin@epa.gov",
    title: "Deputy Director",
    photoUrl: "crofton_kevin.jpg",
    orcid: "0000-0003-1749-9971",
    researchGate: "https://www.researchgate.net/profile/Kevin_Crofton",
    linkedIn: "https://www.linkedin.com/in/kevin-crofton-845a0310",
    vivo: "http://vivo.epa.gov/vivo/individual/person1862",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Crofton has worked for more than 30 years as a developmental neurotoxicologist at the US Environmental Protection Agency&apos;s Office of Research and Development in Research Triangle Park, North Carolina. His research interests include developmental neurotoxicity, with an emphasis on development of adverse outcome pathways and in vitro alternative testing methods.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Miami University, Oxford, OH; Zoology, 1977</li><li>M.S., Miami University, Oxford, OH; Zoology, 1980</li><li>Ph.D., The University of North Carolina, Chapel Hill; Toxicology, 1986</li><li>Postdoctoral Fellowship, U.S. EPA; Neurotoxicology, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Scientific and Technological Achievement Award (Level III) for &#8220;Characterization of an Adverse Outcome Pathway for the Thyroid-Disrupting Activity of Triclosan across Life-Stages&#8221;</li><li>ORD Science Communication Award &#8220;For sustained communication about ORD&apos;s science to prioritize and screen chemicals and to enhance the interpretation of data in support of the Agency mission&#8221;</li><li>Exceptional/Outstanding ORD Technical Assistance to the Regions or Program Office Award &#8220;For the development and presentation of reports to the sap on modeling approaches to estimate exposure and dose for use in cumulative risk&#8221;</li><li>Gold Medal for Exceptional Service &#8220;For outstanding contributions to environmental protection through research in development of state-of-the-science methods to characterize environmental risks posed by perchlorate contamination&#8221;</li><li>Society of Toxicology, Astra-Zenca Traveling Lectureship Award.</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/14"
)

Scientist.create!(
    scientistId: 15,
    firstName: "Matthew",
    lastName: "Martin",
    email: "martin.matt@epa.gov",
    title: "Research Biologist",
    photoUrl: "martin_matt.jpg",
    orcid: "0000-0002-8096-9908",
    researchGate: "https://www.researchgate.net/profile/Matthew_Martin21",
    googleScholar: "https://scholar.google.com/citations?user=Eo9wd70AAAAJ",
    linkedIn: "https://www.linkedin.com/in/matt-martin-0643432",
    vivo: "http://vivo.epa.gov/vivo/individual/person2463",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Martin&apos;s doctorate work focused on developing predictive models of reproductive toxicity and the application of those models toward chemical prioritization and integrated testing strategies. He started his career at Versar Inc. as an environmental scientist working at EPA doing antimicrobial pesticide risk assessment and eventually to CH2M Hill Inc. as a database analyst. He began his career at EPA as part of the EPA Intern Program (now called the Environmental Careers Program) where he was able to do rotations across different parts of the agency, including the Office of Pesticide Programs and Office of Pollution Prevention and Toxics. He is now a biologist within NCCT, where he is part of the EPA ToxCast team and leads the Toxicity Reference Database (ToxRefDB) effort. Matt also serves as the CSS task lead for developing predictive models of toxicity using high throughput screening data.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., James Madison University, Harrisonburg, VA; Integrated Science and Technology (ISAT), 2003</li><li>M.S., University of North Carolina at Chapel Hill; Environmental Sciences and Engineering, 2008</li><li>Ph.D., University of North Carolina at Chapel Hill; Environmental Sciences and Engineering, 2011</li><li>Certificate, University of North Carolina at Chapel Hill; Bioinformatics and Computational Biology Training Program, 2011</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Gold Coin Recipient and Certificate of Appreciation &#8220;In recognition of dedication and service in support of the Nation&apos;s response to the Deepwater Horizon Oil Spill&#8221;, 2011</li><li>Scientific and Technological Achievement Awards (STAA) Level II for &#8220;Communicating Toxicity Databases that Facilitate Transparency of EPA&apos;s Evaluation of Chemical Risk to the Environment and Public Health&#8221;, 2011</li><li>Scientific and Technological Achievement Awards (STAA) Level III for &#8220;Developing the ACToR System and Quantifying Data Gaps in Our Knowledge of Environmental Chemicals&#8221;, 2011</li><li>Superior Accomplishment Recognition Award (SARA) for Toxcast data analysis, 2010</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/15"
)

Scientist.create!(
    scientistId: 16,
    firstName: "Richard",
    lastName: "Judson",
    email: "judson.richard@epa.gov",
    title: "Research Chemist",
    photoUrl: "judson_richard.jpg",
    orcid: "0000-0002-2348-9633",
    researchGate: "https://www.researchgate.net/profile/Richard_Judson",
    googleScholar: "https://scholar.google.com/citations?user=ovOQEPQAAAAJ",
    linkedIn: "https://www.linkedin.com/in/richard-judson-57a32443",
    vivo: "http://vivo.epa.gov/vivo/individual/person2805",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Judson develops databases and computer applications to model and predict toxicological effects of a wide range of chemicals. He is a member of the EPA ToxCast team where he leads the effort in bioinformatics. His team has developed the ACToR (Aggregated Computational Toxicology Resource) database and application which compiles all publicly available data on environmental chemicals.  Dr. Judson has authored research publications in areas including computational biology and chemistry, bioinformatics, genomics, human genetics, toxicology and applied mathematics.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Rice University, Houston, TX; Chemistry and Chemical Physics, 1981</li><li>M.A., Princeton University, Princeton, NJ; Chemistry, 1984</li><li>Ph.D., Princeton University, Princeton, NJ; Chemistry, 1988</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>EPA / ORD Gold Coin Award for Response to Gulf Oil Spill (2011)</li><li>EPA Science and Technological Achievement Award / National Honor Award &#8220;For outstanding accomplishment establishing a computational toxicology program&#8221; (2011)</li><li>EPA / OSCPP Honor Award: &#8220;Endocrine Disruptor Screening Program Team, Silver Medal for Superior Service&#8221; (2013)</li><li>EPA / ORD Honor Award: Exceptional/Outstanding ORD Technical Assistance to the Regions or Program Offices, Endocrine Disruptor Screening Program Assistance Team (2014)</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/16"
)

Scientist.create!(
    scientistId: 17,
    firstName: "Russell",
    lastName: "Thomas",
    email: "thomas.russell@epa.gov",
    title: "Director",
    photoUrl: "thomas_russell.jpg",
    researchGate: "https://www.researchgate.net/profile/Russell_Thomas5",
    googleScholar: "https://scholar.google.com/citations?user=vHobjzgAAAAJ",
    linkedIn: "https://www.linkedin.com/in/russell-thomas-b466204",
    vivo: "http://vivo.epa.gov/vivo/individual/person2807",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Thomas&apos; area of expertise is in the application of high-throughput and high data content approaches to chemical toxicity testing.  He has a broad, multidisciplinary background and experience but his formal academic training was in chemistry, radiation health physics, and toxicology.  He then received postdoctoral training in molecular biology and genomics.  Following his academic training, Dr. Thomas performed bioinformatics and genomics research in the biotechnology sector and gained experience in high-throughput screening and in vitro assay development in the biopharma sector. Prior to coming to the U.S. EPA, Dr. Thomas worked as an investigator and the the director of the Institute for Chemical Safety Sciences at The Hamner Institutes for Health Sciences.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., Tabor College, Hillsboro, KS; Chemistry, 1991</li><li>M.S., Colorado State University, Fort Collins, CO; Radioecology and Health Physics, 1993</li><li>Ph.D., Colorado State University, Fort Collins, CO; Toxicology, 1997</li><li>Post-doc, McArdle Laboratory for Cancer Research, Madison, WI; Genomics and Molecular Biology, 2000</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Member, Society of Toxicology Speaker Bureau, 2015 – Present</li><li>Member, Expert Advisory Panel, Safety Evaluation Ultimately Replacing Animal Testing (SEURAT-1), Joint Program by European Commission and European Cosmetics Association, 2012 – Present</li><li>Society of Toxicology Board of PublicationsMain Best Paper Award, 2014</li><li>Best Paper Advancing the Science of Risk Assessment by the Risk Assessment Specialty Section, Society of Toxicology, 2014</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/17"
)

Scientist.create!(
    scientistId: 18,
    firstName: "Stephen",
    lastName: "Little",
    email: "little.stephen@epa.gov",
    title: "Chemist",
    photoUrl: "little_stephen.jpg",
    orcid: "0000-0003-1376-9188",
    researchGate: "https://www.researchgate.net/profile/Stephen_Little4",
    linkedIn: "https://www.linkedin.com/in/steve-little-906862",
    vivo: "http://vivo.epa.gov/vivo/individual/person2459",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Stephen Little is a chemist and currently serves as the Quality Assurance Manager for EPA&apos;s National Center for Computational Toxicology (NCCT). He also fills other Information Management roles as the Technical Information Manager and Records Liaison Officer for NCCT.  Since 1995, he has been a Chemist with the U.S. Environmental Protection Agency in RTP, NC.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Gardner-Webb University, Boiling Springs, NC; Mathematics, 1977</li><li>B.S., North Carolina State University, Raleigh, NC; Biochemistry, 1981</li><li>M.A., North Carolina State University, Raleigh, NC; Toxicology, 2001</li><li>Graduate Certificate, Indiana University, Bloomington, IN; Chemical Informatics, 2009</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Time off Award, group award for establishing NCCT, 2006</li><li>&#8220;S&#8221; Award for serving as Conazole QA TSR technical expert on review team, 2004</li><li>Honorable Mention, Scientific and Technological Achievement Award, 2003</li><li>&#8220;S&#8221; Special Accomplishment Recognition Award for significant contribution to the EPA cosponsored EMS International Breast Cancer meeting, 2001</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/18"
)

Scientist.create!(
    scientistId: 19,
    firstName: "Steven",
    lastName: "Simmons",
    email: "simmons.steve@epa.gov",
    title: "Research Toxicologist",
    photoUrl: "simmons_steve.jpg",
    orcid: "0000-0001-9079-1069",
    researchGate: "https://www.researchgate.net/profile/Steven_Simmons",
    googleScholar: "https://scholar.google.com/citations?user=pnKac4cAAAAJ",
    linkedIn: "https://www.linkedin.com/in/steve-simmons-581a1113",
    vivo: "http://vivo.epa.gov/vivo/individual/person1852",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Simmons, a research toxicologist within NCCT, leads research efforts to develop and implement in vitro methods that identify potential environmental toxicants.  He plays a critical role in the national Tox21 effort involving EPA, the National Toxicology Program (NTP), and NIH Center for Chemical Genomics (NCGC) in assay design, evaluation and selection for ultra-high throughput screening at NCGC.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Lamar University, Beaumont, TX; Biology/Chemistry, 1997</li><li>Ph.D., North Carolina State University, Raleigh, NC; Toxicology, 2006</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>U.S. EPA Scientific and Technological Achievement Awards (STAA) Award (Level II), 2011</li><li>Rated &#8220;outstanding&#8221; in annual performance at US EPA 2006-2010 and 2011-2015</li><li>National Health and Environmental Effects Research Laboratory Meritorious Service Award, 2007</li><li>Fifteen-time recipient of EPA S-Awards for outstanding contributions to team research</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/19"
)

Scientist.create!(
    scientistId: 20,
    firstName: "Thomas",
    lastName: "Knudsen",
    email: "knudsed.thomas@epa.gov",
    title: "Developmental Systems Biologist",
    photoUrl: "knudsen_thomas.jpg",
    researchGate: "https://www.researchgate.net/profile/Thomas_Knudsen",
    linkedIn: "https://www.linkedin.com/in/thomas-knudsen-91026213",
    vivo: "http://vivo.epa.gov/vivo/individual/person2806",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Knudsen is a Developmental Systems Biologist at the US Environmental Protection Agency&apos;s National Center for Computational Toxicology, where he is a member of the ToxCast research team and lead of the Virtual Tissue Models research effort.  His research on prenatal developmental toxicity and systems biology has led to over 120 scientific papers and book chapters. His current research focus is on the application of ToxCast HTS data for predictive modeling of developmental toxicity and the use of multicellular-agent based models to unravel spatial and temporal dynamics of complex embryological systems in response to chemical exposures.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.S., Albright College, Reading, PA; Biology, 1976</li><li>Ph.D., Thomas Jefferson University, Philadelphia, PA; Anatomy, 1981</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>Scientific and Technological Achievement Award (STAA), Level II for &#8220;ExpoCast High Throughput Framework for Rapid Prioritization of Human Exposure to Environmental Chemicals&#8221;, 2015</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Using High-Throughput Screening Assays to Profile Enzymatic and Receptor Signaling Activity of ToxCast Chemicals&#8221;, 2016</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Classifying Toxic and Therapeutic Mechanisms by Phenotypic Screening of ToxCast Chemicals&#8221;, 2016</li><li>Scientific and Technological Achievement Award (STAA), Level III for &#8220;Development of a Novel Experimental System to Evaluate Predictive-Toxicity Signatures&#8221;, 2016</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/20"
)

Scientist.create!(
    scientistId: 21,
    firstName: "Woodrow",
    lastName: "Setzer",
    email: "setzer.woodrow@epa.gov",
    title: "Mathematical Statistician",
    photoUrl: "setzer_woody.jpg",
    orcid: "0000-0002-6709-9186",
    researchGate: "https://www.researchgate.net/profile/Rhyne_Setzer",
    googleScholar: "https://scholar.google.com/citations?user=_c-Pjk0AAAAJ",
    linkedIn: "https://www.linkedin.com/in/woody-setzer-a604b09",
    vivo: "http://vivo.epa.gov/vivo/individual/person2460",
    bio: "<span id=\"bio-aoe\">Area of Expertise:</span><p>Dr. Setzer develops and adapts statistical methods for characterizing uncertainty in the predictions from dynamic biological models (such as physiologically-based pharmacokinetic models), engages in various aspects of dose-response modeling for informing risk assessments of the effects on human health of environmental exposure, develops methodology for evaluating high-throughput exposure models, and serves as a general statistical consultant for the U.S. EPA National Center for Computational Toxicology.</p><br><span id=\"bio-edu\">Education:</span><p><ul><li>B.A., University of Chicago, Chicago, IL; Mathematics, 1974</li><li>Ph.D., SUNY at Stony Brook, Stony Brook, NY; Ecology and Evolution, 1983</li><li>Post-doc, University of North Carolina, Chapel Hill; Biostatistics, 1987</li><li>Post-doc, National Research Council Fellow, USEPA, RTP, NC; Biostatistics and Risk Assessment, 1989</li></ul></p><p><span id=\"bio-pe\">Professional Experience:</span><p><ul><li>USEPA Scientific and Technological Achievement Award, Level I: Biologically-Based Dose-Response Modeling in Developmental Toxicology: Biochemical and Cellular Sequelae of 5-Fluorouracil Exposure in the Developing Rat, 1994</li><li>USEPA Scientific and Technological Achievement Award, Level II: ExpoCast High Throughput Framework for Rapid Prioritization of Human Exposure to Environmental Chemicals, 2014</li><li>USEPA Scientific and Technological Achievement Award, Level III: Use of Exposure Information to Focus Toxicological Evaluation of Mixtures, 2015</li><li>USEPA Gold Medal for Exceptional Service &#8220;For extraordinary diligence and creativity in producing highly sophisticated human health risk assessments to protect public health, especially children&apos;s, from the highly toxic pesticide, carbofuran&#8221;, 2009.</li><li>USEPA Silver Medal for Scientific Workgroups for EPA&apos;s Guidelines for Carcinogen Risk Assessment and Supplemental Guidance for Assessing Susceptibility from Early-Life Exposure to Carcinogens, 2006<li></li>USEPA Silver Medal for the Organophosphate Cumulative Risk Assessment, 2003</li><li>Superior Accomplishment Award from the Office of Pesticide Programs, 2009</li></ul></p>",
    createdBy: "System",
    selfUrl: "http://comptox-api.ag.epa.gov/impact/scientists/21"
)