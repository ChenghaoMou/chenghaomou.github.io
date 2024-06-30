---
title: "Transformer 结构"
created: 2024-06-17
modified: 2024-06-24
aliases:
  - Transformer 结构
---

# Transformer 结构

## 多头注意力

### 注意力结构中 Q、K、V 的含义及作用

含义

1. **Query (Q)**: 查询向量，用于表示当前需要关注的内容。
2. **Key (K)**: 键向量，用于表示所有可能的匹配项的特征。
3. **Value (V)**: 值向量，表示输入特征的内容。

作用

1. **计算相似度**: Q 和 K 进行点乘，计算出查询向量与键向量之间的相似度。这个相似度值通过 Softmax 层进行归一化，得到一组权重。
2. **加权求和**: 使用归一化后的权重对 V 进行加权求和，得到最终的输出向量。这个过程可以理解为根据关注程度对 V 进行加权，重点关注与 Q 相关性强的部分。

### Pytorch 实现

```python
    import torch
    import torch.nn as nn
    import torch.nn.functional as F
    
    class MultiHeadAttention(nn.Module):
        
        def __init__(self, num_heads: int = 8, d_model: int = 768, attn_dropout: float = 0.0, dropout: float = 0.0):
            super().__init__()
            self.num_heads = num_heads
            self.d_model = d_model
            self.d_k = d_model // num_heads
            
            # components
            self.q_proj = nn.Linear(d_model, d_model)
            self.k_proj = nn.Linear(d_model, d_model)
            self.v_proj = nn.Linear(d_model, d_model)
            self.attn_dropout = nn.Dropout(attn_dropout)
            self.dropout = nn.Dropout(dropout)
            self.norm = nn.LayerNorm(d_model)
            self.output = nn.Linear(d_model, d_model)
            
            # maybe create the mask here for causal inference
            
        def forward(self, x, mask=None):
            B, L, H = x.shape
            
            # maybe pre-norm
            # x = self.norm(x)
            
            # [B, L, H] -> [B, N, L, D]
            Q = self.q_proj(x).view(B, L, self.num_heads, self.d_k).transpose(1, 2)
            # [B, L, H] -> [B, N, D, L]
            K = self.k_proj(x).view(B, L, self.num_heads, self.d_k).permute(0, 2, 3, 1)
            # [B, L, H] -> [B, N, L, D]
            V = self.v_proj(x).view(B, L, self.num_heads, self.d_k).transpose(1, 2)
            
            scores = (Q @ K) / self.d_k ** 0.5
            if mask:
                scores = scores.masked_fill(mask[:L, :L] == 0, -torch.inf)
            
            scores = self.attn_dropout(F.softmax(scores, dim=-1))
            # [B, N, L, D]
            output = (scores @ V).transpose(1, 2).contiguous().view(B, L, -1)
            output = self.output(output)
            
            # post-norm
            return self.norm(x + self.dropout(output))
        
        def generate_causal_mask(self, max_length: int = 512):
            
            return torch.tril(
                torch.ones(max_length, max_length, dtype=torch.bool),
                diagonal=1
            )
```

### 时间复杂度

- QK： $O(n^2d_{\text{model}})$
- Softmax: $O(n^2)$
- Weighted: $O(n^2d_{\text{model}})$
- 总体：$O(n^2d_{\text{model}})$

$n$ 是数据的长度，$d_{\text{model}}$ 是数据的隐层大小

### 注意力结构有什么优缺点

优点：

1. **灵活性**:
    注意力机制可以根据不同任务和输入数据的特点，动态地调整关注度。这使得模型能够更好地捕捉序列中的长期依赖关系，并根据上下文进行适时的关注调整。
2. **长序列处理**:
    传统的循环神经网络（RNN）在处理长序列时容易出现**梯度消失或梯度爆炸**的问题，导致模型难以捕捉长距离依赖关系。注意力机制通过有选择地关注序列中的不同部分，能够更好地捕捉长期依赖关系，提高模型在处理长序列数据时的表现。
3. **多模态处理**:
    注意力机制在多模态处理中起到关键作用，能够帮助模型动态地关注不同模态的重要信息，提高对多模态数据的表征能力和理解能力。
4. **全局联系捕捉**:
    注意力机制能够全局捕捉联系，不像序列 RNN 捕捉长期依赖关系的能力那么弱。它可以并行化计算，且与 CNN 和 RNN 比较，模型更简单。

