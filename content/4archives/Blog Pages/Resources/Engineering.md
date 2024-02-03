---
order: -1
tags: [engineering, resource]
title: Engineering
updated: '09-10-2021 22:15'
---

- [GitHub - Eugeny/tabby: A terminal for a more modern age (formerly Terminus)](https://github.com/Eugeny/terminus)
- [Overview of technical writing courses  |  Technical Writing](https://developers.google.com/tech-writing/overview)
- [Jigsaw Labs - Learn Data Engineering part-time online.](https://www.jigsawlabs.io/)
- [Kube Flow](https://www.kubeflow.org/): It is a nice platform that covers the training and deployment cycle of MLOps. But there is a learning curve to this and personally, I think there is just too much to catch up with all the orchestration configurations. If it is not something that is being actively used in your working environment, you have to play a role of infrastructure architect to make it work, which I don't think is worth the effort. ^a778e0
- [MLflow](https://mlflow.org/): It is free, and does a descent job keeping track of things, and I used it in my projects and advocated to the whole team to move their experiments onto this. But there is push-back too. Some people either don't want to do things that requires some level of efforts or just want to have some intelligent platform to do all the work and they aren't willing to settle for less. To them I would say you either adopt to the tools that are free or pay for the tools that can adopt to you. There is no free lunch and certainly no free productivity. ^677d27
- [DVC](https://dvc.org/): It is an awesome tool for managing your datasets. Combined with Github workflows and [CML](https://github.com/iterative/cml) (a product for Continuous ML), you can do magic on each of your pull requests. Adoption is also limited to what code management platform you are using.
- [Pachydem](https://www.pachyderm.com/): I think I've tried this once, but I don't exactly remember the experience. Looking at the description, it looks like a cool tool to manage and track data and models. Again, if you are working on projects alone, you can try all the new things and settle for something you find most comfortable. It would be a totally different story when it is a team.
- [Metaflow](https://metaflow.org/): One of my former college told me about this, and I love the abstraction of a flow in this tool. The containerized steps are super helpful for complex flows. And I hate to admit, if all the models you are trying to build is in scikit-learn, don't bother.
- [Kedro](https://kedro.readthedocs.io/en/stable/#): This was on my radar before. I am not a huge fan of UI.
- [Seldon core](https://www.seldon.io/tech/products/core/): This is a solid tool to deploy your model, it is a pity that making full use of this is almost impossible when model deployment is your responsibility and no one cares about how to make it better.
- [Flyte](https://flyte.org/): This is new to me, it looks like a combination of [[#^677d27]] and [[#^a778e0]]. ^904e5c
- [ZenML](https://zenml.io/): Last time I check, there is no GRPC support.
- [MLRun](https://www.iguazio.com/open-source/mlrun/): Similar to [[#^904e5c]].
- [A collection of code examples from prominent open-source projects - Code Catalog](https://codecatalog.org/) on learning from open-source projects.
- [Atomic Versioned Data Lake - LakeFS](https://lakefs.io/)
- [DAGsHub · The home for data science collaboration](https://dagshub.com/)