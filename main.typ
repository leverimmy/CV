#import "template.typ": *

#show: cv.with(
  name: "熊泽恩",
  email: "xze22@mails.tsinghua.edu.cn",
  birthday: "2004 年 2 月",
  github-id: "leverimmy",
  blog-url: "https://leverimmy.top/",
  photograph: "./img/avatar.jpg",
  photographWidth: 8em,
)

#education((
  (
    school: [#box(image("./logos/tsinghua.svg"), height: 1.1em, baseline: 0.19em) 清华大学 计算机系],
    major: "计算机科学与技术",
    degree: "本科",
    date: "2022.9 — 至今",
  ),
))

// #research((
//   (
//     name: "",
//     supervisor: "",
//     date: "",
//     points: (
//       "",
//       "",
//     ),
//   ),
// ))

#let courses = (
  "软件工程", "A+",
  "程序设计训练", "A+",
  "程序设计基础", "A+",
  "面向对象程序设计基础", "A+",
  "高等线性代数选讲(英)", "A+",
  "复变函数引论", "A+",
  "离散数学(1)", "A",
  "数字逻辑实验", "A",
  "数据结构", "A-",
  "形式语言与自动机", "A-",
)

#section-header(
  title: "学业成绩",
  icon: "./icons/graduation-cap.svg",
)

- 必修限选课 GPA 3.88，年级排名 55/189(前 29.1%)，其中 6 门课程获得 A+。

- 完成了大量课程项目，在实践中巩固了应用开发、计算机系统、软件工程等各领域的计算机专业知识，并培养了出色的工程开发和团队协作能力。

- 部分专业课成绩如下：
  #grid(
    columns: (auto, 1fr, auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.8em,
    ..courses,
  )

#course-projects((
  (
    name: "五级流水线 CPU",
    course: "计算机组成原理",
    role: "三人合作",
    date: "2024.11 — 2024.12",
    tech: "SystemVerilog",
    repo: "",
    points: (
      "完成了一个五级流水线 CPU",
      "实现了中断异常处理、缓存(包括指令缓存和数据缓存)、动态分支预测、虚拟内存与页表等额外功能",
      "分工：负责流水线 CPU 基础功能的编写、数据前传模块的编写，以及中断与异常模块的编写",
    ),
  ),
  (
    name: "Shwitter",
    course: "面向对象程序设计基础",
    role: "单人项目",
    date: "2024.03 — 2024.06",
    tech: "C++ / Qt",
    repo: "leverimmy/Shwitter",
    points: (
      "实现了一个类似 Twitter 的社交媒体应用，支持用户登录、注册、发布和删除内容",
      "应用支持用户之间相互关注，关注后可查看对方发布的内容，使用 Qt 框架进行开发",
      "设计了数据库表结构，包括用户账号密码、关注列表和发布内容，使用 SQL 语句进行数据持久化",
    ),
  ),
  (
    name: "即时通讯系统",
    course: "软件工程",
    role: "三人合作",
    date: "2024.03 — 2024.05",
    tech: "React / Fastify / MongoDB / Docker",
    repo: "",
    points: (
      "具有私聊、群聊、个人信息维护、好友添加删除等功能",
      "支持消息撤回、引用，支持对消息记录的查询、筛选",
      "前端使用 React 框架以及 AntDesign 组件库，后端使用 Fastify 框架",
      "使用 Docker 部署了前后端服务以及 MongoDB 数据库",
      "分工：负责前端开发与产品测试工作，并且负责合作开发中的分支管理",
    ),
  ),
  (
    name: "逻辑表达式判定工具",
    course: "离散数学(1)",
    role: "单人项目",
    date: "2023.10 — 2023.12",
    tech: "C++",
    repo: "leverimmy/Auto-Proof",
    points: (
      "实现了一个逻辑表达式验证系统，用于判断给定的逻辑表达式是否为重言式",
      "将中缀表达式转换为后缀表达式，并构建表达式树",
      "在表达式树上进行递归，实现了王浩算法，判断表达式是否恒成立",
    ),
  ),
  (
    name: "人力资源机",
    course: "程序设计基础",
    role: "两人合作(作为队长)",
    date: "2023.09 — 2023.11",
    tech: "C++ / Qt",
    repo: "leverimmy/Human-Resource-Machine",
    points: (
      "模仿 Steam 平台上的 Human Resource Machine 游戏(课程要求)，使用 Qt 框架开发了一款游戏",
      "设计并实现了游戏的四个界面之间的交互：主界面、关卡选择界面、游戏界面和设置界面",
      "实现了从 JSON 文件读取关卡配置和从 TXT 文件读取指令的功能",
      "提升了对桌面端应用开发的了解，掌握了 Qt 的使用，并体会到了开发过程中问题复现和调试的重要性",
      "分工：负责所有游戏逻辑和页面交互逻辑的代码编写，并且作为队长，协助队友修复 bug",
    ),
  ),
  (
    name: "头条大师",
    course: "程序设计训练",
    role: "单人项目",
    date: "2023.08 — 2023.09",
    tech: "Java / Android 开发",
    repo: "leverimmy/News-App",
    points: (
      "使用 Java 语言和 Android 开发工具，实现了一个新闻客户端 APP",
      "实现了新闻浏览、新闻分类、关键词搜索、日期筛选、新闻收藏、浏览记录本地离线存储等功能",
      "实现了浏览记录和收藏夹的本地存储，使用 SQLite 和 SharedPreferences 进行管理",
      "提升了对 Java 和 Android 应用开发的熟练程度",
    ),
  ),
))