缺点：

- 计算量增加，内存消耗也增加了，特别是解码器推理过程中需要额外的 KV-cache，更适合训练。

### 循环神经网络有什么优缺点

优点：

- 能够捕捉上下文之间的依赖
- 参数量较小（参数共享）
- 理论上支持无限长度的上下文
- 内存不会随着长度增加而增加，适合不同长度的序列和推理

缺点：

- 梯度消失/爆炸：RNN 在反向传播时，由于参数共享和多次连乘的特性，容易出现梯度消失或梯度爆炸的问题，导致模型难以训练或无法收敛。这使得 RNN 在处理长序列时难以捕捉到长期依赖关系。
- 由于梯度消失的问题，RNN 只能有效利用较短的上下文信息，缺乏长期记忆能力。
- 学习偏差（偏向最近的信息）。
- 训练时间长：RNN 在处理长序列时需要递归地计算每个时间步的输出，计算本质上是串行的，这限制了模型训练的并行性，使得训练时间较长。
- LSTM 或者 GRU 在原有的 RNN 基础上进行一定的改进：包括使用门控机制控制信息的流动和遗忘，避免梯度消失或者爆照，能够更好地处理长序列和长期依赖关系。

### 注意力的变种和优化

###### MQA Multi Query Attention

只有 Query 进行了多头计算，其余的 Key 和 Value 只有一个值。它减小了参数量和计算量，速度和内存消耗也的到了提升。但是在效果上，对比 MHA，会有一定的下降。

```python
    class MultiQueryAttention(nn.Module):
        def __init__(self, num_heads: int = 8, d_model: int = 768, attn_dropout: float = .0, dropout: float = .0):
            super().__init__()
            self.num_heads = num_heads
            self.d_model = d_model
            self.d_k = d_model // num_heads
            
            self.q_proj = nn.Linear(d_model, d_model)
            self.k_proj = nn.Linear(d_model, self.d_k)
            self.v_proj = nn.Linear(d_model, self.d_k)
            self.norm = nn.LayerNorm(d_model)
            self.output = nn.Linear(d_model, d_model)
            self.dropout = nn.Dropout(dropout)
            self.attn_dropout = nn.Dropout(attn_dropout)        
    
        def forward(self, x):
            B, L, H = x.shape
            
            inp = self.norm(x)
            
            # [B, L, H] -> [B, N, L, D]
            Q = self.q_proj(inp).view(B, L, self.num_heads, self.d_k).transpose(1, 2)
            # [B, L, H] -> [B, 1, D, L]
            K = self.k_proj(inp).unsqueeze(dim=1).transpose(2, 3)
            V = self.v_proj(inp).unsqueeze(dim=1)
            
            scores = (Q @ K) / self.d_k ** 0.5
            scores = F.softmax(scores, dim=-1)
            scores = self.attn_dropout(scores)
            
            # [B, N, L, L] @ [B, 1, L, D]
            output = (scores @ V).transpose(1, 2).contiguous().view(B, L, -1)
            output = self.output(output)
            return x + self.dropout(output)
```

###### GQA Grouped Query Attention

Query 进行了多头计算，但是也被分了组，每组对应一个 KV 对。它在 MQA 的基础上进行了拓展，使得计算能效能够被进一步控制。如果组数为 1，那么它就对应 MQA，如果组数为 N，那么它就变成传统的 MHA。

