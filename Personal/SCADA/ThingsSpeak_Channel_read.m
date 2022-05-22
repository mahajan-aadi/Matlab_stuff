readChId = 12397; 
writeChId = 1539174; 
writeKey = 'OM2W8DVN3YKQZQ7L';  
[temp,time] = thingSpeakRead(readChId,'Fields',4,'NumPoints',20); 
humidity = thingSpeakRead(readChId,'Fields',3,'NumPoints',20); 
tempC = (5/9)*(temp-32);  
b = 17.62; % constants for water vapor
c = 243.5; % constants for barometric pressure
% Calculate the dew point in Celsius
gamma = log(humidity/100) + b*tempC./(c+tempC); 
dewPoint = c*gamma./(b-gamma);
%Convert the result back to Fahrenheit. 
dewPointF = (dewPoint*1.8) + 32
thingSpeakWrite(writeChId,[temp,humidity,dewPointF],'Fields',[1,2,3],'TimeStamps',time,'Writekey',writeKey);