# 设计诀窍
## 目录
- 设计诀窍的的基本部分
- 设计诀窍的类型
- 要正确地设计程序，必须
  
## 设计诀窍的的基本部分  
1. 问题分析和数据定义
2. 合约，用途说明与结果的描述，函数头部
3. 例子
4. 函数模板
5. 函数定义
6. 测试
  
### 合约，用途说明与结果的描述，函数头部
1. 理解程序的目的，程序设计的目标是创建一个接受输入输出并产生结果的机制。因此在开发程序时应该给每一个程序提供一个有意义的名字，并且说明输入输出的数据类型，这就是程序的合约。  
> 例如程序`area-of-ring`的合约：`;; area-of-ring: number number -> number`  
  
2. 在程序中加入函数头部，函数头部复述了程序的名字。  
分别给每个输入 一个名字，这些名字是（代数）变量，是程序的参数。  
第一个输入是outer，第二个输入是inner；  
> 例如程序的函数头部：`(define (area-of-ring outer inner) ...)`  
  
3. 最后基于合约和参数，简要阐明一下程序的用途说明，它是程序要完成的任务的简短注释。对于大多数程序，一到两行就足够，更大的程序则需要更多的信息来说明其用途。  
> 现在完整的程序如下：  
```
;; area-of-ring : number number -> number
;; 计算一个半径为outer，洞的半径为inner的圆环的面积
(define (area-of-ring outer inner) ...)
```
如果问题表述包含了数学公式[^1]
[^1]: 公式中不同变量的数目可能就是程序的输入数。
## 设计诀窍的类型
- 输入数据和程序之间的关系：  
	- 本书有一半的设计诀窍涉及**输入数据和程序之间的关系**。它们描述了如何从输入数据的描述得出整个程序的模板，这种基于数据驱动的程序设计方式最常见，易于创建、理解、扩展和修改。  
- 生成递归（generative recursion）：递归型程序可以被重复调用以处理新的问题  
- 累积（accumulation）：带累计器的程序在处理输入的过程种收集数据  
- 历史敏感性（history sensitivity）：历史敏感性程序可以记住程序被多次调用的信息  
- 抽象：把两个（或更多）相似的设计概括为一个并由它衍生最初示例。  
  
## 要正确地设计程序，必须：
1. 分析通常使用文字表述的问题
2. 在抽象表达问题实质的同时使用例子进行说明
3. 用精确的语言阐明所表述的语句和注释
4. 通过检查、测试对上述活动进行评价和修改
5. 关注细节