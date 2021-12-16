cd C:\Users\NIRS\Desktop\USB documents\Matlab\matlab file converter
addpath Matlab

oxysoft2matlab

oxysoft2matlab ({'20211214.oxy5', 'Measurement Examples.oxyproj'})

%%
DataFNIR=ans;
RighthandData=ans;
LefthandData=ans;

oxyvals=DataFNIR.oxyvals;
dxyvals=DataFNIR.dxyvals;
time=DataFNIR.time;
SampleNo=DataFNIR.sampleNo;
wavelengths=DataFNIR.wavelengths;
DPF=DataFNIR.DPF;
diatance=DataFNIR.distance;
Fs=DataFNIR.Fs;
label=DataFNIR.label;
RxLabel=DataFNIR.RxLabel;
TxLabel=DataFNIR.TxLabel;
Rx_TxId=DataFNIR.Rx_TxId;
chanPos=DataFNIR.chanPos;
transPos=DataFNIR.transPos;
receiPos=DataFNIR.receiPos;
ADlabel=DataFNIR.ADlabel;
ADvalues=DataFNIR.ADvalues;
events=DataFNIR.events;
%%
oxyvalsR=DataFNIR.oxyvals;
dxyvalsR=DataFNIR.dxyvals;
timeR=DataFNIR.time;

oxyvalsL=DataFNIR.oxyvals;
dxyvalsL=DataFNIR.dxyvals;
timeL=DataFNIR.time;


figure;
subplot(2,1,1);
plot(timeR,oxyvalsR-repmat(mean(oxyvalsR(1:50,:),1),2766,1),'r'); hold on;
plot(timeR,dxyvalsR-repmat(mean(dxyvalsR(1:50,:),1),2766,1),'b'); hold off;
subplot(2,1,2);
plot(timeL,oxyvalsL-repmat(mean(oxyvalsL(1:50,:),1),3216,1),'r'); hold on;
plot(timeL,dxyvalsL-repmat(mean(dxyvalsL(1:50,:),1),3216,1),'b'); hold off;



figure;
subplot(2,1,1);
plot(timeR,oxyvalsR-repmat(mean(oxyvalsR(50:100,:),1),2766,1),'r'); hold on;
plot(timeR,dxyvalsR-repmat(mean(dxyvalsR(50:100,:),1),2766,1),'b'); hold off;
xlabel('time (second)');title('Right arm movements');xlim([1 50]);ylim([-6 6]);
subplot(2,1,2);
plot(timeL,oxyvalsL-repmat(mean(oxyvalsL(50:100,:),1),3216,1),'r'); hold on;
plot(timeL,dxyvalsL-repmat(mean(dxyvalsL(50:100,:),1),3216,1),'b'); hold off;
xlabel('time (second)');title('Left arm movements');xlim([1 50]);ylim([-6 6]);