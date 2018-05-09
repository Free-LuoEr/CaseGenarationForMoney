%%Tital:Random Test Case Generation
%%Data:2018%04%02
%%Design by Gang

clc;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%��ʼ�����ݴ洢%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MixMoneyLimit=9999;    %����money���ֵ����

EveryCustomAccountAmount(5)=0;         %��Ϊֻ��5���û����������ֻ��ע��5���û�����


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%���ÿһ���˻�������˺ű����˺���Ϣ��Ϣ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rng shuffle;      %%�������������


%%%%%%�����￪ʼ�ǵ�һ���˻����˺���Ϣ����
AccountAmount=randi([0,5]);    %%�������ÿһ���˻����˺�����
EveryCustomAccountAmount(1)=AccountAmount;   %����������д���һ���û����˺���Ŀ

for i=1:AccountAmount    %%����ÿ���˺�
	AccountAndMoney1(1,i) = i; %%д���˺���
	AccountAndMoney1(2,i) = randi([0,MixMoneyLimit]); %Ϊÿ���˺������ɴ����˻���Ǯ������[0,9999]֮��
end


%%%%%%�����￪ʼ�ǵڶ����˻����˺���Ϣ����
AccountAmount=randi([0,5]);    %%�������ÿһ���˻����˺���������Ϊ��0����5�������е��˻�������ת�˷���
EveryCustomAccountAmount(2)=AccountAmount;   %����������д���һ���û����˺���Ŀ

for i=1:AccountAmount    %%����ÿ���˺�
	AccountAndMoney2(1,i) = i; %%д���˺���
	AccountAndMoney2(2,i) = randi([0,MixMoneyLimit]); %Ϊÿ���˺������ɴ����˻���Ǯ������[0,9999]֮��
end


%%%%%%�����￪ʼ�ǵ������˻����˺���Ϣ����
AccountAmount=randi([0,5]);    %%�������ÿһ���˻����˺�����
EveryCustomAccountAmount(3)=AccountAmount;   %����������д���һ���û����˺���Ŀ

for i=1:AccountAmount    %%����ÿ���˺�
	AccountAndMoney3(1,i) = i; %%д���˺���
	AccountAndMoney3(2,i) = randi([0,MixMoneyLimit]); %Ϊÿ���˺������ɴ����˻���Ǯ������[0,9999]֮��
end

%%%%%%�����￪ʼ�ǵ��ĸ��˻����˺���Ϣ����
AccountAmount=randi([0,5]);    %%�������ÿһ���˻����˺�����
EveryCustomAccountAmount(4)=AccountAmount;   %����������д���һ���û����˺���Ŀ

for i=1:AccountAmount    %%����ÿ���˺�
	AccountAndMoney4(1,i) = i; %%д���˺���
	AccountAndMoney4(2,i) = randi([0,MixMoneyLimit]); %Ϊÿ���˺������ɴ����˻���Ǯ������[0,9999]֮��
end

%%%%%%�����￪ʼ�ǵ�����˻����˺���Ϣ����
AccountAmount=randi([0,5]);    %%�������ÿһ���˻����˺�����
EveryCustomAccountAmount(5)=AccountAmount;   %����������д���һ���û����˺���Ŀ

for i=1:AccountAmount    %%����ÿ���˺�
	AccountAndMoney5(1,i) = i; %%д���˺���
	AccountAndMoney5(2,i) = randi([0,MixMoneyLimit]); %Ϊÿ���˺������ɴ����˻���Ǯ������[0,9999]֮��
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Ϊÿ������ӵ�������ת����Ϣ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%Ϊ��һ���˻��������ĵ�����������;   ����������������ƣ���һ���������������ÿ���˺�������
%%%%%%�����������˺�; �ڶ����������ѡ��������˻����������������������ѡ�������Ǹ��˻�


%%%%%Ϊ��һ���˺����ɵ������˻���Ϊ�������ֶ�ɾ��


ThirdPartyAccountAtom=randi([1,5]);    %���ÿ������[1,5]������������ĵ������˻�

