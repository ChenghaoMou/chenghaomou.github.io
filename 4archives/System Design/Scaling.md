---
created: 2021-12-25
order: -1
reference: "https://courses.systeminterview.com/courses/take/system-design-interview-an-insider-s-guide/texts/14685789-single-server-setup"
tags: [system design, programming, coding interview]
title: Scaling
updated: 2022-05-08
---

## Scaling a Web Service

### Terminology

- **Client**: web browsers or mobile applications.
- **Server**: machines that host back-end code, not necessarily where data live.
- **Database**: data storage that might be on a different machine than the server.

### Types of Scaling

- **Vertical Scaling** refers to adding more CPUs or RAM to your server.
	- It is hard since you cannot add unlimited CPUs to your server due to hardware or operating system limits.
	- If the server goes down, the service goes down.
- **Horizontal Scaling** means adding more servers to your pool, just like adding pods into the Kubernetes cluster. ^e95948

### Areas Where Scaling is Possible

#### Data

##### Database Choice

Relational database is good for most cases, but some use cases require non-relational databases:
1. *Low latency*
2. *Unstructured data*
3. Only operations are *serialization* or *deserialization*
4. *Massive amount of data*

##### Database Replication

1. Better performance and availability by having distributed nodes, allowing parallel processing.
2. Reliability since data is replicated.

##### Database Scaling

Scaling out aka [[#^e95948]] by sharding. However, there are some issues that make sharding difficult:
1. Re-shading: due to failure or shard exhaustion, it might be required to re-shard data;
2. Join operations: join cross shards might be very difficult thus queries need to be de-normalized to query each shard separately;

#### Serving

##### Load-balancer

1. Splitting traffic
2. Scaling out [[#^e95948]] or in by controlling server resources

##### Cache

Caching provides faster response for the requests for the same content. There are some considerations when to use cache:
1. Frequent reads but infrequent writes
2. Expiration policy: not too short and not too short
3. Consistency
4. Distributed cache tier to prevent single point failure
5. Eviction: Least Recent Used (LRU), Least Frequently Used (LFU) or First In First Out (FIFO)

##### CDN

Content Delivery Network, a special case of [[#Cache]] tier, which is usually geologically distributed. They are designed for either static or dynamic files.
Considerations:
1. Cost
2. Expiration policy
3. Fallback when failure
4. Eviction or invalidation

##### Stateless Web Service

- **Stateful**: remembering client data from one request to next
- **Stateless**: no such information is required in the request, but is stored in a share storage accessible from all servers

##### Data Center

Data center are often used to facilitate geolocation-based service. It can host servers, databases, caches and [[#CDN]] can be used to route user requests to different data centers.

1. Redirection
2. Synchronization
3. Testing and deployment

##### Message Queue

Message queue can be used to handle asynchronous communication between users and servers.

#### Logging, Monitoring, Telemetry, and Automation

Good practices good continuous integration, deployment and debugging.