```python
    class GroupedQueryAttention(nn.Module):
        def __init__(self, num_groups: int = 2, num_heads: int = 8, d_model: int = 768, attn_dropout: float = .0, dropout: float = .0):
            super().__init__()
            self.num_heads = num_heads
            self.d_model = d_model
            self.d_k = d_model // num_heads
            self.num_groups = num_groups
            
            self.q_proj = nn.Linear(d_model, d_model)
            self.k_proj = nn.Linear(d_model, self.d_k * num_groups)
            self.v_proj = nn.Linear(d_model, self.d_k * num_groups)
            self.norm = nn.LayerNorm(d_model)
            self.output = nn.Linear(d_model, d_model)
            self.dropout = nn.Dropout(dropout)
            self.attn_dropout = nn.Dropout(attn_dropout)        
    
        def forward(self, x):
            B, L, H = x.shape
            
            inp = self.norm(x)
            
            # [B, L, H] -> [B, L, H] -> [B, L, X, G, D] -> [B, X, G, L, D]
            Q = self.q_proj(inp).view(B, L, self.num_heads // self.num_groups, self.num_groups, self.d_k).permute(0, 2, 3, 1, 4)
            # [B, L, H] -> [B, 1, L, D * G] -> [B, 1, G, D, L]
            K = self.k_proj(inp).unsqueeze(dim=1).transpose(2, 3).view(B, 1, self.num_groups, self.d_k, -1)
            # [B, L, H] -> [B, 1, L, D * G] -> [B, 1, G, L, D]
            V = self.v_proj(inp).unsqueeze(dim=1).view(B, 1, L, self.num_groups, self.d_k).transpose(2, 3)
            
            # [B, X, G, L, L]
            scores = (Q @ K) / self.d_k ** 0.5
            scores = F.softmax(scores, dim=-1)
            scores = self.attn_dropout(scores)
            
            # [B, X, G, L, L] @ [B, 1, G, L, D] -> [B, X, G, L, D]
            output = (scores @ V).transpose(1, 3).contiguous().view(B, L, -1)
            output = self.output(output)
            return x + self.dropout(output)
```

### KV 缓存

KV（Key-Value）缓存是一种在大型语言模型（LLM）推理过程中常用的优化技术。它通过存储键和值对的形式来复用计算结果，从而提高性能和降低内存消耗。

优点

1. **减少计算量**:

    - KV 缓存通过存储先前计算的键和值，避免了在每个生成步骤中重复计算，从而显著减少了计算量；
    - 这种减少计算量的方式特别适用于生成长文本的场景，因为每个新生成的词元都依赖于之前的词元；

2. **提高推理速度**:

    - 由于减少了重复计算，KV 缓存可以显著提高模型的推理速度，使得生成过程更加高效；
    - 在自回归生成模型中，KV 缓存可以加快每个词元的生成速度，从而提高整体生成效率；

3. **节省内存**:

    - 通过**量化 KV 缓存**，可以进一步减少内存占用，同时保持生成质量；
    - 这种内存优化使得在有限的硬件资源下也能支持更长的上下文长度；

缺点：

- **复杂性增加**:
	- 实现和管理 KV 缓存需要额外的复杂性，包括缓存策略的设计和数据结构的选择
	- 在多主机环境中，分布式 KV 缓存管理和调度系统的实现也增加了系统的复杂性
- **内存占用增加**:
	- 虽然 KV 缓存减少了计算量，但它需要额外的内存来存储键和值对，这可能会导致内存占用增加，尤其是在处理长序列时；
	- 随着序列长度的增加，KV 缓存的内存需求也会线性增长，可能会超过模型本身的规模，限制了最大序列长度

### KV 缓存的优化

总体趋势上 LLM 的窗口长度在不断增大，因此就出现一组主要矛盾，即：对不断增长的 LLM 的窗口长度的需要与有限的 GPU 显存之间的矛盾。因此优化 KV cache 非常必要。

- 量化
- 低秩分解： 保持模型性能的同时，可以显著减少内存需求；
- 窗口化：滑动窗口 + 初始 token；
- 稀疏化：
	- H2O：一种 KV 缓存驱逐策略，可动态保持最近 token 和 Heavy Hitter token 的平衡
	- SubGen：一种基于聚类的缓存策略
- 参数共享：MQA 和 GQA

### PagedAttention

主要的思想就是：考虑到缓存一般是逐渐增加的，如何利用非连续的空间进行内存分配。一般来讲，有三个问题：

1. 内部碎片化：在未知生成长度的情况下提前分配的空间
2. 外部碎片化：不同数据的长度不同，固定分配的空间不能被最大化利用
3. 保留空间：预留给未来生成的 token

PagedAttention，这是一种受操作系统中虚拟内存和分页经典思想启发的注意力算法。与传统的注意力算法不同，PagedAttention 允许在非连续的内存空间中存储连续的 key 和 value 。具体来说，PagedAttention 将每个序列的 KV cache 划分为块，每个块包含固定数量 token 的键和值。在注意力计算期间，PagedAttention 内核可以有效地识别和获取这些块。因为块在内存中不需要连续，因而可以用一种更加灵活的方式管理 key 和 value ，就像在操作系统的虚拟内存中一样：可以将块视为页面，将 token 视为字节，将序列视为进程。序列的连续逻辑块通过块表映射到非连续物理块中。物理块在生成新 token 时按需分配。**在 PagedAttention 中，内存浪费只会发生在序列的最后一个块中。这使得在实践中可以实现接近最佳的内存使用，仅浪费不到 4%。**

