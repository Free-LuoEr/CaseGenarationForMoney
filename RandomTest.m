%%Tital:Random Test Case Generation
%%Data:2018%04%02
%%Design by Gang

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%初始化数据存储%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MixMoneyLimit=9999;    %输入money最大值限制

EveryCustomAccountAmount(5)=0;         %因为只有5个用户因此在这里只用注册5个用户数组


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%设计每一个账户的随机账号本地账号信息信息%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rng shuffle;      %%产生随机数种子


%%%%%%从这里开始是第一个账户的账号信息生成
AccountAmount=randi([0,5]);    %%随机生成每一个账户的账号数量
EveryCustomAccountAmount(1)=AccountAmount;   %往数组里面写入第一个用户的账号数目

for i=1:AccountAmount    %%创建每个账号
	AccountAndMoney1(1,i) = i; %%写入账号数
	AccountAndMoney1(2,i) = randi([0,MixMoneyLimit]); %为每个账号生产成存入账户的钱区间在[0,9999]之间
end


%%%%%%从这里开始是第二个账户的账号信息生成
AccountAmount=randi([0,5]);    %%随机生成每一个账户的账号数量可以为第0至第5个设置有的账户不进行转账服务
EveryCustomAccountAmount(2)=AccountAmount;   %往数组里面写入第一个用户的账号数目

for i=1:AccountAmount    %%创建每个账号
	AccountAndMoney2(1,i) = i; %%写入账号数
	AccountAndMoney2(2,i) = randi([0,MixMoneyLimit]); %为每个账号生产成存入账户的钱区间在[0,9999]之间
end


%%%%%%从这里开始是第三个账户的账号信息生成
AccountAmount=randi([0,5]);    %%随机生成每一个账户的账号数量
EveryCustomAccountAmount(3)=AccountAmount;   %往数组里面写入第一个用户的账号数目

for i=1:AccountAmount    %%创建每个账号
	AccountAndMoney3(1,i) = i; %%写入账号数
	AccountAndMoney3(2,i) = randi([0,MixMoneyLimit]); %为每个账号生产成存入账户的钱区间在[0,9999]之间
end

%%%%%%从这里开始是第四个账户的账号信息生成
AccountAmount=randi([0,5]);    %%随机生成每一个账户的账号数量
EveryCustomAccountAmount(4)=AccountAmount;   %往数组里面写入第一个用户的账号数目

for i=1:AccountAmount    %%创建每个账号
	AccountAndMoney4(1,i) = i; %%写入账号数
	AccountAndMoney4(2,i) = randi([0,MixMoneyLimit]); %为每个账号生产成存入账户的钱区间在[0,9999]之间
end

%%%%%%从这里开始是第五个账户的账号信息生成
AccountAmount=randi([0,5]);    %%随机生成每一个账户的账号数量
EveryCustomAccountAmount(5)=AccountAmount;   %往数组里面写入第一个用户的账号数目

for i=1:AccountAmount    %%创建每个账号
	AccountAndMoney5(1,i) = i; %%写入账号数
	AccountAndMoney5(2,i) = randi([0,MixMoneyLimit]); %为每个账号生产成存入账户的钱区间在[0,9999]之间
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%为每个用添加第三三方转账信息%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%为第一个账户添加随机的第三方数据用;   用三个随机数来控制，第一个随机数控制生成每个账号随机添加
%%%%%%几个第三方账号; 第二个随机数用选择随机的账户，第三个随机数用来控制选择其中那个账户


%%%%%为第一个账号生成第三方账户若为自身则手动删除


ThirdPartyAccountAtom=randi([1,5]);    %设置可以添加[1,5]个的随机个数的第三方账户

for i=1:ThirdPartyAccountAtom          %开始生成每个随机的第三方账号
	ThirdPartInfo1(1,i)=randi([1,5]);  %ThirdPartInfo为2*5的二维数组  第一行用于存放选取的账户  
	                                 %第二行用于存放选取的账户下面的账号信息
	switch ThirdPartInfo1(1,i);       %根据选出来的账户进行case选择出其账号信息
		case 1                         %随机选中了第一个账户
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %如果是第一个账号被选中则随机的从第一个账户中选账号
		case 2
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %如果是第二个账号被选中则随机的从第二个账户中选账号
		case 3
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %如果是第三个账号被选中则随机的从第三个账户中选账号
		case 4
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %如果是第四个账号被选中则随机的从第四个账户中选账号
		case 5
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %如果是第五个账号被选中则随机的从第五个账户中选账号 
	end
	         
end


%%%%%为第二个账号生成第三方账户若为自身则手动删除


ThirdPartyAccountAtom=randi([1,5]);    %设置可以添加[1,5]个的随机个数的第三方账户

