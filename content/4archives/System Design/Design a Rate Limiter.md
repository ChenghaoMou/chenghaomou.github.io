---
aliases:
  - Rate Limiter
created: 2022-05-28
linter-yaml-title-alias: Rate Limiter
order: -1
reference: "https://courses.systeminterview.com/courses/take/system-design-interview-an-insider-s-guide/texts/14737971-introduction"
tags: [system design, rate limiter]
title: Rate Limiter
updated: 2022-05-28
---

# Rate Limiter

In web services, rate limiters are used to control the client traffic by limiting the number of requests allowed within a certain time window. Some of the benefits of using rate limiters are:
1. Prevent DDoS.
2. Reduce costs.
3. Reduce chances of being overloaded.

# [[Interview#1 Understand the Scope]]

	1. Client side or server side rate limiter?
		1. Tech stack or ecosystem
		2. Bandwidth or resources
	2. On what basis is this rate limiter working on? Client ID or IP?
	3. Scale or audience
	4. Separate service or integrated service

Requirements:
- Accurate
- Fast
- Efficient
- Distributed
- Exception
- High fault tolerate, esp. when distributed

## Algorithms

### Token Bucket

Imagine there is a bucket and a refiller puts some credits in the bucket periodically. Any incoming request will need one credit to be executed, if the bucket is empty, the request will not be honored.

- Parameters: bucket size and refiller rate
- Different buckets for different API endpoints
- Easy to implement and allows traffic burst but parameters are difficult to tune

### Leaky Bucket

Requests are stored in queue and being processed at regular intervals. Excessive requests are dropped.

- Parameters: queue size and processing rate
- Efficient for stable processing rate but cannot handle a traffic burst

### Fixed Window Count

Each time window has a counter and one request increases the counter by 1.

- Efficient
- Spike traffic might leads to more requests than allowed. For example, a 100 requests per minute rate limit could allow 200 requests from 00:59 to 01:01 as a result.

### Sliding Window Log

Request timestamp is logged and outdated logs are evicted.

- Every accurate but not so memory efficient

## Sliding Window Count

![[Pasted image 20220528152304.png]]

Previous requests are discounted in the rolling time window.

- Not 100% accurate but more memory efficient than [[#Sliding Window Log]]

# [[Interview#2 High-level Design]]

![[Pasted image 20220528152635.png]]

A Redis in memory database can be used to store the counters.

# [[Interview#3 Deep Dive]]

## Configuration

It can be written in some YAML file stored on disk.

## Dealing with Excessive Requests

1. Ignore them with some HTTP response
2. Re-enqueueing them if servers failed

## Distributed Environment

### Race Condition

- Locks but they can be slow
- Lua script [^1] and sorted sets data structure in Redis [^2]

### Synchronization

When multiple rate limiter are used for distributed load-balancing, you can either use sticky request — routing requests to the same rate limiter from the same user, or use central database like Redis.

### Optimization

- Route requests to nearest servers for low latency;
- Data synchronization with an eventual consistency model;

## Monitoring

We want to make sure our rate limiters are working:
- Algorithm is effective (handling burst e.g.)
- Rules are effective (no valid requests dropped)

# [[Interview#4 Wrap up]]

- Rate limits can be used in many layers of the application
- Design products to reduce the need for rate limits
	- Caching
	- Load-balancing
	- Exceptions
	- Retry

---
References

[^1]: [0-rate-limiters.md · GitHub](https://gist.github.com/ptarjan/e38f45f2dfe601419ca3af937fff574d#request-rate-limiter)
[^2]: [Better rate limiting with Redis sorted sets | Building ClassDojo](https://engineering.classdojo.com/blog/2015/02/06/rolling-rate-limiter/)