for i=1:ThirdPartyAccountAtom          %��ʼ����ÿ������ĵ������˺�
	ThirdPartInfo1(1,i)=randi([1,5]);  %ThirdPartInfoΪ2*5�Ķ�ά����  ��һ�����ڴ��ѡȡ���˻�  
	                                 %�ڶ������ڴ��ѡȡ���˻�������˺���Ϣ
	switch ThirdPartInfo1(1,i);       %����ѡ�������˻�����caseѡ������˺���Ϣ
		case 1                         %���ѡ���˵�һ���˻�
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %����ǵ�һ���˺ű�ѡ��������Ĵӵ�һ���˻���ѡ�˺�
		case 2
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %����ǵڶ����˺ű�ѡ��������Ĵӵڶ����˻���ѡ�˺�
		case 3
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %����ǵ������˺ű�ѡ��������Ĵӵ������˻���ѡ�˺�
		case 4
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %����ǵ��ĸ��˺ű�ѡ��������Ĵӵ��ĸ��˻���ѡ�˺�
		case 5
			ThirdPartInfo1(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %����ǵ�����˺ű�ѡ��������Ĵӵ�����˻���ѡ�˺� 
	end
	         
end


%%%%%Ϊ�ڶ����˺����ɵ������˻���Ϊ�������ֶ�ɾ��


ThirdPartyAccountAtom=randi([1,5]);    %���ÿ������[1,5]������������ĵ������˻�

for i=1:ThirdPartyAccountAtom          %��ʼ����ÿ������ĵ������˺�
	ThirdPartInfo2(1,i)=randi([1,5]);  %ThirdPartInfoΪ2*5�Ķ�ά����  ��һ�����ڴ��ѡȡ���˻�  
	                                 %�ڶ������ڴ��ѡȡ���˻�������˺���Ϣ
	switch ThirdPartInfo2(1,i);       %����ѡ�������˻�����caseѡ������˺���Ϣ
		case 1                         %���ѡ���˵�һ���˻�
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %����ǵ�һ���˺ű�ѡ��������Ĵӵ�һ���˻���ѡ�˺�
		case 2
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %����ǵڶ����˺ű�ѡ��������Ĵӵڶ����˻���ѡ�˺�
		case 3
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %����ǵ������˺ű�ѡ��������Ĵӵ������˻���ѡ�˺�
		case 4
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %����ǵ��ĸ��˺ű�ѡ��������Ĵӵ��ĸ��˻���ѡ�˺�
		case 5
			ThirdPartInfo2(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %����ǵ�����˺ű�ѡ��������Ĵӵ�����˻���ѡ�˺� 
	end
	         
end


%%%%%Ϊ�������˺����ɵ������˻���Ϊ�������ֶ�ɾ��

ThirdPartyAccountAtom=randi([1,5]);    %���ÿ������[1,5]������������ĵ������˻�

for i=1:ThirdPartyAccountAtom          %��ʼ����ÿ������ĵ������˺�
	ThirdPartInfo3(1,i)=randi([1,5]);  %ThirdPartInfoΪ2*5�Ķ�ά����  ��һ�����ڴ��ѡȡ���˻�  ���ѡȡ5���˻��е�һ��
	                                   %�ڶ������ڴ��ѡȡ���˻�������˺���Ϣ
	switch ThirdPartInfo3(1,i);       %����ѡ�������˻�����caseѡ������˺���Ϣ
		case 1                         %���ѡ���˵�һ���˻�
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %����ǵ�һ���˺ű�ѡ��������Ĵӵ�һ���˻���ѡ�˺�
		case 2
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %����ǵڶ����˺ű�ѡ��������Ĵӵڶ����˻���ѡ�˺�
		case 3
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %����ǵ������˺ű�ѡ��������Ĵӵ������˻���ѡ�˺�
		case 4
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %����ǵ��ĸ��˺ű�ѡ��������Ĵӵ��ĸ��˻���ѡ�˺�
		case 5
			ThirdPartInfo3(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %����ǵ�����˺ű�ѡ��������Ĵӵ�����˻���ѡ�˺� 
	end
	         
end


%%%%%Ϊ���ĸ��˺����ɵ������˻���Ϊ�������ֶ�ɾ��
rng shuffle;      %%�������������

ThirdPartyAccountAtom=randi([1,5]);    %���ÿ������[1,5]������������ĵ������˻�

for i=1:ThirdPartyAccountAtom          %��ʼ����ÿ������ĵ������˺�
	ThirdPartInfo4(1,i)=randi([1,5]);  %ThirdPartInfoΪ2*5�Ķ�ά����  ��һ�����ڴ��ѡȡ���˻�  ���ѡȡ5���˻��е�һ��
	                                   %�ڶ������ڴ��ѡȡ���˻�������˺���Ϣ
	switch ThirdPartInfo4(1,i);       %����ѡ�������˻�����caseѡ������˺���Ϣ
		case 1                         %���ѡ���˵�һ���˻�
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %����ǵ�һ���˺ű�ѡ��������Ĵӵ�һ���˻���ѡ�˺�
		case 2
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %����ǵڶ����˺ű�ѡ��������Ĵӵڶ����˻���ѡ�˺�
		case 3
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %����ǵ������˺ű�ѡ��������Ĵӵ������˻���ѡ�˺�
		case 4
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %����ǵ��ĸ��˺ű�ѡ��������Ĵӵ��ĸ��˻���ѡ�˺�
		case 5
			ThirdPartInfo4(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %����ǵ�����˺ű�ѡ��������Ĵӵ�����˻���ѡ�˺� 
	end
	         
end


%%%%%Ϊ������˺����ɵ������˻���Ϊ�������ֶ�ɾ��
rng shuffle;      %%�������������

ThirdPartyAccountAtom=randi([1,5]);    %���ÿ������[1,5]������������ĵ������˻�

for i=1:ThirdPartyAccountAtom          %��ʼ����ÿ������ĵ������˺�
	ThirdPartInfo5(1,i)=randi([1,5]);  %ThirdPartInfoΪ2*5�Ķ�ά����  ��һ�����ڴ��ѡȡ���˻�  ���ѡȡ5���˻��е�һ��
	                                   %�ڶ������ڴ��ѡȡ���˻�������˺���Ϣ
	switch ThirdPartInfo5(1,i);       %����ѡ�������˻�����caseѡ������˺���Ϣ
		case 1                         %���ѡ���˵�һ���˻�
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(1)]);   %����ǵ�һ���˺ű�ѡ��������Ĵӵ�һ���˻���ѡ�˺�
		case 2
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(2)]);   %����ǵڶ����˺ű�ѡ��������Ĵӵڶ����˻���ѡ�˺�
		case 3
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(3)]);   %����ǵ������˺ű�ѡ��������Ĵӵ������˻���ѡ�˺�
		case 4
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(4)]);   %����ǵ��ĸ��˺ű�ѡ��������Ĵӵ��ĸ��˻���ѡ�˺�
		case 5
			ThirdPartInfo5(2,i)=randi([1,EveryCustomAccountAmount(5)]);   %����ǵ�����˺ű�ѡ��������Ĵӵ�����˻���ѡ�˺� 
	end
	         
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%���ϵĳ�ʼ��ֵ����һ�εĲ������ڴ����˻�����ֵ%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%���������ǿ�ʼת�ʼ�Ĳ����ˡ�����ɶ������%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Ϊ��һ���û�����ת�˲�������ÿ���˻�װ�ʶ���

%%�ѹ˿���Ϣƴ������
CustomerAccount1=[AccountAndMoney1,ThirdPartInfo1];
CustomerAccount2=[AccountAndMoney2,ThirdPartInfo2];
CustomerAccount3=[AccountAndMoney3,ThirdPartInfo3];
CustomerAccount4=[AccountAndMoney4,ThirdPartInfo4];
CustomerAccount5=[AccountAndMoney5,ThirdPartInfo5];

%%��һ���˻��ĵ�һ���˺�ת�˹����������
%step1����һ��ѡ������������ת��
Autom=randi([1,3]);  %���м���ת��

for i=0:Autom
	who1(1,i)=randi([1,2]); %����ת����ֻ��1,2
	who1(2,i)=randi([1,4]); %���ý���  Ϊ1-4
end