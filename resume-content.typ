#let hBar() = [
  #h(0.2em) | #h(0.2em)
]

#let sectionName = [Education]
//Load Balancing of Parallel Tasks using Memory Bandwidth Restrictions.
#let eduEntries = (
gu: (
    title: [Master's degree, Computer Science],
    society: [University of Gothenburg/Chalmers],
    date: [2020 - ],
    location: [Gothenburg, Sweden],
    /*description: list(
        //[*Thesis*: Predicting Cache Coherence during Contextual Switching in Primitive Shaders with High Complex Mesh Count and Low Duplication],
        [*Courses*: // Todo: Korta ner
        Game Research #hBar() //An introduction to Game Research #hBar()
        Gameplay Design #hBar()
        Computer Graphics #hBar()
        Game Engine Architecture #hBar()
        Game Development Project #hBar()
        //Technology-driven experimental gameplay design #hBar()
        Prototyping in Interaction design #hBar() Requirements Engineering #hBar()
        Agile Development Processes]
      )*/
      description: [
        / Courses\:: Game Research, Gameplay Design, Computer Graphics, Game Engine Architecture, Game Development Project, Prototyping in Interaction Design, Requirement Engineering, Agile Development Processes, Embedded Systems
      ]
  ),
mdh: (
    title: [Bachelor of Science - BS, Computer Science],
    society: [Mälardalen University],
    date: [2016 - 2019],
    location: [Västerås, Sweden],
    /*description: list(
      [*Thesis*: Load Balancing of Parallel Tasks using Memory Bandwidth Restrictions \ 
      Researched memory contention and resource allocation strategies in multi-core systems, particularly focusing on memory bandwidth restrictions and their impact on parallel task synchronization. Conducted experiments to assess the effectiveness of adaptive memory partitioning schemes in reducing execution times. Both the memory partitioning algorithm and benchmarking were implemented in C++, with OpenCV used to provide the workload for benchmarking.],
      [*Courses*: // Todo: Korta ner
        Programming (in C) #hBar()
        Data Structures #hBar() //Data Structures, Algorithms and Program Development #hBar()
        Databases #hBar()
        Data Communication #hBar()
        Web Applications #hBar() //Development of Web Applications #hBar()
        Mobile~Applications #hBar() //Programming Mobile Applications #hBar()
        Artificial Intelligence #hBar()
        Computer Graphics #hBar() //Fundamentals of Computer Graphics #hBar()
        Computer Architecture #hBar()
        Operating Systems #hBar()
        Parallell Systems #hBar()
        Functional Programming #hBar() //Functional Programming with F\# #hBar()
        //Linux Operating System and Development Environment #hBar()
        Interaction Design #hBar()
        //Software Engineering 1: Basic Course #hBar()
        //Software Engineering 2: Project Teamwork #hBar()
        Software Engineering 1 & 2 #hBar()
        Discrete Mathematics #hBar()
        Vector Algebra]
    )*/
    description: [
      / Thesis\:: _"Load Balancing of Parallel Tasks using Memory Bandwidth Restrictions_" \ Researched memory contention and resource allocation strategies in multi-core systems, particularly focusing on memory bandwidth restrictions and their impact on parallel task synchronization. Conducted experiments to assess the effectiveness of adaptive memory partitioning schemes in reducing execution times. Both the memory partitioning algorithm and benchmarking were implemented in C++, with OpenCV used to provide the workload for benchmarking.
      / Courses\:: Programming (in C), Data Structures, Object-Oriented programming (in C\# and C++), Functional programming, Databases, Data Communication, Web Applications, Mobile Applications, Computer Graphics, Computer Architecture, Operating Systems, Parallel Systems, Interaction Design, Software Engineering 1 & 2, Discrete Mathematics, Vector Algebra]
  )
)

#let expEntries = (
evtest: (
    title: [Android Developer],
    society: [Everyone Test],
    date: [July, 2021 - August, 2021],
    location: [Gothenburg, Sweden],
    description: list(
      [Helped developing a dash cam application using the camera2 API for Android. The application was controlled through an app running on a different device, which communicated through a web backend. The other device controlled when to start recording a trip, save a clip, etc.],
      [Technologies used includes native Android, AWS, socket.io]
    )
  ),
  noteab: (
    title: [Electronic Assembler],
    society: [Note AB],
    date: [August, 2014 - August, 2016],
    location: [Torsby, Sweden],
    description: list(
      [Assembled a variety of products, often from start to finish, many demanding a high level of precision and attention to detail],
      [Responsibilities ranged from soldering tasks requiring IPC-certification, testing, and troubleshooting faulty parts/products]
    )
  ),
  voltair: (
    title: [Builder of Air Treatment Units],
    society: [Voltair System AB],
    date: [February, 2014 - June, 2014],
    location: [Torsby, Sweden],
    description: list(
      [Assembled air treatment units from start to finish, but also worked with other tasks such as sheet metal work, producing heat exchangers, and more],
      [Being a certified electrician, my responsibilities also included electrical wiring, configuring, and testing the units],
      //[Further tasks included, i.e., working with sheet metal, producing heat exchangers, and electrical wiring]
    )
  )
)

#let projEntries = (
gea: (
    title: [Development of Game and Game Engine], // TODO: Change
    society: [University of Gothenburg/Chalmers],
    date: [2022],
    location: [Gothenburg, Sweden],
    // Tech stacks: C++, SDL2 (with SDL_image, SDL_mixer, SDL_ttf), Git, Visual Studio, Asesprite, UML
    description: list(
      [Developed the classic game Zaxxon with a custom game engine written in C++ based on the Entity Component System architecture.], // emphasizing modularity and flexibility.
      [Gained practical experience in game development, including how to work with different kinds of game entities to implement the game Zaxxon, including a basic game loop, a GUI, objects like the player, enemies, projectiles, obstacles, and VFX.],
      [Improved my problem‐solving skills as I started without any, or limited, prior knowledge or experience of game engine architectures or using the ECS design pattern. Systems were added, and more commonly improved or expanded with additional features as I saw necessary during the development of the game.]
    )
  ),
app: (
    // Game Development/Interaction Design Project
    title: [Design and implementation of mobile app/game],
    society: [University of Gothenburg/Chalmers],
    date: [2022],
    location: [Gothenburg, Sweden],
    // Tech stacks: Typescript, React Native, Expo, Firebase, Git, VS Code, Figma
    description: list(
      [Worked in collaboration with Generation Pep on a game to encourage increased movement. Users get to take care of a dog playing by mini-games where they walk to the beat of music, earning them tokens they can use to customize their appearance.],
      [Written in Typescript using React Native with Expo cross-platform development written in Typescript. Cloud storage of user profiles using Firebase.]
    )
  ),

unityAR: (
    // Experimental technological gameplay design
    title: [Augmented Reality game in Unity],
    society: [University of Gothenburg/Chalmers],
    date: [2021],
    location: [Gothenburg, Sweden],
    // Tech stacks: Unity, C#, ARCore, Git, VS Code
    description: list(
      [Designed and developed a Jenga-inspired, 2-player AR game where the focus lies on strategic block placement to protect your castle as you take turns firing blocks at the opponent’s castle. You win if the opponent’s castle falls.],
      [Leveraged Unity assets for wooden blocks, robust player interaction, and dynamic ground plane anchoring.],
      [Optimized gameplay by using ray casting, scaling techniques, and occlusion for Android devices supporting the Depth API.]
    )
  ),
volvoce: (
    title: [Software Engineering Project],
    society: [Mälardalen University/Volvo CE],
    date: [Winter 2019],
    location: [Västerås/Eskilstuna, Sweden],
    // Tech stacks: Native Android, Java, Firebase, Git
    description: list(
      [Developed a native Android app for Volvo CE to create and edit paths for their new autonomous machines to follow.],
      [Features included user authentication, database storage, listing paths with the possibility to filter, create and delete paths, editing paths via a visual interface or through G‐Code, reservation of machines, and the ability to reserve machines.],
      [Continuous communication with an external client, including weekly meetings and presentations, as well as having to implement significant changes as the client’s requirements changed.]
    )
  )
)