for i=1:ThirdPartyAccountAtom          %开始生成每个随机的第三方账号
	ThirdPartInfo2(1,i)=randi([1,5]);  %ThirdPartInfo为2*5的二维数组  第一行用于存放选取的账户  
	                                 %第二行用于存放选取的账户下面的账号信息
	switch ThirdPartInfo2(1,i);       %根据选出来的账户进行case选择出其账号信息
		case 1                         %随机选中了第一个账户
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %如果是第一个账号被选中则随机的从第一个账户中选账号
		case 2
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %如果是第二个账号被选中则随机的从第二个账户中选账号
		case 3
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %如果是第三个账号被选中则随机的从第三个账户中选账号
		case 4
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %如果是第四个账号被选中则随机的从第四个账户中选账号
		case 5
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %如果是第五个账号被选中则随机的从第五个账户中选账号 
	end
	         
end


%%%%%为第三个账号生成第三方账户若为自身则手动删除

ThirdPartyAccountAtom=randi([1,5]);    %设置可以添加[1,5]个的随机个数的第三方账户

for i=1:ThirdPartyAccountAtom          %开始生成每个随机的第三方账号
	ThirdPartInfo3(1,i)=randi([1,5]);  %ThirdPartInfo为2*5的二维数组  第一行用于存放选取的账户  随机选取5个账户中的一个
	                                   %第二行用于存放选取的账户下面的账号信息
	switch ThirdPartInfo3(1,i);       %根据选出来的账户进行case选择出其账号信息
		case 1                         %随机选中了第一个账户
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %如果是第一个账号被选中则随机的从第一个账户中选账号
		case 2
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %如果是第二个账号被选中则随机的从第二个账户中选账号
		case 3
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %如果是第三个账号被选中则随机的从第三个账户中选账号
		case 4
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %如果是第四个账号被选中则随机的从第四个账户中选账号
		case 5
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %如果是第五个账号被选中则随机的从第五个账户中选账号 
	end
	         
end


%%%%%为第四个账号生成第三方账户若为自身则手动删除
rng shuffle;      %%产生随机数种子

ThirdPartyAccountAtom=randi([1,5]);    %设置可以添加[1,5]个的随机个数的第三方账户

for i=1:ThirdPartyAccountAtom          %开始生成每个随机的第三方账号
	ThirdPartInfo4(1,i)=randi([1,5]);  %ThirdPartInfo为2*5的二维数组  第一行用于存放选取的账户  随机选取5个账户中的一个
	                                   %第二行用于存放选取的账户下面的账号信息
	switch ThirdPartInfo4(1,i);       %根据选出来的账户进行case选择出其账号信息
		case 1                         %随机选中了第一个账户
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %如果是第一个账号被选中则随机的从第一个账户中选账号
		case 2
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %如果是第二个账号被选中则随机的从第二个账户中选账号
		case 3
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %如果是第三个账号被选中则随机的从第三个账户中选账号
		case 4
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %如果是第四个账号被选中则随机的从第四个账户中选账号
		case 5
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %如果是第五个账号被选中则随机的从第五个账户中选账号 
	end
	         
end


%%%%%为第五个账号生成第三方账户若为自身则手动删除
rng shuffle;      %%产生随机数种子

ThirdPartyAccountAtom=randi([1,5]);    %设置可以添加[1,5]个的随机个数的第三方账户

for i=1:ThirdPartyAccountAtom          %开始生成每个随机的第三方账号
	ThirdPartInfo5(1,i)=randi([1,5]);  %ThirdPartInfo为2*5的二维数组  第一行用于存放选取的账户  随机选取5个账户中的一个
	                                   %第二行用于存放选取的账户下面的账号信息
	switch ThirdPartInfo5(1,i);       %根据选出来的账户进行case选择出其账号信息
		case 1                         %随机选中了第一个账户
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %如果是第一个账号被选中则随机的从第一个账户中选账号
		case 2
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %如果是第二个账号被选中则随机的从第二个账户中选账号
		case 3
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %如果是第三个账号被选中则随机的从第三个账户中选账号
		case 4
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %如果是第四个账号被选中则随机的从第四个账户中选账号
		case 5
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %如果是第五个账号被选中则随机的从第五个账户中选账号 
	end
	         
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%以上的初始化值进行一次的操作用于创建账户和数值%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%接下来就是开始转帐间的操作了、这里可多次运行%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%为第一个用户创建转账测试设置每个账户装帐东西

%%把顾客信息拼接起来
CustomerAccount1=[AccountAndMoney1,ThirdPartInfo1];
CustomerAccount2=[AccountAndMoney2,ThirdPartInfo2];
CustomerAccount3=[AccountAndMoney3,ThirdPartInfo3];
CustomerAccount4=[AccountAndMoney4,ThirdPartInfo4];
CustomerAccount5=[AccountAndMoney5,ThirdPartInfo5];

%%第一个账户的第一个账号转账过程随机生成
%step1：挑一挑选几个出来进行转账
Autom=randi([1,3]);  %进行几次转账

for i=0:Autom
	who1(1,i)=randi([1,2]); %设置转出，只有1,2
	who1(2,i)=randi([1,4]); %设置接收  为1-4
end