PagedAttention 还有另一个关键优势 —— 高效的内存共享。例如在并行采样中，多个输出序列是由同一个 prompt 生成的。在这种情况下，prompt 的计算和内存可以在输出序列中共享。PagedAttention 自然地通过其块表格来启动内存共享。与进程共享物理页面的方式类似，PagedAttention 中的不同序列可以通过将它们的逻辑块映射到同一个物理块的方式来共享块。**为了确保安全共享，PagedAttention 会对物理块的引用计数进行跟踪，并实现写时复制（Copy-on-Write）机制。PageAttention 的内存共享大大减少了复杂采样算法的内存开销，例如并行采样和集束搜索的内存使用量降低了 55%。这可以转化为高达 2.2 倍的吞吐量提升。**

### $\sqrt{d_k}$ 的意义

假设数据是 $X\sim \mathcal{N}(0,1)$ 的正太分布，那么矩阵乘法 $QK^T$ 的方差就是 $d_{k}$ 。除以 $\sqrt{d_k}$ 就是在理想情况下进行数据归一化（标准差）。在 softmax 的计算中, $\sqrt{d_k}$ 的方差会造成数据偏大，进而导致梯度消失，数据的归一化可以让数据集中在一定范围内，从而避免梯度消失。

## 归一化

### Batch Normalisation 和 Layer Normalisation 的优缺点

BN 正则化是在整个 mini batch 上对每个特征进行独立操作，而 LN 则在每一个数据上的所有特征进行操作。操作的具体内容都是计算平均值和标准差进行正则化。

```python
    # layer normalisation
    >>> x = torch.rand((20, 512, 768))
    >>> m = x.mean(dim=1, keepdim=True)
    >>> v = x.var(dim=1, keepdim=True)
    >>> o = (x - m) / (v + 1e-5).sqrt()
    >>> o.shape 
    torch.Size([20, 512, 768])
    
    # batch normalisation
    >>> x = torch.rand((20, 512, 768))
    >>> m = x.mean(dim=0, keepdim=True)
    >>> v = x.var(dim=0, keepdim=True)
    >>> o = (x - m) / (v + 1e-5).sqrt()
    >>> o.shape 
    torch.Size([20, 512, 768])
```

LN 通常更适用于 NLP 任务的原因是文本数据，相比于图像数据，在 mini batch 的 batch 纬度上特征很少存在共通性，单独对每个数据进行正则化更符合对文本数据的特性的捕捉。它与 mini batch 的大小无关，训练和推理的时候保持一致。相对的，BN 对 mini batch 的大小有一定的要求（不能太小）虽然在计算层面上要比 LN 快一些。BN 可以用于避免梯度消失问题和过拟合问题。

### Batch Normalisation 参数

BN 的参数分为可训练参数和不可训练参数。可训练参数有： $\gamma$ 和 $\beta$，不可训练的参数有 running mean 和 running variance。

- $\gamma$ 用于学习数据的缩放
- $\beta$ 用于学习数据的平移
- running mean 用于推理，推理的时候不再使用 mini batch 的计算数据了
- running variance 同理

### Layer Normalisation 的参数

- $\gamma$ 用于学习数据的缩放
- $\beta$ 用于学习数据的平移

这些参数允许模型在归一化后进行调整，以便更好地适应后续层的操作。它们是可学习的参数，在训练过程中会被更新。

### 其他的 Normalisation

###### RMS Normalisation

LN 的变种之一。不再使用 mean centering，计算上更简单了，同时也保持了训练上的稳定性和收敛性。

```python
    x / torch.sqrt((x ** 2).mean(dim=-1, keepdim=True) + 1e-5)
```

### pre norm 和 post norm 的优缺点

###### pre-norm

$PreLN(x)=F(LN(x))+x$ 在数据进行注意力计算或者前馈网络计算**之前**进行正则化。相比于一开始的 post-norm，它能让训练更稳定，提升收敛，有效避免梯度消失的问题。同时它也可以让 Optimizer 不需要在使用 warm up。

###### post-norm

$PostLN(x)=LN(x+F(x))$ 在数据进行注意力计算或者前馈网络计算**之后**进行正则化。训练不稳定，除非引入其他的网络修改进行改善。改善之后其实也可以实现较好的训练结果。