#awards((
  (
    name: "2024 年 CCF 大学生计算机系统与程序设计竞赛",
    prize: "团体总分第一名，个人铜牌",
    date: "2024.10",
  ),
  (
    name: "2024 年度计算机系“9# 之星”(Person of the Year)",
    prize: "",
    date: "2024.12",
  ),
  (
    name: "清华大学综合优秀奖学金 - 清华之友-华泰证券科技奖学金",
    prize: "",
    date: "2023-2024 学年度",
  ),
  (
    name: "清华大学计算机系优秀共青团员",
    prize: "",
    date: "2024.10",
  ),
  // (
  //   name: "2024 两岸清华暨香港科技大学程式竞赛",
  //   prize: "第三名",
  //   date: "2024.08",
  // ),
  (
    name: "清华大学第五届Ghost Hunter中微子数据分析排位赛",
    prize: "二等奖",
    date: "2024.01",
  ),
  (
    name: "清华大学体育优秀奖学金",
    prize: "",
    date: "2022-2023 学年度",
  ),
  (
    name: "清华大学志愿公益优秀奖学金",
    prize: "",
    date: "2022-2023 学年度",
  ),
))

#open-source(
  [在 GitHub 上维护并参与贡献了部分开源项目，部分项目如下所示：],
  (
    (
      name: "OI Wiki",
      repo: "OI-wiki/OI-wiki",
      star: "21.7k",
      role: "贡献者",
      date: "2020.03 起",
      tech: "",
      desc: "OI Wiki 是一个免费开放且持续更新的算法竞赛知识整合站点。",
    ),
    (
      name: "MDN Web 文档项目",
      repo: "mdn/translated-content",
      star: "1.7k",
      role: "贡献者",
      date: "2024.03 起",
      tech: "",
      desc: "MDN Web 文档是一个由开发者、技术写作人员和学习者组成的开放社区，目标是为更好的 Web 构建资源，而无关品牌、浏览器或平台。",
    ),
  ),
)

#services(
  (
    (
      title: "课程助教",
      items: (
        (
          name: "《程序设计基础》(30240233)",
          date: "2024 秋",
          link: "",
          repo: "",
          desc: "清华大学计算机系本科生基础必修课",
        ),
      ),
    ),
    (
      title: "清华大学计算机系科协暑培讲师",
      items: (
        (
          name: "Java 入门",
          date: "2024 夏",
          link: "https://summer24.net9.org/frontend/java/prerequisites/",
          repo: "sast-summer-training-2024/sast2024-java",
          desc: "讲授基础的 Java 语法知识",
        ),
        (
          name: "Android 应用开发",
          date: "2024 夏",
          link: "https://summer24.net9.org/frontend/android/prerequisites/",
          repo: "sast-summer-training-2024/sast2024-android",
          desc: "讲授基础的 Android 应用开发相关知识",
        ),
      ),
    ),
  ),
)

#skills((
  (
    name: "编程语言",
    items: (
      "C++",
      "C",
      "Java",
      "Python",
      "Rust",
      "Haskell",
      "TypeScript",
      "SystemVerilog",
      "RISC-V",
    ),
  ),
  (
    name: "工具",
    items: (
      "Git",
      "LaTeX",
      "Hexo 博客",
    ),
  ),
  (
    name: "语言",
    items: (
      "全国大学英语六级考试 (CET6) 678 分",
    ),
  ),
))
