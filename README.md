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