## 激活函数

ReLU: $max(0, x)$，0 处不可导。会造成神经元死亡（永远输出 0）

Leaky Relu：$max(0.01x,x)$，避免神经元死亡

PReLu: $max(\alpha x,x)$，避免神经元死亡

GeLU：$x\Phi(x)$, 连续处处可导

SiLU：$x\sigma(x)$

Tanh：$\frac{e^x - e^{-x}}{e^x + e^-x}$ (-1, 1), 也有梯度消失问题，但是比 sigmoid 好

SwiGLU:

$$
\begin{align}
Swish_\beta(x) &= x\sigma(\beta x)\\
SwiGLU(x) &= Swish_β(xW + b) ⊗ (xV + c)
\end{align}
$$

```python
class SwiGLU(nn.Module):
     
    def __init__(self, w1, w2, w3) -> None:
        super().__init__()
        self.w1 = w1
        self.w2 = w2
        self.w3 = w3
     
    def forward(self, x):
        x1 = F.linear(x, self.w1.weight)
        x2 = F.linear(x, self.w2.weight)
        hidden = F.silu(x1) * x2
        return F.linear(hidden, self.w3.weight)
```

为什么效果比其他激活函数好：

1. 参数可以学习，更多的参数意味着更好的表现机会
2. 集成了门控特性，在负值区域上也有一定的响应

## 位置编码

### 相对位置编码

相对位置编码根据位置之间的相对关系来编码序列。它考虑了序列中不同位置之间的相对距离和关系，并使用可学习的参数来对这些关系进行建模。

#### 优点

1. **灵活性**：相对位置编码可以处理任意长度的序列，因为它只依赖于相对距离而非绝对位置
2. **捕捉相对关系**：能够更好地捕捉序列中位置之间的相对顺序和距离，适合处理长序列中的位置信息

#### 缺点

1. **计算复杂度**：相对位置编码需要创建成对的位置编码矩阵，并执行大量张量操作，计算效率较低，特别是对于较长的序列
2. **实现复杂**：相对位置编码的实现较为复杂，需要在自注意力机制中引入额外的计算步骤

### 绝对位置编码

绝对位置编码为每个位置分配一个唯一的向量，通常通过正弦和余弦函数生成。这些向量根据位置索引和维度计算，提供关于输入序列中每个位置的绝对位置信息。

#### 优点

1. **独立性**：每个位置的编码向量独立于其他位置，可以单独表示每个位置的信息
2. **简单性**：实现简单，直接将位置向量加到输入序列中

#### 缺点

1. **有限序列长度**：绝对位置编码的序列长度是固定的，超出预训练长度的序列无法表示。例如，如果预训练最大长度为 512，则无法处理更长的序列
2. **缺乏相对位置信息**：绝对位置编码无法捕捉序列中位置之间的相对关系，难以反映序列字符之间的相对位置关系

常见的 Sinusuidol 位置编码

```python

import torch
import torch.nn as nn
import math

class PositionalEncoding(nn.Module):
    def __init__(self, d_model, max_seq_length=512):
        super(PositionalEncoding, self).__init__()
        self.d_model = d_model

        # Create a matrix of shape (max_seq_length, d_model)
        pe = torch.zeros(max_seq_length, d_model)
        position = torch.arange(0, max_seq_length, dtype=torch.float).unsqueeze(1)
        div_term = torch.exp(torch.arange(0, d_model, 2).float() * -(math.log(10000.0) / d_model))

        pe[:, 0::2] = torch.sin(position * div_term)
        pe[:, 1::2] = torch.cos(position * div_term)

        pe = pe.unsqueeze(0)  # Add batch dimension
        self.register_buffer('pe', pe)

    def forward(self, x):
        x = x + self.pe[:, :x.size(1)]
        return x
```

### RoPE

编码绝对位置信息，可以扩展到无线长度。通过绝对位置编码的方式实现相对位置编码，综合了绝对位置编码和相对位置编码的优点。

1. 计算 token 的 query 和 key；
2. 然后对每个 token 位置都计算对应的旋转位置编码；
3. 接着对每个 token 位置的 query 和 key 向量的元素按照 两两一组 应用旋转变换；
4. 最后再计算 query 和 key 之间的内积得到 self-attention 的计算结果;

### ALiBi

静态的位置编码信息，在注意力 QK 计算之后引入，更倾向于最新的 token。